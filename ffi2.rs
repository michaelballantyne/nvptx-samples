use std::libc;

struct CUfunc_st
{
	id : u64
}
struct CUmod_st
{
	id : u64
}


#[link(name="cuda")]
extern {
	pub fn cuModuleGetFunction(hfunc : *mut *CUfunc_st ,hmod: *CUmod_st, name: *i8)->i32;
	pub fn cuModuleLoadDataEx(module : *mut *CUmod_st, image: *i8, numOptions: libc::c_uint, options: *i32, optionsValues : *i8);
}


fn main(){
	unsafe{
		let mut function = 0 as *CUfunc_st;
		let mut cudamodule = 0 as *CUmod_st;
		let ptxdata = "";
		let kernel = "kernel";
		cuModuleLoadDataEx(&mut cudamodule, ptxdata.to_c_str().unwrap(), 0 as libc::c_uint, 0 as *i32, 0 as *i8);
		cuModuleGetFunction(&mut function, cudamodule, kernel.to_c_str().unwrap());

	     }
}
