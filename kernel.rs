extern crate sync;
use std::sync::atomics::{AtomicUint, SeqCst};

fn main() {

}

extern "rust-intrinsic" { fn ptx_tid_x() -> i32; }
fn add_vector(x: * mut f32) {
    use std::ptr::RawPtr;
    unsafe {
        let atom = AtomicUint::new(1);
        atom.fetch_add(1, SeqCst);
        let i = ptx_tid_x();
        let lx = x.offset(i as int);
        *lx = *lx + atom.load(SeqCst) as f32;
    }
}
