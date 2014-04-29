; ModuleID = 'kernel.rs'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v32:32:32-v64:64:64-v128:128:128-n16:32:64"
target triple = "nvptx64-nvidia-cuda"

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture, i8, i32, i32, i1) unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) unnamed_addr #0

; Function Attrs: noreturn nounwind
declare void @llvm.trap() unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.debugtrap() unnamed_addr #0

; Function Attrs: nounwind readnone
declare i8* @llvm.frameaddress(i32) unnamed_addr #2

; Function Attrs: nounwind readonly
declare float @llvm.powi.f32(float, i32) unnamed_addr #3

; Function Attrs: nounwind readonly
declare double @llvm.powi.f64(double, i32) unnamed_addr #3

; Function Attrs: nounwind readonly
declare float @llvm.pow.f32(float, float) unnamed_addr #3

; Function Attrs: nounwind readonly
declare double @llvm.pow.f64(double, double) unnamed_addr #3

; Function Attrs: nounwind readnone
declare i32 @llvm.nvvm.read.ptx.sreg.tid.x() unnamed_addr #2

; Function Attrs: nounwind readonly
declare float @llvm.sqrt.f32(float) unnamed_addr #3

; Function Attrs: nounwind readonly
declare double @llvm.sqrt.f64(double) unnamed_addr #3

; Function Attrs: nounwind readonly
declare float @llvm.sin.f32(float) unnamed_addr #3

; Function Attrs: nounwind readonly
declare double @llvm.sin.f64(double) unnamed_addr #3

; Function Attrs: nounwind readonly
declare float @llvm.cos.f32(float) unnamed_addr #3

; Function Attrs: nounwind readonly
declare double @llvm.cos.f64(double) unnamed_addr #3

; Function Attrs: nounwind readonly
declare float @llvm.exp.f32(float) unnamed_addr #3

; Function Attrs: nounwind readonly
declare double @llvm.exp.f64(double) unnamed_addr #3

; Function Attrs: nounwind readonly
declare float @llvm.exp2.f32(float) unnamed_addr #3

; Function Attrs: nounwind readonly
declare double @llvm.exp2.f64(double) unnamed_addr #3

; Function Attrs: nounwind readonly
declare float @llvm.log.f32(float) unnamed_addr #3

; Function Attrs: nounwind readonly
declare double @llvm.log.f64(double) unnamed_addr #3

; Function Attrs: nounwind readonly
declare float @llvm.log10.f32(float) unnamed_addr #3

; Function Attrs: nounwind readonly
declare double @llvm.log10.f64(double) unnamed_addr #3

; Function Attrs: nounwind readonly
declare float @llvm.log2.f32(float) unnamed_addr #3

; Function Attrs: nounwind readonly
declare double @llvm.log2.f64(double) unnamed_addr #3

; Function Attrs: nounwind readnone
declare float @llvm.fma.f32(float, float, float) unnamed_addr #2

; Function Attrs: nounwind readnone
declare double @llvm.fma.f64(double, double, double) unnamed_addr #2

; Function Attrs: nounwind readonly
declare float @llvm.fabs.f32(float) unnamed_addr #3

; Function Attrs: nounwind readonly
declare double @llvm.fabs.f64(double) unnamed_addr #3

; Function Attrs: nounwind readonly
declare float @llvm.floor.f32(float) unnamed_addr #3

; Function Attrs: nounwind readonly
declare double @llvm.floor.f64(double) unnamed_addr #3

; Function Attrs: nounwind readonly
declare float @llvm.ceil.f32(float) unnamed_addr #3

; Function Attrs: nounwind readonly
declare double @llvm.ceil.f64(double) unnamed_addr #3

; Function Attrs: nounwind readonly
declare float @llvm.trunc.f32(float) unnamed_addr #3

; Function Attrs: nounwind readonly
declare double @llvm.trunc.f64(double) unnamed_addr #3

