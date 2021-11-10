#include <PACRXPlc.h> /*For C blocks that run on any PACSystems PLC*/
#include <PACRX3iPlc.h> /*For C blocks that use features only
available on an RX3i */
#include <ctkPlcErrno.h>
#include <stdlib.h>
#include <stdio.h>
//#include <string.h>

/*#define _DEBUG

#ifdef _DEBUG
#define OUTPUTDEBUGSTRING(x) outputDebugString(x)
#else
#define OUTPUTDEBUGSTRING(x)
#endif



void outputDebugString(const char* pStr)
{
#ifdef _DEBUG
	int numBytes;

	numBytes = sprintf(debugbuffer, "%s\r\n", pStr);

	PLCC_MessageWrite(PORT1, debugbuffer, numBytes);
#endif
}
*/
T_INT16 GefMain(T_REAL32 *SG, T_REAL32 *T, T_REAL32 *Rho)
{
	T_REAL32 fTmp;
	
	PLCC_ClearErrno(); // use this if doing floating point math
	
	fTmp = (*T)*(*T);
	
	//NIST water density (air saturated) as a function of T (deg C)
	//J. Res. NIST, vol. 97, 335 (1992), 
	*Rho = 0.9998485f +6.337563e-5f*(*T)-8.523829e-6f*(fTmp)+6.943248e-8f*(fTmp*(*T))-3.821216e-10f*(fTmp*fTmp);
	
	// apply to measured S.G. times correction for HTI Goofy SG measurement using 15C for S.G. referece 
	*Rho *= *SG * 1.001f;
	
	return GEF_EXECUTION_OK;
}
