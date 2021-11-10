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
	T_INT16 nRetVal, nError, nGainErr;
	T_INT32 nRange;
	//T_DWORD seconds_elapsed;
	T_REAL32 fseconds, fdeltaCV, fSlewRate, fLowLim, fDerivErrNew, fDerivErr;
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
	// get current time
	PLCC_read_elapsed_clock (&current_time);
	
	fLowLim = 0.0;
	
	//assume we skip this call
	bCalc = 0;
	
	//enforce desired solve timing if set in %REF + 2 (see Proficy PID help)
	if(pnPIDArray[2] > 0) // need to check enough time has elapsed
	{
		// calculate delta t
		if(*((T_DWORD*)(pnPIDArray+23)) != 0)
		{
			fseconds = current_time.hundred_usecs - *(pnPIDArray+25);
			fseconds *= 0.0001;
			fseconds += (current_time.seconds - *((T_DWORD*)(pnPIDArray+23)));
			
			if(fseconds > (0.01*((T_REAL32)pnPIDArray[2])))
				bCalc = 1;
		}
		else
		{
			// delta t is zero, so we only have a gain until next time we are called
			fseconds = 0.0;
			bCalc = 1;
			//if there is a bias (initial CV), apply it
			*((T_INT16*)(pnPIDArray+18)) = *((T_INT16*)(pnPIDArray+8));
			//zero out residual in derivative filter
			(*(T_REAL32*)(pnPIDArray+20)) = 0.0;
		}
	}
	else 
	{
		if(*((T_DWORD*)(pnPIDArray+23)) != 0)
		{
			fseconds = current_time.hundred_usecs - *(pnPIDArray+25);
			fseconds *= 0.0001;
			fseconds += (current_time.seconds - *((T_DWORD*)(pnPIDArray+23)));
		}
		else
		{
			fseconds = 0.0;
			//if there is a bias (initial CV), apply it
			*((T_INT16*)(pnPIDArray+18)) = *((T_INT16*)(pnPIDArray+8));
			//zero out residual in derivative filter
			(*(T_REAL32*)(pnPIDArray+20)) = 0.0;
		}
		
		// always calculate this PID (%REF+2 is zero)
		bCalc = 1;
	}
	
	if(bCalc)
	{
		//store delta-t since last solve in %REF+26 in msec
		*(pnPIDArray+26) = 100.0 * fseconds;
		
		fdeltaCV = 0.0;
		
		fDerivErrNew = 0.0;
		
		//new error term for gain and integral
		nError = *pnSP - *pnPV; // reverse acting (normal)
		
		//change sign if config word (%REF+12) indicates direct acting bit set
		if(*(pnPIDArray+12) & 0x0001) 
			nError = -nError; // direct acting
		

		// derivative - avoid derivative "kick" by not using SP in calc
		// derivative error term - use last process value stored in %REF+17
		if(*((T_INT16*)(pnPIDArray+17)) != 0 )
			fDerivErrNew = *pnPV - *((T_INT16*)(pnPIDArray+17));

		// first order filter the derivative (should check bit 5 of %REF+12 config word)
		fDerivErr =  0.015 * fDerivErrNew + 0.985*(*(T_REAL32*)(pnPIDArray+20));
	
		
		// integral term - must be included for this form to work
		if(*(pnPIDArray+7) > 0) // integral Kc/tau, %/%/ tau , implied 3 decimal places
			fdeltaCV += fseconds*(*(pnPIDArray+7))*0.001*nError;
		else
			fdeltaCV += fseconds*0.001*nError; //smallest usable intgral term
		
		//gain term
		// this may be signed, convert to int first
		nGainErr = nError - ((T_INT16)(*(pnPIDArray+19)));
		
		fdeltaCV += 0.01*nGainErr * (*(pnPIDArray+5));
		
		//calc deriv contrib - based on derivative of process value - don't divide by zero
		if(fseconds > 0.0)
			fdeltaCV -= 0.01*(*(pnPIDArray+6)) * fDerivErr / fseconds; 
		
		// get the lower limit for CV
		fLowLim = *((T_INT16*)(pnPIDArray+10));
		
		// check slew rate and clamp
		if(*(pnPIDArray+11) > 0) // slew rate limit in force
		{
			// upp clamp - lower clamp
			nRange = (*(pnPIDArray+9));
			nRange -= fLowLim;
			
			fSlewRate = ((T_REAL32) nRange) / *(pnPIDArray+11);
			
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
		if((fdeltaCV + *((T_INT16*)(pnPIDArray+18))) > *((T_INT16*)(pnPIDArray+9)) )
			*pnCV = *((T_INT16*)(pnPIDArray+9));
		else if((fdeltaCV + *((T_INT16*)(pnPIDArray+18))) < fLowLim )
			*pnCV = fLowLim;
		else
			*pnCV = (fdeltaCV + *((T_INT16*)(pnPIDArray+18)));
		
		// now set all for next time we calc
			//current time
			*((T_DWORD*)(pnPIDArray+23)) = current_time.seconds;
			*(pnPIDArray+25) = current_time.hundred_usecs;
		
			// save SP and PV
			*((T_INT16*)(pnPIDArray+15)) = *pnSP;
			*((T_INT16*)(pnPIDArray+17)) = *pnPV;
		
			//current error 
			*((T_INT16*)(pnPIDArray+19)) = nError;
			
			//deriv error for filter - 32 bits stored
			*((T_REAL32*)(pnPIDArray+20)) = fDerivErr;
		
		
			//for debugging
			//*((pnPIDArray+32)) = 100.0*fDerivErr;
		
			// save for use next time
			*((T_INT16*)(pnPIDArray+18)) = *pnCV;
			
			if(*((pnPIDArray+12)) & 0x0002) // negate output if required
				*pnCV = -(*pnCV);
			
			*((T_INT16*)(pnPIDArray+13)) = *pnCV;
			*((T_INT16*)(pnPIDArray+16)) = *pnCV;
		
		
	}
	else
		*pnCV = *((T_INT16*)(pnPIDArray+13)); // just in case
	
	//IND velocity form algorithm
	*((T_INT16*)(pnPIDArray+1)) = 3; 
	
	// set enabled flag
	*(pnPIDArray+14) = *(pnPIDArray+14) | 0x0004;
	
	return nRetVal;
}
