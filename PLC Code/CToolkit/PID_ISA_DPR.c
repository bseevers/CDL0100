#include <PACRXPlc.h> /*For C blocks that run on any PACSystems PLC*/
#include <PACRX3iPlc.h> /*For C blocks that use features only
available on an RX3i */
#include <ctkPlcErrno.h>
#include <ctkPlcFunc.h>
#include <stdlib.h>
#include <stdio.h>
//#include <string.h>

/*#define _DEBUG*/
//#define WORD_MASK 32767

#ifdef _DEBUG
#define OUTPUTDEBUGSTRING(x) outputDebugString(x)
#else
#define OUTPUTDEBUGSTRING(x)
#endif

// Make code easier to read by taking the PID array and breaking pointers 
// into human readable defines as to each items purpose
// pnPIDArray+0 is user set ID for the particular PID loop, do not use here
#define PIDType (pnPIDArray+1)
#define Deltat pnPIDArray[2]
#define Kc (pnPIDArray+5)
#define DerivativeTau (pnPIDArray+6)
#define IntegralTau (pnPIDArray+7)
#define InitialBias (pnPIDArray+8)
#define UpperLim (pnPIDArray+9)
#define LowLim (pnPIDArray+10)
#define SlewLim (pnPIDArray+11)
#define ConfigWd (pnPIDArray+12)
// this is also used as manual output in manual mode
#define Last_CV (pnPIDArray+13)
#define ControlWd (pnPIDArray+14)
#define SP_Last (pnPIDArray+15)
#define CV_Out (pnPIDArray+16)
#define PV_Last (pnPIDArray+17)
#define abs_CV (pnPIDArray+18)
#define Error_Last (pnPIDArray+19)

//next is a float (uses slot 21 too) - must be aligned to even pointers
#define Last_Deriv (pnPIDArray+20)
//Next is a DWORD (2 slots)
#define LastTm_sec (pnPIDArray+23)
#define LastTm_usec (pnPIDArray+25)
//next is a float (uses slot 27 too)
#define fDeltat_last (pnPIDArray+26)
#define PV_2n_Last (pnPIDArray+28)

T_BYTE pdTemp[8];

void outputDebugString(const char* pStr)
{
#ifdef _DEBUG
	int numBytes;

	numBytes = sprintf(debugbuffer, "%s\r\n", pStr);

	PLCC_MessageWrite(PORT1, debugbuffer, numBytes);
#endif
}

