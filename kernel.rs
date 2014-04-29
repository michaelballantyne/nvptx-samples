fn main() {

}

extern "rust-intrinsic" { fn ptx_tid_x() -> i32; }
fn add_vector(x: *mut i32, y: *mut i32) {
    use std::ptr::RawPtr;
    unsafe {
        let i = ptx_tid_x();
        let lx = x.offset(i as int);
        let ly = y.offset(i as int);
        *ly = *lx;
    }
}
