target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v32:32:32-v64:64:64-v128:128:128-n16:32:64"
target triple = "nvptx64-nvidia-cuda"

; Intrinsic to read X component of thread ID
declare i32 @llvm.nvvm.read.ptx.sreg.tid.x() readnone nounwind


@counts = addrspace(3) global [16 x i32] zeroinitializer, align 4

define void @kernel(i32 addrspace(1)* %nums,
                    i32 addrspace(1)* %counts_out
                    ) {
entry:

  ; What is my ID?
  %id = call i32 @llvm.nvvm.read.ptx.sreg.tid.x()

  %ptr_count_out = getelementptr i32 addrspace(1)* %counts_out, i32 %id
  store i32 0, i32 addrspace(1)* %ptr_count_out, align 4

  ret void
}

!nvvm.annotations = !{!0}
!0 = metadata !{void (i32 addrspace(1)*,
                      i32 addrspace(1)*
                      )* @kernel, metadata !"kernel", i32 1}
