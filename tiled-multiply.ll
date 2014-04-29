; ModuleID = 'matrix-multiply-tiled.kernel.cpp'
target datalayout = "e-p:32:32-i64:64-v16:16-v32:32-n16:32:64"
target triple = "nvptx-unknown-unknown"

@g_scratchA = addrspace(4) global [16 x [16 x float]] zeroinitializer, align 4
@g_scratchB = addrspace(4) global [16 x [16 x float]] zeroinitializer, align 4

; Function Attrs: nounwind
define void @matrix_multiply_tiled(float* %A, float* %B, float* %C) #0 {
entry:
  %A.addr = alloca float*, align 4
  %B.addr = alloca float*, align 4
  %C.addr = alloca float*, align 4
  %globalX = alloca i32, align 4
  %globalY = alloca i32, align 4
  %size = alloca i32, align 4
  %k = alloca i32, align 4
  %sum = alloca float, align 4
  %numBlocks = alloca i32, align 4
  %b = alloca i32, align 4
  %tidX = alloca i32, align 4
  %tidY = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %myA = alloca float, align 4
  %myB = alloca float, align 4
  store float* %A, float** %A.addr, align 4
  store float* %B, float** %B.addr, align 4
  store float* %C, float** %C.addr, align 4
  %0 = call i32 @llvm.ptx.read.ctaid.x()
  %1 = call i32 @llvm.ptx.read.ntid.x()
  %mul = mul nsw i32 %0, %1
  %2 = call i32 @llvm.ptx.read.tid.x()
  %add = add nsw i32 %mul, %2
  store i32 %add, i32* %globalX, align 4
  %3 = call i32 @llvm.ptx.read.ctaid.y()
  %4 = call i32 @llvm.ptx.read.ntid.y()
  %mul1 = mul nsw i32 %3, %4
  %5 = call i32 @llvm.ptx.read.tid.y()
  %add2 = add nsw i32 %mul1, %5
  store i32 %add2, i32* %globalY, align 4
  %6 = call i32 @llvm.ptx.read.nctaid.x()
  %7 = call i32 @llvm.ptx.read.ntid.x()
  %mul3 = mul nsw i32 %6, %7
  store i32 %mul3, i32* %size, align 4
  store float 0.000000e+00, float* %sum, align 4
  %8 = load i32* %size, align 4
  %div = sdiv i32 %8, 16
  store i32 %div, i32* %numBlocks, align 4
  %9 = call i32 @llvm.ptx.read.tid.x()
  store i32 %9, i32* %tidX, align 4
  %10 = call i32 @llvm.ptx.read.tid.y()
  store i32 %10, i32* %tidY, align 4
  store i32 0, i32* %b, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc26, %entry
  %11 = load i32* %b, align 4
  %12 = load i32* %numBlocks, align 4
  %cmp = icmp slt i32 %11, %12
  br i1 %cmp, label %for.body, label %for.end28

for.body:                                         ; preds = %for.cond
  %13 = load i32* %b, align 4
  %mul4 = mul nsw i32 %13, 16
  %14 = load i32* %tidX, align 4
  %add5 = add nsw i32 %mul4, %14
  store i32 %add5, i32* %x, align 4
  %15 = load i32* %globalY, align 4
  store i32 %15, i32* %y, align 4
  %16 = load i32* %y, align 4
  %17 = load i32* %size, align 4
  %mul6 = mul nsw i32 %16, %17
  %18 = load i32* %x, align 4
  %add7 = add nsw i32 %mul6, %18
  %19 = load float** %A.addr, align 4
  %arrayidx = getelementptr inbounds float* %19, i32 %add7
  %20 = load float* %arrayidx, align 4
  %21 = load i32* %tidX, align 4
  %22 = load i32* %tidY, align 4
  %arrayidx8 = getelementptr inbounds [16 x [16 x float]] addrspace(4)* @g_scratchA, i32 0, i32 %22
  %arrayidx9 = getelementptr inbounds [16 x float] addrspace(4)* %arrayidx8, i32 0, i32 %21
  store float %20, float addrspace(4)* %arrayidx9, align 4
  %23 = load i32* %globalX, align 4
  store i32 %23, i32* %x, align 4
  %24 = load i32* %b, align 4
  %mul10 = mul nsw i32 %24, 16
  %25 = load i32* %tidY, align 4
  %add11 = add nsw i32 %mul10, %25
  store i32 %add11, i32* %y, align 4
  %26 = load i32* %y, align 4
  %27 = load i32* %size, align 4
  %mul12 = mul nsw i32 %26, %27
  %28 = load i32* %x, align 4
  %add13 = add nsw i32 %mul12, %28
  %29 = load float** %B.addr, align 4
  %arrayidx14 = getelementptr inbounds float* %29, i32 %add13
  %30 = load float* %arrayidx14, align 4
  %31 = load i32* %tidX, align 4
  %32 = load i32* %tidY, align 4
  %arrayidx15 = getelementptr inbounds [16 x [16 x float]] addrspace(4)* @g_scratchB, i32 0, i32 %32
  %arrayidx16 = getelementptr inbounds [16 x float] addrspace(4)* %arrayidx15, i32 0, i32 %31
  store float %30, float addrspace(4)* %arrayidx16, align 4
  call void @llvm.ptx.bar.sync(i32 0)
  store i32 0, i32* %k, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc, %for.body
  %33 = load i32* %k, align 4
  %cmp18 = icmp slt i32 %33, 16
  br i1 %cmp18, label %for.body19, label %for.end