; Function Attrs: nounwind readonly
declare float @llvm.rint.f32(float) unnamed_addr #3

; Function Attrs: nounwind readonly
declare double @llvm.rint.f64(double) unnamed_addr #3

; Function Attrs: nounwind readonly
declare float @llvm.nearbyint.f32(float) unnamed_addr #3

; Function Attrs: nounwind readonly
declare double @llvm.nearbyint.f64(double) unnamed_addr #3

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) unnamed_addr #2

; Function Attrs: nounwind readnone
declare i16 @llvm.ctpop.i16(i16) unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) unnamed_addr #2

; Function Attrs: nounwind readnone
declare i64 @llvm.ctpop.i64(i64) unnamed_addr #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctlz.i8(i8, i1) unnamed_addr #2

; Function Attrs: nounwind readnone
declare i16 @llvm.ctlz.i16(i16, i1) unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32 @llvm.ctlz.i32(i32, i1) unnamed_addr #2

; Function Attrs: nounwind readnone
declare i64 @llvm.ctlz.i64(i64, i1) unnamed_addr #2

; Function Attrs: nounwind readnone
declare i8 @llvm.cttz.i8(i8, i1) unnamed_addr #2

; Function Attrs: nounwind readnone
declare i16 @llvm.cttz.i16(i16, i1) unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32 @llvm.cttz.i32(i32, i1) unnamed_addr #2

; Function Attrs: nounwind readnone
declare i64 @llvm.cttz.i64(i64, i1) unnamed_addr #2

; Function Attrs: nounwind readnone
declare i16 @llvm.bswap.i16(i16) unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32 @llvm.bswap.i32(i32) unnamed_addr #2

; Function Attrs: nounwind readnone
declare i64 @llvm.bswap.i64(i64) unnamed_addr #2

; Function Attrs: nounwind readnone
declare { i8, i1 } @llvm.sadd.with.overflow.i8(i8, i8) unnamed_addr #2

; Function Attrs: nounwind readnone
declare { i16, i1 } @llvm.sadd.with.overflow.i16(i16, i16) unnamed_addr #2

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) unnamed_addr #2

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) unnamed_addr #2

; Function Attrs: nounwind readnone
declare { i8, i1 } @llvm.uadd.with.overflow.i8(i8, i8) unnamed_addr #2

; Function Attrs: nounwind readnone
declare { i16, i1 } @llvm.uadd.with.overflow.i16(i16, i16) unnamed_addr #2

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) unnamed_addr #2

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) unnamed_addr #2

; Function Attrs: nounwind readnone
declare { i8, i1 } @llvm.ssub.with.overflow.i8(i8, i8) unnamed_addr #2

; Function Attrs: nounwind readnone
declare { i16, i1 } @llvm.ssub.with.overflow.i16(i16, i16) unnamed_addr #2

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) unnamed_addr #2

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) unnamed_addr #2

; Function Attrs: nounwind readnone
declare { i8, i1 } @llvm.usub.with.overflow.i8(i8, i8) unnamed_addr #2

; Function Attrs: nounwind readnone
declare { i16, i1 } @llvm.usub.with.overflow.i16(i16, i16) unnamed_addr #2

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) unnamed_addr #2

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) unnamed_addr #2

; Function Attrs: nounwind readnone
declare { i8, i1 } @llvm.smul.with.overflow.i8(i8, i8) unnamed_addr #2

; Function Attrs: nounwind readnone
declare { i16, i1 } @llvm.smul.with.overflow.i16(i16, i16) unnamed_addr #2

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.smul.with.overflow.i32(i32, i32) unnamed_addr #2

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) unnamed_addr #2

; Function Attrs: nounwind readnone
declare { i8, i1 } @llvm.umul.with.overflow.i8(i8, i8) unnamed_addr #2

