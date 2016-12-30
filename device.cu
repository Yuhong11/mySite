#include <stdio.h>

int main()
{
	int dev_ct;
	cudaGetDeviceCount( &dev_ct );
	
	int dev_id;
	cudaGetDevice( &dev_id );

	struct cudaDeviceProp myGPU;
	cudaGetDeviceProperties( &myGPU, dev_id );	

	printf("Device Count      = %d\n", dev_ct);
	printf("Device Number     = %d\n", dev_id);
	printf("Device Name       = %s\n", myGPU.name );	
	printf("Global Memory     = %zu B = %f GB\n", myGPU.totalGlobalMem,  myGPU.totalGlobalMem/(1024.0*1024.0*1024.0) );	
	printf("Shared Mem/block  = %zu\n", myGPU.sharedMemPerBlock );	
	printf("Registers /block  = %d\n", myGPU.regsPerBlock );	
	printf("Warp Size         = %d\n", myGPU.warpSize );	
	printf("Mem Pitch         = %zu\n", myGPU.memPitch );	
	printf("Max Threads/block = %d\n", myGPU.maxThreadsPerBlock );	
	
	printf("Max Threads Dim   = (%d, %d, %d)\n", myGPU.maxThreadsDim[0],\
                                                     myGPU.maxThreadsDim[1],\
                                                     myGPU.maxThreadsDim[2]);	

	printf("Max Grid Size     = (%d, %d, %d)\n", myGPU.maxGridSize[0],\
                                                     myGPU.maxGridSize[1],\
                                                     myGPU.maxGridSize[2]);	


	printf("Total Const Mem   = %zu\n", myGPU.totalConstMem );	
	printf("Major             = %d\n", myGPU.major );	
	printf("Minor             = %d\n", myGPU.minor );	
	printf("Clock Rate        = %.2f MHz\n", myGPU.clockRate/1000.0 );

	printf("Text Alignment      = %zu\n", myGPU.textureAlignment);
        printf("Device Overlap      = %d\n", myGPU.deviceOverlap);
        printf("MultiProcessorCount = %d\n", myGPU.multiProcessorCount);
	printf("Kernel Exec Timeout Enabled = %d\n", myGPU.kernelExecTimeoutEnabled);
	printf("Integrated GPU      = %d\n", myGPU.integrated);
	printf("Can Map Host Memory = %d\n", myGPU.canMapHostMemory);
	printf("Compute Mode        = %d\n", myGPU.computeMode);
	printf("Concurrent Kernels  = %d\n", myGPU.concurrentKernels);
	printf("ECC Enabled         = %d\n", myGPU.ECCEnabled);
	printf("PCI Bus ID          = %d\n", myGPU.pciBusID);
	printf("PCI Device ID       = %d\n", myGPU.pciDeviceID);
	printf("TCC Driver          = %d\n", myGPU.tccDriver);

	return 0;
}