for.body19:                                       ; preds = %for.cond17
  %34 = load i32* %k, align 4
  %35 = load i32* %tidY, align 4
  %arrayidx20 = getelementptr inbounds [16 x [16 x float]] addrspace(4)* @g_scratchA, i32 0, i32 %35
  %arrayidx21 = getelementptr inbounds [16 x float] addrspace(4)* %arrayidx20, i32 0, i32 %34
  %36 = load float addrspace(4)* %arrayidx21, align 4
  store float %36, float* %myA, align 4
  %37 = load i32* %tidX, align 4
  %38 = load i32* %k, align 4
  %arrayidx22 = getelementptr inbounds [16 x [16 x float]] addrspace(4)* @g_scratchB, i32 0, i32 %38
  %arrayidx23 = getelementptr inbounds [16 x float] addrspace(4)* %arrayidx22, i32 0, i32 %37
  %39 = load float addrspace(4)* %arrayidx23, align 4
  store float %39, float* %myB, align 4
  %40 = load float* %myA, align 4
  %41 = load float* %myB, align 4
  %mul24 = fmul float %40, %41
  %42 = load float* %sum, align 4
  %add25 = fadd float %42, %mul24
  store float %add25, float* %sum, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body19
  %43 = load i32* %k, align 4
  %inc = add nsw i32 %43, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond17

for.end:                                          ; preds = %for.cond17
  call void @llvm.ptx.bar.sync(i32 0)
  br label %for.inc26

for.inc26:                                        ; preds = %for.end
  %44 = load i32* %b, align 4
  %inc27 = add nsw i32 %44, 1
  store i32 %inc27, i32* %b, align 4
  br label %for.cond

for.end28:                                        ; preds = %for.cond
  %45 = load float* %sum, align 4
  %46 = load i32* %globalY, align 4
  %47 = load i32* %size, align 4
  %mul29 = mul nsw i32 %46, %47
  %48 = load i32* %globalX, align 4
  %add30 = add nsw i32 %mul29, %48
  %49 = load float** %C.addr, align 4
  %arrayidx31 = getelementptr inbounds float* %49, i32 %add30
  store float %45, float* %arrayidx31, align 4
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @llvm.ptx.read.ctaid.x() #1

; Function Attrs: nounwind readnone
declare i32 @llvm.ptx.read.ntid.x() #1

; Function Attrs: nounwind readnone
declare i32 @llvm.ptx.read.tid.x() #1

; Function Attrs: nounwind readnone
declare i32 @llvm.ptx.read.ctaid.y() #1

; Function Attrs: nounwind readnone
declare i32 @llvm.ptx.read.ntid.y() #1

; Function Attrs: nounwind readnone
declare i32 @llvm.ptx.read.tid.y() #1

; Function Attrs: nounwind readnone
declare i32 @llvm.ptx.read.nctaid.x() #1

; Function Attrs: nounwind
declare void @llvm.ptx.bar.sync(i32) #2

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-realign-stack" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (trunk 207450) (llvm/trunk 207449)"}