T_INT16 GefMain(T_WORD *pnPIDArray, T_INT16 *pnSP, T_INT16 *pnPV, T_INT16 *pnCV)
{
	T_INT16 nRetVal, nError, nGainErr, nSign, nLowLim;
	T_INT32 nRange;
	//T_DWORD seconds_elapsed;
	T_REAL32 fseconds, fdeltaCV, fSlewRate, fDerivErrNew, fDeriv;
	T_BOOLEAN bCalc;
	
	/*struct elapsed_clock_rec {
		T_DWORD seconds;
		T_WORD hundred_usecs;
		}; */
	struct elapsed_clock_rec current_time;
	
	/*******************************************
		Variable Decl Statements Done
		Start CODE here
	********************************************/
	
	PLCC_ClearErrno(); // use this if doing floating point math
	
	nRetVal = GEF_EXECUTION_OK;	
	
/*
	OUTPUTDEBUGSTRING("Enter PID_DPR C Block");
*/
	// get current time - need every call
	PLCC_read_elapsed_clock (&current_time);
	
	nLowLim = 0;
	
	//assume we skip this call
	bCalc = 0;
	
	
	
	//enforce desired solve timing if set in %REF + 2 (see Proficy PID help)
	if(Deltat > 0) // need to check enough time has elapsed
	{
		// calculate delta t
		if(*((T_DWORD*)LastTm_sec) != 0)
		{
			fseconds = current_time.hundred_usecs - *LastTm_usec;
			fseconds *= 0.0001;
			fseconds += (current_time.seconds - *((T_DWORD*)LastTm_sec));
			
			if(fseconds > (0.01*((T_REAL32)Deltat)))
				bCalc = 1;
			
			//abs_CV was set in last calc
		}
		else
		{
			// delta t is zero, so we only have a gain until next time we are called
			fseconds = 0.0;
			bCalc = 1;
			//if there is a bias (initial CV), apply it
			*((T_INT16*)abs_CV) = *((T_INT16*)InitialBias);
			//zero out residual in incomplete derivative
			(*(T_REAL32*)Last_Deriv) = 0.0;
			*((T_INT16*)PV_2n_Last) = 0;
			*((T_INT16*)PV_Last) = 0;
		}
	}
	else 
	{
		// calculate every sweep - still need delta t
		if(*((T_DWORD*)LastTm_sec) != 0)
		{
			fseconds = current_time.hundred_usecs - *LastTm_usec;
			fseconds *= 0.0001;
			fseconds += (current_time.seconds - *((T_DWORD*)LastTm_sec));
			
			//abs_CV was set it last calc
		}
		else
		{
			fseconds = 0.0;
			//if there is a bias (initial CV), apply it
			*((T_INT16*)abs_CV) = *((T_INT16*)InitialBias);
			//zero out residual in incomplete derivative
			(*(T_REAL32*)Last_Deriv) = 0.0;
			*((T_INT16*)PV_2n_Last) = 0;
			*((T_INT16*)PV_Last) = 0;
		}
		
		// always calculate this PID (%REF+2 is zero)
		bCalc = 1;
	}
	
	if(bCalc & !((*ControlWd)& 0x0001))
	{
		//clamp PV to upper limit
		if(*pnPV > 4050)
			*pnPV = 4050;
		
		
		// set forward or reverse acting
		nSign = 1;
		if(*ConfigWd & 0x0001) 
			nSign = -1; // this is reverse
		
		//store delta-t since last solve in %REF+26 in msec
		*fDeltat_last = 100.0 * fseconds;
		
		fdeltaCV = 0.0; // initialize change in output
		
		
		
		/* *************************************************************************************************
			Working backwords from derivative to Integral to finally Gain
		****************************************************************************************************/
		
		// derivative - avoid derivative "kick" by not using SP in calc - could use SP_Last to detect step change
		// derivative error term - use last process value stored in PV_Last and PV_2n_Last
		
		fDeriv = 0.0; //set to zero in case this is first or second call
		
		if(*((T_INT16*)PV_Last) != 0 )
		{
			if ( *((T_INT16*)PV_2n_Last) != 0)
				fDeriv = (*pnPV - 2*(*((T_INT16*)PV_Last)) + *((T_INT16*)PV_2n_Last))*nSign;
			
			// shift down last value of process value, don't shift PV_Last yet, still need below
			*PV_2n_Last = *PV_Last;
		}
				
		//new error term for integral - must always have integral in velocity form - only place where setpoint appears
		nError = nSign*(*pnPV - *pnSP);	
		
		// integral term - must be included for this form to work
		if(*IntegralTau > 0) // integral tau (in units of 0.1 secs)
			fdeltaCV += fseconds*nError*10.0/(*IntegralTau);
		else
			fdeltaCV += fseconds*0.0001*nError; //smallest usable intgral term
		
		//gain term
		// this may be signed, convert to int first, keep setpoint so we do get kick on setpoint change through proportional gain
		nGainErr = nError - ((T_INT16)(*Error_Last));
		
		fdeltaCV += nGainErr;
		
		//calc deriv contrib - based on derivative of process value - don't divide by zero
		if(fseconds > 0.0 && (*DerivativeTau) > 0)
		{
			// 0.08 = 8.0 * 0.01 
			//fDerivErrNew = (0.08*(*(pnPIDArray+6))*fDeriv + 0.01*(*(pnPIDArray+6))*(*(T_REAL32*)Last_Deriv))/
			//(8.0*fseconds+0.01*(*(pnPIDArray+6)));
			
			fDerivErrNew = fDeriv*0.01*(*DerivativeTau)/fseconds;
			
			// first order filter the derivative (should check bit 5 of %REF+12 config word)
			//fDerivErrNew =  0.015 * fDerivErrNew + 0.985*(*(T_REAL32*)Last_Deriv);
			
			
			
			// add to PID delta CV calc
			fdeltaCV += fDerivErrNew; 
			
			//save this version to storage
			(*(T_REAL32*)Last_Deriv) = fDerivErrNew;
		}
		
		//apply controler gain
		fdeltaCV *= 0.01*(*Kc);
		
		
		
		/*************************************************************************************
		               fdeltaCV has full PID delta output solution now
		**************************************************************************************/
		
		// get the lower limit for CV
		nLowLim = *((T_INT16*)LowLim);
		
		// check slew rate and clamp
		if(*SlewLim > 0) // slew rate limit in force
		{
			// upp clamp - lower clamp
			nRange = (*UpperLim);
			nRange -= nLowLim;
			
			fSlewRate = ((T_REAL32) nRange) / *SlewLim;
			
			//keep sign of change consistent
			if(fdeltaCV < 0.0)
			{
				if(-fdeltaCV > fSlewRate)
					fdeltaCV = -fSlewRate;
			}
			else
			{
				if(fdeltaCV > fSlewRate)
					fdeltaCV = fSlewRate;
			}
		}
		
		//output new value of CV - clamp to specified range
		// abs_CV contains the last value of CV that was output
		if((fdeltaCV + *((T_INT16*)abs_CV)) > *((T_INT16*)UpperLim) )
			*pnCV = *((T_INT16*)UpperLim);
		else if((fdeltaCV + *((T_INT16*)abs_CV)) < nLowLim )
			*pnCV = nLowLim;
		else
			*pnCV = (fdeltaCV + *((T_INT16*)abs_CV));
		
		// now set all for next time we calc
		//current time
		*((T_DWORD*)LastTm_sec) = current_time.seconds;
		*LastTm_usec = current_time.hundred_usecs;
		
		// save CV, SP and PV
		*((T_INT16*)SP_Last) = *pnSP;
		*((T_INT16*)PV_Last) = *pnPV;
		*((T_INT16*)abs_CV) = *pnCV;
		
		//current error 
		*((T_INT16*)Error_Last) = nError;
		
		
		//for debugging
		//*((pnPIDArray+32)) = 100.0*fDerivErr;
		
		
			
		if(*ConfigWd & 0x0002) // negate output if required
			*pnCV = -(*pnCV);
			
		*((T_INT16*)Last_CV) = *pnCV;  // output manual command
		*((T_INT16*)CV_Out) = *pnCV;  // track CV out for when PID solution is not calculated
		
		
	} 
	else if(bCalc & ((*ControlWd)& 0x0001))
	{
		// override manual
		// get the lower limit for CV
		nLowLim = *((T_INT16*)LowLim);
		
		//grab manual setting
		*pnCV = *((T_INT16*)Last_CV);
		
		//clamp to limits
		if(*pnCV > *((T_INT16*)UpperLim) )
			*pnCV = *((T_INT16*)UpperLim);
		else if(*pnCV < nLowLim )
			*pnCV = nLowLim;
				
		//set CV out for case where we do not calculate PID solution	
		*((T_INT16*)CV_Out) = *pnCV;
		
		//set derivatives to zero for when switch to auto occurs
		*PV_2n_Last = *PV_Last;
		*PV_Last = *pnPV;
		(*(T_REAL32*)Last_Deriv) = 0.0;
	}
	else
		*pnCV = *((T_INT16*)CV_Out); // just in case
	
	//ISA velocity form algorithm
	*((T_INT16*)PIDType) = 4; 
	
	// set enabled flag?
	*ControlWd = *ControlWd | 0x0004;
	
	return nRetVal;
}