; Function Attrs: nounwind readnone
declare { i16, i1 } @llvm.umul.with.overflow.i16(i16, i16) unnamed_addr #2

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) unnamed_addr #2

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) unnamed_addr #2

; Function Attrs: nounwind readnone
declare i1 @llvm.expect.i1(i1, i1) unnamed_addr #2

; Function Attrs: nounwind readonly
declare float @llvm.copysign.f32(float, float) unnamed_addr #3

; Function Attrs: nounwind readonly
declare double @llvm.copysign.f64(double, double) unnamed_addr #3

; Function Attrs: nounwind readonly
declare float @llvm.round.f32(float) unnamed_addr #3

; Function Attrs: nounwind readonly
declare double @llvm.round.f64(double) unnamed_addr #3

; Function Attrs: uwtable
define internal void @_ZN10add_vector20h576a8fbbc598dfc4laa4v0.0E(i32 addrspace(1)*, i32 addrspace(1)*) unnamed_addr #4 {
entry-block:
  %x = alloca i32*
  %y = alloca i32*
  %i = alloca i32
  %lx = alloca i32*
  %ly = alloca i32*
  %castx = addrspacecast i32 addrspace(1)* %0 to i32*
  %casty = addrspacecast i32 addrspace(1)* %1 to i32*
  store i32* %castx, i32** %x
  store i32* %casty, i32** %y
  %2 = call i32 @llvm.nvvm.read.ptx.sreg.tid.x()
  store i32 %2, i32* %i
  %3 = load i32** %x
  %4 = load i32* %i
  %5 = sext i32 %4 to i64
  %6 = call i32* @"_ZN3ptr29_$RP$mut$x20T.RawPtr$LT$T$GT$6offset20hfbc25d526e97e8a67aa4v0.0E"(i32* %3, i64 %5)
  store i32* %6, i32** %lx
  %7 = load i32** %y
  %8 = load i32* %i
  %9 = sext i32 %8 to i64
  %10 = call i32* @"_ZN3ptr29_$RP$mut$x20T.RawPtr$LT$T$GT$6offset20hfbc25d526e97e8a67aa4v0.0E"(i32* %7, i64 %9)
  store i32* %10, i32** %ly
  %11 = load i32** %lx
  %12 = load i32** %ly
  %13 = load i32* %11
  store i32 %13, i32* %12
  ret void
}

!nvvm.annotations = !{!0}
!0 = metadata !{void (i32 addrspace(1)*,
                      i32 addrspace(1)*
                      )* @_ZN10add_vector20h576a8fbbc598dfc4laa4v0.0E, metadata !"_ZN10add_vector20h576a8fbbc598dfc4laa4v0.0E", i32 1}

; Function Attrs: inlinehint uwtable
define internal i32* @"_ZN3ptr29_$RP$mut$x20T.RawPtr$LT$T$GT$6offset20hfbc25d526e97e8a67aa4v0.0E"(i32*, i64) unnamed_addr #5 {
entry-block:
  %self = alloca i32*
  %count = alloca i64
  %2 = alloca i32*
  store i32* %0, i32** %self
  store i64 %1, i64* %count
  %3 = load i32** %self
  %4 = load i64* %count
  %5 = call i32* @_ZN10intrinsics6offset20h0bea0fbe0e4e3513wba4v0.0E(i32* %3, i64 %4)
  store i32* %5, i32** %2
  %6 = load i32** %2
  ret i32* %6
}

; Function Attrs: alwaysinline
define internal i32* @_ZN10intrinsics6offset20h0bea0fbe0e4e3513wba4v0.0E(i32*, i64) unnamed_addr #6 {
entry-block:
  %2 = getelementptr inbounds i32* %0, i64 %1
  ret i32* %2
}

attributes #0 = { nounwind }
attributes #1 = { noreturn nounwind }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind readonly }
attributes #4 = { uwtable }
attributes #5 = { inlinehint uwtable }
attributes #6 = { alwaysinline }
