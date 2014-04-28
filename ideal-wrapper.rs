fn main() {
    let device = cudaInit();

    let nums_dev = cudaAlloc<i32>(16);
    let counts_dev = cudaAlloc<i32>(16);

    let nums_host = Vec::from_fn(16, |i| (i/2) as i32);

    copyToDevice(nums_host, nums_dev);

    let kernel = loadPTX("shared.ptx", "kernel");
    launchKernel(kernel, [1, 1, 1], [16, 1, 1], [nums_dev, counts_dev]);

    synchronize();

    copyToHost(counts_dev, counts_host);
    println!("{}", hostcounts);
}
