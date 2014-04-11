#include <iostream>
#include <fstream>
#include <cassert>
#include "cuda.h"
#include "helper_cuda_drvapi.h"


/// main - Program entry point
int main(int argc, char **argv) {
  CUdevice    device;
  CUmodule    cudaModule;
  CUcontext   context;
  CUfunction  function;
  CUlinkState linker;
  int         devCount;

  // CUDA initialization
  checkCudaErrors(cuInit(0));
  checkCudaErrors(cuDeviceGetCount(&devCount));
  checkCudaErrors(cuDeviceGet(&device, 0));

  char name[128];
  checkCudaErrors(cuDeviceGetName(name, 128, device));
  std::cout << "Using CUDA Device [0]: " << name << "\n";

  int devMajor, devMinor;
  checkCudaErrors(cuDeviceComputeCapability(&devMajor, &devMinor, device));
  std::cout << "Device Compute Capability: "
            << devMajor << "." << devMinor << "\n";
  if (devMajor < 2) {
    std::cerr << "ERROR: Device 0 is not SM 2.0 or greater\n";
    return 1;
  }

  std::ifstream t("shared.ptx");
  if (!t.is_open()) {
    std::cerr << "kernel.ptx not found\n";
    return 1;
  }
  std::string str((std::istreambuf_iterator<char>(t)),
                    std::istreambuf_iterator<char>());

  // Create driver context
  checkCudaErrors(cuCtxCreate(&context, 0, device));

  // Create module for object
  checkCudaErrors(cuModuleLoadDataEx(&cudaModule, str.c_str(), 0, 0, 0));

  // Get kernel function
  checkCudaErrors(cuModuleGetFunction(&function, cudaModule, "kernel"));

  // Device data
  CUdeviceptr devBufferNums;
  CUdeviceptr devBufferCounts;

  checkCudaErrors(cuMemAlloc(&devBufferNums, sizeof(int)*16));
  checkCudaErrors(cuMemAlloc(&devBufferCounts, sizeof(int)*16));

  int* hostNums = new int[16];
  int* hostCounts = new int[16];

  // Populate input
  for (unsigned i = 0; i != 8; ++i) {
    hostNums[i] = i;
    hostNums[i + 8] = i;
  }

  checkCudaErrors(cuMemcpyHtoD(devBufferNums, &hostNums[0], sizeof(int)*16));

  unsigned blockSizeX = 16;
  unsigned blockSizeY = 1;
  unsigned blockSizeZ = 1;
  unsigned gridSizeX  = 1;
  unsigned gridSizeY  = 1;
  unsigned gridSizeZ  = 1;

  // Kernel parameters
  void *KernelParams[] = { &devBufferNums, &devBufferCounts};

  std::cout << "Launching kernel\n";

  // Kernel launch
  checkCudaErrors(cuLaunchKernel(function, gridSizeX, gridSizeY, gridSizeZ,
                                 blockSizeX, blockSizeY, blockSizeZ,
                                 0, NULL, KernelParams, NULL));

  // Retrieve device data
  checkCudaErrors(cuMemcpyDtoH(&hostCounts[0], devBufferCounts, sizeof(int)*16));


  std::cout << "Results:\n";
  for (unsigned i = 0; i != 16; ++i) {
    std::cout << i << " = " << hostCounts[i] << "\n";
  }


  // Clean up after ourselves
  delete [] hostNums;
  delete [] hostCounts;

  // Clean-up
  checkCudaErrors(cuMemFree(devBufferNums));
  checkCudaErrors(cuMemFree(devBufferCounts));
  checkCudaErrors(cuModuleUnload(cudaModule));
  checkCudaErrors(cuCtxDestroy(context));

  return 0;
}
