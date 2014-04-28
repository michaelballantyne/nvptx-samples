#define __NV_CUBIN_HANDLE_STORAGE__ static
#include "crt/host_runtime.h"
#include "noop.fatbin.c"
extern void __device_stub__Z6kernelv(void);
static void __nv_cudaEntityRegisterCallback(void **);
static void __sti____cudaRegisterAll_12_noop_cpp1_ii_b81a68a1(void) __attribute__((__constructor__));
void __device_stub__Z6kernelv(void){__cudaLaunch(((char *)((void ( *)(void))kernel)));}
# 1 "noop.cu"
void kernel(void)
# 1 "noop.cu"
{__device_stub__Z6kernelv();
}
# 1 "noop.cudafe1.stub.c"
static void __nv_cudaEntityRegisterCallback( void **__T20) {  __nv_dummy_param_ref(__T20); __cudaRegisterEntry(__T20, ((void ( *)(void))kernel), _Z6kernelv, (-1)); }
static void __sti____cudaRegisterAll_12_noop_cpp1_ii_b81a68a1(void) {  __cudaRegisterBinary(__nv_cudaEntityRegisterCallback);  }
