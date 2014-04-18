
pub struct CUctx_st
{
	id : u64
}
pub struct CUfunc_st
{
	id : u64
}
pub struct CUmod_st
{
	id : u64
}

#[link(name = "cuda")]
extern{
	pub fn cuInit(flags :u64) -> i32;
	pub fn cuDeviceGetCount(count : *i32) -> i32;
	pub fn cuDeviceGet(device : *i32, ordinal : i32) -> i32;
	pub fn cuDeviceGetName(name : *mut i8, len : i32, device : i32) -> i32;
	pub fn cuDeviceComputeCapability(major: *mut i32, minor: *mut i32, dev : i32 )-> i32;
	pub fn cuCtxCreate(pctx: *mut CUctx_st, flags: u64, dev : i32) -> i32;
	pub fn cuModuleGetFunction(hfunc : *mut CUctx_st, hmod: **mut CUmod_st, name :i8 )-> i32;	
}


fn main(){
unsafe {
	let devcount = 0;
	let device = 0;
	let mut name= Vec::with_capacity(128) ;
	let mut devMajor = 0;
	let mut devMinor = 0;
	let mut context= ~CUctx_st{id : 0};
	let mut function = ~CUfunc_st{id : 0};
	let mut cudamodule = ~CUmod_st{id : 0}; 
	cuInit(0);
	cuDeviceGetCount(&devcount);
	cuDeviceGet(&device, 0);
	cuDeviceGetName(name.as_mut_ptr(),128, device);
	cuDeviceComputeCapability(&mut devMajor, &mut devMinor, device);
	cuCtxCreate(&mut *context, 0,  device);
	cuModuleGetFunction(&mut function, &mut cudamodule, "kernel");
	println!("ffi example");
}
}
