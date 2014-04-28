use std::libc;

pub struct CUctx_st
{
    id : u64
}

pub type CUdeviceptr = libc::c_uint;
pub type CUerror = i32;

#[link(name = "cuda")]
extern{
    pub fn cuInit(flags :u64) -> CUerror;
    pub fn cuDeviceGet(device : *i32, ordinal : i32) -> CUerror;
    pub fn cuCtxCreate(pctx: *mut CUctx_st, flags: u64, dev : i32) -> CUerror;
    pub fn cuMemAlloc(dptr: *mut CUdeviceptr, bytesize: libc::c_uint) -> CUerror;
    pub fn cuMemcpyHtoD(dstDevice: CUdeviceptr, hostData: *libc::c_void, byteCount: libc::size_t) -> CUerror;
    pub fn cuMemcpyDtoH(dstHost: *libc::c_void, dstDevice: CUdeviceptr, bytecount: libc::size_t) -> CUerror;
}

fn checkCudaErrors(errorNum: CUerror) {
    if errorNum != 0 {
        println!("CUDA error. Num: {}", errorNum);
        unsafe { libc::exit(1 as libc::c_int); }
    }
}

fn main(){
    unsafe {
        let device = 0;
        let mut context = ~CUctx_st{id : 0};
        checkCudaErrors(cuInit(0));
        println!("{}", 1);
        checkCudaErrors(cuDeviceGet(&device, 0));
        println!("{}", 3);
        checkCudaErrors(cuCtxCreate(&mut *context, 0,  device));
        println!("{}", 6);


        let mut nums_dev = 0 as CUdeviceptr;
        checkCudaErrors(cuMemAlloc(&mut nums_dev, (std::mem::size_of::<i32>() * 16) as u32));
        println!("{}", 9);

        let hostNums = Vec::from_fn(16, |i| i as i32);
	println!("{}", hostNums);

        checkCudaErrors(cuMemcpyHtoD(nums_dev, hostNums.as_ptr() as *libc::c_void, (std::mem::size_of::<i32>() * 16) as u64));

        let mut hostnumsback: Vec<i32> = Vec::with_capacity(16);
	hostnumsback.set_len(16);
	println!("{}", hostnumsback);
        checkCudaErrors(cuMemcpyDtoH(hostnumsback.as_mut_ptr() as *libc::c_void, nums_dev, (std::mem::size_of::<i32>() * 16) as u64));

	println!("{}", hostnumsback);

    }
}
