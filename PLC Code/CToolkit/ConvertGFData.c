#include <PACRXPlc.h> /*For C blocks that run on any PACSystems PLC*/
#include <PACRX3iPlc.h> /*For C blocks that use features only
available on an RX3i */
#include <ctkPlcErrno.h>
#include <stdlib.h>
#include <stdio.h>
//#include <string.h>

/*#define _DEBUG*/

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
/*


Sensor  1 = Flow frequency 9 bytes in, real flow out, UINT32 totalizer out, 8 bits of flags
		2 = 4-20 mA input 1 scaled float out and flags from port 7
		3 = level sensor 1 float out and flags
		4 = temperature sensor - 1 float out and flags
		5 = pressure sensor - 1 float and flags
		6 = S3L flow sensor - 1float, 1 uint and flags
		7 = conductivity 2 floats and flags
		8 = ORP 2 floats and flags
		9 = dissol ved O2  2 floats or 1 float and 1 UINT and flags
		10 = 4-20mA input only on port 5 or 6
*/
T_INT16 GefMain(T_INT16 *pnSensor, T_BYTE *pnGFData, T_REAL32 *pfData1, T_REAL32 *pfData2, T_UINT32 *punData2, T_UINT16 *piFlags)
{
	T_INT16 nRetVal;
	T_BYTE* pbData;
	/*char *pTok, *pLast;*/
	//PLCC_ClearErrno(); // use this if doing floating point math
	
	nRetVal = GEF_EXECUTION_OK;
/*
	OUTPUTDEBUGSTRING("Enter Serial Communication C Block");
*/
	
	
	if(pnSensor!= NULL && pnGFData != NULL && pfData1 != NULL && piFlags != NULL)
	{
		if(*pnSensor == 2)
		{
			// byte 3 is always flags
			// *piFlags = 0;
					
			pbData = (T_BYTE*)piFlags;
					
			pbData[0] = pnGFData[2];
			
			// 1 16 bit UINT
			if(pfData2 != NULL)
			{
				*punData2 = 0;
				
				pbData = (T_BYTE*)punData2;
				
				pdTemp[0] = pnGFData[1];
				pdTemp[1] = pnGFData[0];
				
				// convert to % (100.00) - fits in 16 bit, essentially 14 bit
				*pfData1 = (T_REAL32)(*(T_UINT16*)pdTemp);
				// 4000-20000 for 4mA to 20 mA
				*pfData1 -= 4000.;
				
				*pfData1 *= 0.00625;
				
				if(*pfData1 < 0.0)
					*pfData1 = 0.0;
				
				//*pfData1 *= 100.;
				((T_UINT16*)pbData)[0] = (T_UINT16)(*pfData1);
				//pbData[0] = pnGFData[1];
				//pbData[1] = pnGFData[0];
			}
		}
		else
		{
			// byte 9 is always flags
			// *piFlags = 0;
					
			pbData = (T_BYTE*)piFlags;
					
			pbData[0] = pnGFData[8];
			
			//first data is always a float
			pbData = (T_BYTE*)pfData1;
			pbData[0] = pnGFData[3];
			pbData[1] = pnGFData[2];
			pbData[2] = pnGFData[1];
			pbData[3] = pnGFData[0];
			
			switch(*pnSensor)
			{
				
			case 1: //freq based flow sensor 1 float done above, 1 UINT here, and flags above
			case 6: //S3L based flow meter
				if(punData2 != NULL)
				{
					pbData = (T_BYTE*)punData2;
					pbData[0] = pnGFData[7];
					pbData[1] = pnGFData[6];
					pbData[2] = pnGFData[5];
					pbData[3] = pnGFData[4];
				}
				break;
					
			case 7: // conductivity - second number is a float
			case 8: // ORP
			case 9: // Dissolved O2 - may need to look at bits in flags to see howto interpret
			case 10: // 4-20mA input port 5 or 6 raw current
				if(pfData2 != NULL)
				{
					pbData = (T_BYTE*)pfData2;
					pbData[0] = pnGFData[7];
					pbData[1] = pnGFData[6];
					pbData[2] = pnGFData[5];
					pbData[3] = pnGFData[4];
				}
			break;		
			default: // all others do not have a second data value
			//case 2: // 4-20 input (port 7)
			//case 3: //level sensor
			//case 4: // temperature
			//case 5: //pressure sensor
				break;
			}
		}
	}
	return nRetVal;
}
