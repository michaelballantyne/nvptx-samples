; ModuleID = 'address-spaces.cu'
target datalayout = "e-p:32:32-i64:64-v16:16-v32:32-n16:32:64"
target triple = "nvptx-unknown-unknown"

%struct.MyStruct = type { i32, i32 }

@i = addrspace(1) global i32 0, align 4
@j = addrspace(4) global i32 0, align 4
@k = addrspace(3) global i32 0, align 4
@_ZZ3foovE2li = internal addrspace(1) global i32 0, align 4
@_ZZ3foovE2lj = internal addrspace(4) global i32 0, align 4
@_ZZ3foovE2lk = internal addrspace(3) global i32 0, align 4
@_ZZ5func0vE1a = internal addrspace(3) global %struct.MyStruct zeroinitializer, align 4
@_ZZ5func1vE1a = internal addrspace(3) global float 0.000000e+00, align 4
@_ZZ5func2vE1a = internal addrspace(3) global [256 x float] zeroinitializer, align 4
@_ZZ5func3vE1a = internal addrspace(3) global float 0.000000e+00, align 4
@_ZZ5func4vE1a = internal addrspace(3) global float 0.000000e+00, align 4
@b = addrspace(3) global float 0.000000e+00, align 4

; Function Attrs: nounwind
define void @_Z3foov() #0 {
entry:
  %0 = load i32* addrspacecast (i32 addrspace(1)* @i to i32*), align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* addrspacecast (i32 addrspace(1)* @i to i32*), align 4
  %1 = load i32* addrspacecast (i32 addrspace(4)* @j to i32*), align 4
  %inc1 = add nsw i32 %1, 1
  store i32 %inc1, i32* addrspacecast (i32 addrspace(4)* @j to i32*), align 4
  %2 = load i32* addrspacecast (i32 addrspace(3)* @k to i32*), align 4
  %inc2 = add nsw i32 %2, 1
  store i32 %inc2, i32* addrspacecast (i32 addrspace(3)* @k to i32*), align 4
  %3 = load i32* addrspacecast (i32 addrspace(1)* @_ZZ3foovE2li to i32*), align 4
  %inc3 = add nsw i32 %3, 1
  store i32 %inc3, i32* addrspacecast (i32 addrspace(1)* @_ZZ3foovE2li to i32*), align 4
  %4 = load i32* addrspacecast (i32 addrspace(4)* @_ZZ3foovE2lj to i32*), align 4
  %inc4 = add nsw i32 %4, 1
  store i32 %inc4, i32* addrspacecast (i32 addrspace(4)* @_ZZ3foovE2lj to i32*), align 4
  %5 = load i32* addrspacecast (i32 addrspace(3)* @_ZZ3foovE2lk to i32*), align 4
  %inc5 = add nsw i32 %5, 1
  store i32 %inc5, i32* addrspacecast (i32 addrspace(3)* @_ZZ3foovE2lk to i32*), align 4
  ret void
}

; Function Attrs: nounwind
define void @_Z5func0v() #0 {
entry:
  %ap = alloca %struct.MyStruct*, align 4
  store %struct.MyStruct* addrspacecast (%struct.MyStruct addrspace(3)* @_ZZ5func0vE1a to %struct.MyStruct*), %struct.MyStruct** %ap, align 4
  %0 = load %struct.MyStruct** %ap, align 4
  %data1 = getelementptr inbounds %struct.MyStruct* %0, i32 0, i32 0
  store i32 1, i32* %data1, align 4
  %1 = load %struct.MyStruct** %ap, align 4
  %data2 = getelementptr inbounds %struct.MyStruct* %1, i32 0, i32 1
  store i32 2, i32* %data2, align 4
  ret void
}

; Function Attrs: nounwind
define void @_Z6calleePf(float* %ap) #0 {
entry:
  %ap.addr = alloca float*, align 4
  store float* %ap, float** %ap.addr, align 4
  %0 = load float** %ap.addr, align 4
  store float 1.000000e+00, float* %0, align 4
  ret void
}

; Function Attrs: nounwind
define void @_Z5func1v() #0 {
entry:
  call void @_Z6calleePf(float* addrspacecast (float addrspace(3)* @_ZZ5func1vE1a to float*))
  ret void
}

; Function Attrs: nounwind
define void @_Z5func2v() #0 {
entry:
  %ap = alloca float*, align 4
  store float* getelementptr inbounds ([256 x float]* addrspacecast ([256 x float] addrspace(3)* @_ZZ5func2vE1a to [256 x float]*), i32 0, i32 128), float** %ap, align 4
  %0 = load float** %ap, align 4
  store float 1.000000e+00, float* %0, align 4
  ret void
}

; Function Attrs: nounwind
define void @_Z5func3v() #0 {
entry:
  %ap = alloca float*, align 4
  store float* addrspacecast (float addrspace(3)* @_ZZ5func3vE1a to float*), float** %ap, align 4
  %0 = load float** %ap, align 4
  store float 1.000000e+00, float* %0, align 4
  ret void
}

; Function Attrs: nounwind
define void @_Z5func4v() #0 {
entry:
  %ap = alloca float*, align 4
  store float* addrspacecast (float addrspace(3)* @_ZZ5func4vE1a to float*), float** %ap, align 4
  %0 = load float** %ap, align 4
  store float 1.000000e+00, float* %0, align 4
  ret void
}

; Function Attrs: nounwind
define float* @_Z5func5v() #0 {
entry:
  ret float* addrspacecast (float addrspace(3)* @b to float*)
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-realign-stack" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (trunk 207450) (llvm/trunk 207449)"}
