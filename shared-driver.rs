#![feature(macro_rules)]

use std::libc;
use std::ptr;
use std::io::File;

pub struct CUcontext
{
    id : u64
}
pub struct CUfunction
{
    id : u64
}
pub struct CUmodule
{
    id : u64
}
pub struct CUstream
{
    id : u64
}

pub type CUdeviceptr = libc::c_ulonglong;
pub type CUerror = i32;

#[link(name = "cuda")]
extern{
    pub fn cuInit(flags :u64) -> CUerror;
    pub fn cuDeviceGetCount(count : *i32) -> CUerror;
    pub fn cuDeviceGet(device : *i32, ordinal : i32) -> CUerror;
    pub fn cuDeviceGetName(name : *mut i8, len : i32, device : i32) -> CUerror;
    pub fn cuDeviceComputeCapability(major: *mut i32, minor: *mut i32, dev : i32 ) -> CUerror;
    pub fn cuCtxCreate(pctx: *mut CUcontext, flags: u64, dev : i32) -> CUerror;
    pub fn cuModuleGetFunction(hfunc : *mut *CUfunction ,hmod: *CUmodule, name: *i8) -> CUerror;
    pub fn cuModuleLoadDataEx(module : *mut *CUmodule, image: *i8, numOptions: libc::c_uint, options: *i32, optionsValues : *i8) -> CUerror;
    pub fn cuMemAlloc(dptr: *mut CUdeviceptr, bytesize: libc::c_uint) -> CUerror;
    pub fn cuMemcpyHtoD(dstDevice: CUdeviceptr, hostData: *libc::c_void, byteCount: libc::size_t) -> CUerror;
    pub fn cuLaunchKernel(f: *CUfunction, gridDimX: libc::c_uint, gridDimY: libc::c_uint, gridDimZ: libc::c_int, 
                          blockDimX: libc::c_uint, blockDimY: libc::c_uint, blockDimZ: libc::c_uint, 
                          sharedMembytes: libc::c_uint, hStream: *libc::c_void, kernelParams: **CUdeviceptr, extra: **libc::c_void) -> CUerror;

    pub fn cuMemcpyDtoH(dstHost: *libc::c_void, dstDevice: CUdeviceptr, bytecount: libc::size_t) -> CUerror;
    pub fn cuCtxSynchronize() -> CUerror;
}

macro_rules! checkCudaErrors(
    ($errorNum:expr) => (
        if $errorNum != 0 {
            fail!("CUDA error: {}", $errorNum);
        }
    );
)

fn main(){
    unsafe {
        let device = 0;
        let mut context = ~CUcontext{id : 0};

        checkCudaErrors!(cuInit(0));
        checkCudaErrors!(cuDeviceGet(&device, 0));
        checkCudaErrors!(cuCtxCreate(&mut *context, 0,  device));

        let ptxdata = File::open(&Path::new("shared.ptx")).read_to_end().unwrap();
        let kernel = "kernel";

        let mut function = ptr::null();
        let mut cudamodule = ptr::null();
        checkCudaErrors!(cuModuleLoadDataEx(&mut cudamodule, ptxdata.to_c_str().unwrap(), 0, ptr::null(), ptr::null()));
        checkCudaErrors!(cuModuleGetFunction(&mut function, cudamodule, kernel.to_c_str().unwrap()));

        let mut nums_dev = 0 as CUdeviceptr;
        let mut counts_dev = 0 as CUdeviceptr;
        checkCudaErrors!(cuMemAlloc(&mut counts_dev, (std::mem::size_of::<i32>() * 16) as u32));
        checkCudaErrors!(cuMemAlloc(&mut nums_dev, (std::mem::size_of::<i32>() * 16) as u32));

        let hostNums = Vec::from_fn(16, |i| (i/2) as i32);
        println!("{}", hostNums);

        checkCudaErrors!(cuMemcpyHtoD(nums_dev, hostNums.as_ptr() as *libc::c_void, (std::mem::size_of::<i32>() * 16) as u64));

        let blockSizeX = 16;
        let blockSizeY = 1;
        let blockSizeZ = 1;
        let gridSizeX = 1;
        let gridSizeY = 1;
        let gridSizeZ = 1;

        let mut kernelParams: Vec<*CUdeviceptr> = Vec::with_capacity(2);
        kernelParams.push(&nums_dev as *CUdeviceptr);
        kernelParams.push(&counts_dev as *CUdeviceptr);

        checkCudaErrors!(cuLaunchKernel(function, gridSizeX, gridSizeY, gridSizeZ,
				       blockSizeX, blockSizeY, blockSizeZ,
                   0, ptr::null(), kernelParams.as_ptr(), ptr::null()));

        checkCudaErrors!(cuCtxSynchronize());


        let mut hostcounts: Vec<i32> = Vec::with_capacity(16);
        checkCudaErrors!(cuMemcpyDtoH(hostcounts.as_mut_ptr() as *libc::c_void, counts_dev, (std::mem::size_of::<i32>() * 16) as u64));
        hostcounts.set_len(16);

        println!("{}", hostcounts);
    }
}
