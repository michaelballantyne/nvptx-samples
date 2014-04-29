target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v32:32:32-v64:64:64-v128:128:128-n16:32:64"
target triple = "nvptx64-nvidia-cuda"

; Intrinsic to read X component of thread ID
declare i32 @llvm.nvvm.read.ptx.sreg.tid.x() readnone nounwind


@counts = addrspace(3) global [16 x i32] zeroinitializer, align 4

define void @kernel(i32 addrspace(1)* %nums,
                    i32 addrspace(1)* %counts_out
                    ) {
entry:
  %countscast = addrspacecast [16 x i32] addrspace(3)* @counts to [16 x i32]*

  ; What is my ID?
  %id = call i32 @llvm.nvvm.read.ptx.sreg.tid.x()

  %ptr_counts = getelementptr [16 x i32]* %countscast, i32 0, i32 %id
  store i32 0, i32* %ptr_counts, align 4

  %ptr_nums = getelementptr i32 addrspace(1)* %nums, i32 %id
  %nums_val = load i32 addrspace(1)* %ptr_nums, align 4
  %ptr_my_count = getelementptr [16 x i32]* %countscast, i32 0, i32 %nums_val

  atomicrmw add i32* %ptr_my_count, i32 1 acquire

  ;%my_count_val = load i32* %ptr_my_count, align 4
  ;%newval = add i32 %my_count_val, 1
  ;store i32 %newval, i32* %ptr_my_count, align 4

  ;call i32 @llvm.ptx.atom.add.s.32( i32* %ptr_my_count, i32 2 )

  %count_val = load i32* %ptr_counts, align 4
  %ptr_count_out = getelementptr i32 addrspace(1)* %counts_out, i32 %id
  store i32 %count_val, i32 addrspace(1)* %ptr_count_out, align 4

  ret void
}

!nvvm.annotations = !{!0}
!0 = metadata !{void (i32 addrspace(1)*,
                      i32 addrspace(1)*
                      )* @kernel, metadata !"kernel", i32 1}
