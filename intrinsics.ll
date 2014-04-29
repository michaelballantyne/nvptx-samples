; ModuleID = 'kernel.rs'
<<<<<<< HEAD
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"struct.std::fmt::Argument[#1]" = type { void (%"enum.std::result::Result<(),std::io::IoError>[#1]"*, %"enum.std::any::Void[#1]"*, %"struct.std::fmt::Formatter[#1]"*)*, %"enum.std::any::Void[#1]"* }
%"enum.std::result::Result<(),std::io::IoError>[#1]" = type { i8, [7 x i8], [4 x i64] }
%"struct.std::fmt::Formatter[#1]" = type { i64, i32, i8, %"enum.std::option::Option<uint>[#1]", %"enum.std::option::Option<uint>[#1]", { void (i8*)**, i8* }, %"struct.std::slice::Items<std::fmt::Argument>[#1]", { %"struct.std::fmt::Argument[#1]"*, i64 } }
%"enum.std::option::Option<uint>[#1]" = type { i8, [7 x i8], [1 x i64] }
%"struct.std::slice::Items<std::fmt::Argument>[#1]" = type { %"struct.std::fmt::Argument[#1]"*, %"struct.std::fmt::Argument[#1]"*, %"struct.std::kinds::marker::ContravariantLifetime[#1]" }
%"struct.std::kinds::marker::ContravariantLifetime[#1]" = type {}
%"enum.std::any::Void[#1]" = type {}
%"struct.std::fmt::Arguments[#1]" = type { { %"enum.std::fmt::rt::Piece[#1]"*, i64 }, { %"struct.std::fmt::Argument[#1]"*, i64 } }
%"enum.std::fmt::rt::Piece[#1]" = type { i8, [7 x i8], [9 x i64] }
%"struct.std::sync::atomics::AtomicUint[#1]" = type { %"struct.std::ty::Unsafe<uint>[#1]", %"struct.std::kinds::marker::NoCopy[#1]" }
%"struct.std::ty::Unsafe<uint>[#1]" = type { i64, %"struct.std::kinds::marker::InvariantType<uint>[#1]" }
%"struct.std::kinds::marker::InvariantType<uint>[#1]" = type {}
%"struct.std::kinds::marker::NoCopy[#1]" = type {}

@str1450 = internal constant [12 x i8] c"call kernel\00"
@_ZN4main15__STATIC_FMTSTR20h9e92af8d2c076b57naa4v0.0E = internal unnamed_addr constant { { i8, { i8*, i64 }, [56 x i8] } } { { i8, { i8*, i64 }, [56 x i8] } { i8 0, { i8*, i64 } { i8* getelementptr inbounds ([12 x i8]* @str1450, i32 0, i32 0), i64 11 }, [56 x i8] undef } }
=======
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v32:32:32-v64:64:64-v128:128:128-n16:32:64"
target triple = "nvptx64-nvidia-cuda"
>>>>>>> c8e2e0b8f6dea37145646ddd374a4717e2f51b49

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

<<<<<<< HEAD
; Function Attrs: nounwind readnone
declare i32 @llvm.nvvm.read.ptx.sreg.ctaid.x() unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32 @llvm.nvvm.read.ptx.sreg.ntid.x() unnamed_addr #2

=======
>>>>>>> c8e2e0b8f6dea37145646ddd374a4717e2f51b49
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
<<<<<<< HEAD
define internal void @_ZN4main20h53979c530cc0b992jaa4v0.0E() unnamed_addr #4 {
entry-block:
  %match = alloca {}
  %__args_vec = alloca { %"struct.std::fmt::Argument[#1]"*, i64 }
  %__args = alloca %"struct.std::fmt::Arguments[#1]"
  %__adjust = alloca { %"enum.std::fmt::rt::Piece[#1]"*, i64 }
  %__adjust1 = alloca { %"struct.std::fmt::Argument[#1]"*, i64 }
  br label %case_body

case_body:                                        ; preds = %entry-block
  %0 = getelementptr inbounds { %"struct.std::fmt::Argument[#1]"*, i64 }* %__args_vec, i32 0, i32 0
  store %"struct.std::fmt::Argument[#1]"* null, %"struct.std::fmt::Argument[#1]"** %0
  %1 = getelementptr inbounds { %"struct.std::fmt::Argument[#1]"*, i64 }* %__args_vec, i32 0, i32 1
  store i64 0, i64* %1
  %2 = getelementptr inbounds { %"enum.std::fmt::rt::Piece[#1]"*, i64 }* %__adjust, i32 0, i32 0
  store %"enum.std::fmt::rt::Piece[#1]"* getelementptr inbounds ([1 x %"enum.std::fmt::rt::Piece[#1]"]* bitcast ({ { i8, { i8*, i64 }, [56 x i8] } }* @_ZN4main15__STATIC_FMTSTR20h9e92af8d2c076b57naa4v0.0E to [1 x %"enum.std::fmt::rt::Piece[#1]"]*), i32 0, i32 0), %"enum.std::fmt::rt::Piece[#1]"** %2
  %3 = getelementptr inbounds { %"enum.std::fmt::rt::Piece[#1]"*, i64 }* %__adjust, i32 0, i32 1
  store i64 1, i64* %3
  %4 = getelementptr inbounds { %"struct.std::fmt::Argument[#1]"*, i64 }* %__args_vec, i32 0, i32 0
  %5 = load %"struct.std::fmt::Argument[#1]"** %4
  %6 = getelementptr inbounds { %"struct.std::fmt::Argument[#1]"*, i64 }* %__args_vec, i32 0, i32 1
  %7 = load i64* %6
  %8 = getelementptr inbounds { %"struct.std::fmt::Argument[#1]"*, i64 }* %__adjust1, i32 0, i32 0
  store %"struct.std::fmt::Argument[#1]"* %5, %"struct.std::fmt::Argument[#1]"** %8
  %9 = getelementptr inbounds { %"struct.std::fmt::Argument[#1]"*, i64 }* %__adjust1, i32 0, i32 1
  store i64 %7, i64* %9
  call void @"_ZN3fmt22Arguments$LT$$x27a$GT$3new20h09f9aca5470e6033Bca4v0.0E"(%"struct.std::fmt::Arguments[#1]"* noalias nocapture sret %__args, { %"enum.std::fmt::rt::Piece[#1]"*, i64 }* nocapture %__adjust, { %"struct.std::fmt::Argument[#1]"*, i64 }* nocapture %__adjust1)
  call void @_ZN2io5stdio12println_args20hd17a5aab53a7a6bc1BM5v0.10E(%"struct.std::fmt::Arguments[#1]"* nocapture %__args)
  br label %join

join:                                             ; preds = %case_body
  ret void
}

define i64 @main(i64, i8**) unnamed_addr {
top:
  %2 = call i64 @_ZN10lang_start20he1aac0a0fe09c892Tud5v0.10E(i8* bitcast (void ()* @_ZN4main20h53979c530cc0b992jaa4v0.0E to i8*), i64 %0, i8** %1)
  ret i64 %2
}

declare i64 @_ZN10lang_start20he1aac0a0fe09c892Tud5v0.10E(i8*, i64, i8**) unnamed_addr

; Function Attrs: inlinehint uwtable
define internal void @"_ZN3fmt22Arguments$LT$$x27a$GT$3new20h09f9aca5470e6033Bca4v0.0E"(%"struct.std::fmt::Arguments[#1]"* noalias sret, { %"enum.std::fmt::rt::Piece[#1]"*, i64 }* noalias nocapture, { %"struct.std::fmt::Argument[#1]"*, i64 }* noalias nocapture) unnamed_addr #5 {
entry-block:
  %arg = alloca { %"enum.std::fmt::rt::Piece[#1]"*, i64 }
  %__adjust = alloca { %"struct.std::fmt::Argument[#1]"*, i64 }
  %3 = getelementptr inbounds %"struct.std::fmt::Arguments[#1]"* %0, i32 0, i32 0
  %4 = bitcast { %"enum.std::fmt::rt::Piece[#1]"*, i64 }* %1 to i8*
  %5 = bitcast { %"enum.std::fmt::rt::Piece[#1]"*, i64 }* %arg to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %4, i64 16, i32 8, i1 false)
  call void @_ZN4cast9transmute20h586a1db4184da4513ca4v0.0E({ %"enum.std::fmt::rt::Piece[#1]"*, i64 }* noalias nocapture sret %3, { %"enum.std::fmt::rt::Piece[#1]"*, i64 }* nocapture %arg)
  %6 = getelementptr inbounds %"struct.std::fmt::Arguments[#1]"* %0, i32 0, i32 1
  %7 = getelementptr inbounds { %"struct.std::fmt::Argument[#1]"*, i64 }* %2, i32 0, i32 0
  %8 = load %"struct.std::fmt::Argument[#1]"** %7
  %9 = getelementptr inbounds { %"struct.std::fmt::Argument[#1]"*, i64 }* %2, i32 0, i32 1
  %10 = load i64* %9
  %11 = getelementptr inbounds { %"struct.std::fmt::Argument[#1]"*, i64 }* %__adjust, i32 0, i32 0
  store %"struct.std::fmt::Argument[#1]"* %8, %"struct.std::fmt::Argument[#1]"** %11
  %12 = getelementptr inbounds { %"struct.std::fmt::Argument[#1]"*, i64 }* %__adjust, i32 0, i32 1
  store i64 %10, i64* %12
  %13 = bitcast { %"struct.std::fmt::Argument[#1]"*, i64 }* %__adjust to i8*
  %14 = bitcast { %"struct.std::fmt::Argument[#1]"*, i64 }* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %13, i64 16, i32 8, i1 false)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN4cast9transmute20h586a1db4184da4513ca4v0.0E({ %"enum.std::fmt::rt::Piece[#1]"*, i64 }* noalias sret, { %"enum.std::fmt::rt::Piece[#1]"*, i64 }* noalias nocapture) unnamed_addr #5 {
entry-block:
  %arg = alloca { %"enum.std::fmt::rt::Piece[#1]"*, i64 }
  %2 = bitcast { %"enum.std::fmt::rt::Piece[#1]"*, i64 }* %1 to i8*
  %3 = bitcast { %"enum.std::fmt::rt::Piece[#1]"*, i64 }* %arg to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %2, i64 16, i32 8, i1 false)
  %4 = bitcast { %"enum.std::fmt::rt::Piece[#1]"*, i64 }* %0 to i8*
  %5 = bitcast { %"enum.std::fmt::rt::Piece[#1]"*, i64 }* %arg to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 16, i32 1, i1 false)
  ret void
}

declare void @_ZN2io5stdio12println_args20hd17a5aab53a7a6bc1BM5v0.10E(%"struct.std::fmt::Arguments[#1]"* nocapture) unnamed_addr

; Function Attrs: uwtable
define internal void @_ZN10add_vector20hb3fcd2b93cd07d6e7aa4v0.0E(float*) unnamed_addr #4 {
entry-block:
  %x = alloca float*
  %atom = alloca %"struct.std::sync::atomics::AtomicUint[#1]"
  %__llret = alloca i64
  %1 = alloca i8
  %id = alloca i32
  %j = alloca i32
  %2 = alloca i32
  %3 = alloca i32
  %i = alloca i32
  %lx = alloca float*
  %4 = alloca i64
  %5 = alloca i8
  store float* %0, float** %x
  %6 = call %"struct.std::sync::atomics::AtomicUint[#1]" @_ZN4sync7atomics10AtomicUint3new20h242cbbf5deef0d25M2F5v0.10E(i64 1)
  store %"struct.std::sync::atomics::AtomicUint[#1]" %6, %"struct.std::sync::atomics::AtomicUint[#1]"* %atom
  store i8 4, i8* %1
  %7 = load i8* %1
  %8 = call i64 @_ZN4sync7atomics10AtomicUint9fetch_add20h8f28dc0218566323rda4v0.0E(%"struct.std::sync::atomics::AtomicUint[#1]"* %atom, i64 1, i8 %7)
  store i64 %8, i64* %__llret
  %9 = call i32 @llvm.nvvm.read.ptx.sreg.tid.x()
  store i32 %9, i32* %id
  %10 = call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x()
  store i32 %10, i32* %2
  %11 = load i32* %2
  %12 = call i32 @llvm.nvvm.read.ptx.sreg.ntid.x()
  store i32 %12, i32* %3
  %13 = load i32* %3
  %14 = mul i32 %11, %13
  store i32 %14, i32* %j
  %15 = load i32* %id
  %16 = load i32* %j
  %17 = add i32 %15, %16
  store i32 %17, i32* %i
  %18 = load float** %x
  %19 = load i32* %i
  %20 = sext i32 %19 to i64
  %21 = call float* @"_ZN3ptr29_$RP$mut$x20T.RawPtr$LT$T$GT$6offset20h098a95d698c42396Wfa4v0.0E"(float* %18, i64 %20)
  store float* %21, float** %lx
  %22 = load float** %lx
  store i8 4, i8* %5
  %23 = load i8* %5
  %24 = call i64 @_ZN4sync7atomics10AtomicUint4load20h30cbb8b47b417f65Aga4v0.0E(%"struct.std::sync::atomics::AtomicUint[#1]"* %atom, i8 %23)
  store i64 %24, i64* %4
  %25 = load i64* %4
  %26 = uitofp i64 %25 to float
  %27 = load float* %22
  %28 = fadd float %27, %26
  %29 = load float** %lx
  store float %28, float* %29
  ret void
}

declare %"struct.std::sync::atomics::AtomicUint[#1]" @_ZN4sync7atomics10AtomicUint3new20h242cbbf5deef0d25M2F5v0.10E(i64) unnamed_addr

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4sync7atomics10AtomicUint9fetch_add20h8f28dc0218566323rda4v0.0E(%"struct.std::sync::atomics::AtomicUint[#1]"* nocapture, i64, i8) unnamed_addr #5 {
entry-block:
  %self = alloca %"struct.std::sync::atomics::AtomicUint[#1]"*
  %val = alloca i64
  %order = alloca i8
  %3 = alloca i64*
  store %"struct.std::sync::atomics::AtomicUint[#1]"* %0, %"struct.std::sync::atomics::AtomicUint[#1]"** %self
  store i64 %1, i64* %val
  store i8 %2, i8* %order
  %4 = load %"struct.std::sync::atomics::AtomicUint[#1]"** %self
  %5 = getelementptr inbounds %"struct.std::sync::atomics::AtomicUint[#1]"* %4, i32 0, i32 0
  %6 = call i64* @"_ZN2ty15Unsafe$LT$T$GT$3get20haef774a63803fe95Ifa4v0.0E"(%"struct.std::ty::Unsafe<uint>[#1]"* %5)
  store i64* %6, i64** %3
  %7 = load i64** %3
  %8 = load i64* %val
  %9 = load i8* %order
  %10 = call i64 @_ZN4sync7atomics10atomic_add20haa1608c906d1918cQda4v0.0E(i64* %7, i64 %8, i8 %9)
  ret i64 %10
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4sync7atomics10atomic_add20haa1608c906d1918cQda4v0.0E(i64*, i64, i8) unnamed_addr #5 {
entry-block:
  %__make_return_pointer = alloca i64
  %dst = alloca i64*
  %val = alloca i64
  %order = alloca i8
  store i64* %0, i64** %dst
  store i64 %1, i64* %val
  store i8 %2, i8* %order
  %3 = load i8* %order, !range !0
  switch i8 %3, label %match_else [
    i8 2, label %match_case
    i8 1, label %match_case5
    i8 3, label %match_case6
    i8 0, label %match_case7
  ]

case_body:                                        ; preds = %match_case
  %4 = load i64** %dst
  %5 = load i64* %val
  %6 = call i64 @_ZN10intrinsics15atomic_xadd_acq20h5c60aff8905e889cAea4v0.0E(i64* %4, i64 %5)
  store i64 %6, i64* %__make_return_pointer
  br label %join

case_body1:                                       ; preds = %match_case5
  %7 = load i64** %dst
  %8 = load i64* %val
  %9 = call i64 @_ZN10intrinsics15atomic_xadd_rel20h80d5054ecd2ddabeOea4v0.0E(i64* %7, i64 %8)
  store i64 %9, i64* %__make_return_pointer
  br label %join

case_body2:                                       ; preds = %match_case6
  %10 = load i64** %dst
  %11 = load i64* %val
  %12 = call i64 @_ZN10intrinsics18atomic_xadd_acqrel20hf5d280f58c8c3e7d2ea4v0.0E(i64* %10, i64 %11)
  store i64 %12, i64* %__make_return_pointer
  br label %join

case_body3:                                       ; preds = %match_case7
  %13 = load i64** %dst
  %14 = load i64* %val
  %15 = call i64 @_ZN10intrinsics19atomic_xadd_relaxed20hdd22321776badd3bgfa4v0.0E(i64* %13, i64 %14)
  store i64 %15, i64* %__make_return_pointer
  br label %join

case_body4:                                       ; preds = %match_else
  %16 = load i64** %dst
  %17 = load i64* %val
  %18 = call i64 @_ZN10intrinsics11atomic_xadd20h50e07bb22a7be469ufa4v0.0E(i64* %16, i64 %17)
  store i64 %18, i64* %__make_return_pointer
  br label %join

match_else:                                       ; preds = %entry-block
  br label %case_body4

match_case:                                       ; preds = %entry-block
  br label %case_body

match_case5:                                      ; preds = %entry-block
  br label %case_body1

match_case6:                                      ; preds = %entry-block
  br label %case_body2

match_case7:                                      ; preds = %entry-block
  br label %case_body3

join:                                             ; preds = %case_body4, %case_body3, %case_body2, %case_body1, %case_body
  %19 = load i64* %__make_return_pointer
  ret i64 %19
}

; Function Attrs: alwaysinline
define internal i64 @_ZN10intrinsics15atomic_xadd_acq20h5c60aff8905e889cAea4v0.0E(i64*, i64) unnamed_addr #6 {
entry-block:
  %2 = atomicrmw add i64* %0, i64 %1 acquire
  ret i64 %2
}

; Function Attrs: alwaysinline
define internal i64 @_ZN10intrinsics15atomic_xadd_rel20h80d5054ecd2ddabeOea4v0.0E(i64*, i64) unnamed_addr #6 {
entry-block:
  %2 = atomicrmw add i64* %0, i64 %1 release
  ret i64 %2
}

; Function Attrs: alwaysinline
define internal i64 @_ZN10intrinsics18atomic_xadd_acqrel20hf5d280f58c8c3e7d2ea4v0.0E(i64*, i64) unnamed_addr #6 {
entry-block:
  %2 = atomicrmw add i64* %0, i64 %1 acq_rel
  ret i64 %2
}

; Function Attrs: alwaysinline
define internal i64 @_ZN10intrinsics19atomic_xadd_relaxed20hdd22321776badd3bgfa4v0.0E(i64*, i64) unnamed_addr #6 {
entry-block:
  %2 = atomicrmw add i64* %0, i64 %1 monotonic
  ret i64 %2
}

; Function Attrs: alwaysinline
define internal i64 @_ZN10intrinsics11atomic_xadd20h50e07bb22a7be469ufa4v0.0E(i64*, i64) unnamed_addr #6 {
entry-block:
  %2 = atomicrmw add i64* %0, i64 %1 seq_cst
  ret i64 %2
}

; Function Attrs: inlinehint uwtable
define internal i64* @"_ZN2ty15Unsafe$LT$T$GT$3get20haef774a63803fe95Ifa4v0.0E"(%"struct.std::ty::Unsafe<uint>[#1]"* nocapture) unnamed_addr #5 {
entry-block:
  %self = alloca %"struct.std::ty::Unsafe<uint>[#1]"*
  store %"struct.std::ty::Unsafe<uint>[#1]"* %0, %"struct.std::ty::Unsafe<uint>[#1]"** %self
  %1 = load %"struct.std::ty::Unsafe<uint>[#1]"** %self
  %2 = getelementptr inbounds %"struct.std::ty::Unsafe<uint>[#1]"* %1, i32 0, i32 0
  %3 = call i64* @_ZN4cast9transmute20h8d317d58264a29823ca4v0.0E(i64* %2)
  ret i64* %3
}

; Function Attrs: inlinehint uwtable
define internal i64* @_ZN4cast9transmute20h8d317d58264a29823ca4v0.0E(i64*) unnamed_addr #5 {
entry-block:
  %thing = alloca i64*
  store i64* %0, i64** %thing
  %1 = load i64** %thing
  %2 = call i64* @_ZN10intrinsics9transmute20h046fe208730ec3b0hda4v0.0E(i64* %1)
  ret i64* %2
}

; Function Attrs: alwaysinline
define internal i64* @_ZN10intrinsics9transmute20h046fe208730ec3b0hda4v0.0E(i64*) unnamed_addr #6 {
entry-block:
  ret i64* %0
}

; Function Attrs: inlinehint uwtable
define internal float* @"_ZN3ptr29_$RP$mut$x20T.RawPtr$LT$T$GT$6offset20h098a95d698c42396Wfa4v0.0E"(float*, i64) unnamed_addr #5 {
entry-block:
  %self = alloca float*
  %count = alloca i64
  %2 = alloca float*
  store float* %0, float** %self
  store i64 %1, i64* %count
  %3 = load float** %self
  %4 = load i64* %count
  %5 = call float* @_ZN10intrinsics6offset20hfabb58161d883b30lga4v0.0E(float* %3, i64 %4)
  store float* %5, float** %2
  %6 = load float** %2
  ret float* %6
}

; Function Attrs: alwaysinline
define internal float* @_ZN10intrinsics6offset20hfabb58161d883b30lga4v0.0E(float*, i64) unnamed_addr #6 {
entry-block:
  %2 = getelementptr inbounds float* %0, i64 %1
  ret float* %2
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4sync7atomics10AtomicUint4load20h30cbb8b47b417f65Aga4v0.0E(%"struct.std::sync::atomics::AtomicUint[#1]"* nocapture, i8) unnamed_addr #5 {
entry-block:
  %self = alloca %"struct.std::sync::atomics::AtomicUint[#1]"*
  %order = alloca i8
  %2 = alloca i64*
  store %"struct.std::sync::atomics::AtomicUint[#1]"* %0, %"struct.std::sync::atomics::AtomicUint[#1]"** %self
  store i8 %1, i8* %order
  %3 = load %"struct.std::sync::atomics::AtomicUint[#1]"** %self
  %4 = getelementptr inbounds %"struct.std::sync::atomics::AtomicUint[#1]"* %3, i32 0, i32 0
  %5 = call i64* @"_ZN2ty15Unsafe$LT$T$GT$3get20haef774a63803fe95Ifa4v0.0E"(%"struct.std::ty::Unsafe<uint>[#1]"* %4)
  store i64* %5, i64** %2
  %6 = load i64** %2
  %7 = load i8* %order
  %8 = call i64 @_ZN4sync7atomics11atomic_load20h6aa202f35aa4e78eYga4v0.0E(i64* %6, i8 %7)
  ret i64 %8
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4sync7atomics11atomic_load20h6aa202f35aa4e78eYga4v0.0E(i64*, i8) unnamed_addr #5 {
entry-block:
  %__make_return_pointer = alloca i64
  %dst = alloca i64*
  %order = alloca i8
  store i64* %0, i64** %dst
  store i8 %1, i8* %order
  %2 = load i8* %order, !range !0
  switch i8 %2, label %match_else [
    i8 2, label %match_case
    i8 0, label %match_case3
  ]

case_body:                                        ; preds = %match_case
  %3 = load i64** %dst
  %4 = call i64 @_ZN10intrinsics15atomic_load_acq20h61ad9f3105d1b135rha4v0.0E(i64* %3)
  store i64 %4, i64* %__make_return_pointer
  br label %join

case_body1:                                       ; preds = %match_case3
  %5 = load i64** %dst
  %6 = call i64 @_ZN10intrinsics19atomic_load_relaxed20hbcb547e0299bfdefBha4v0.0E(i64* %5)
  store i64 %6, i64* %__make_return_pointer
  br label %join

case_body2:                                       ; preds = %match_else
  %7 = load i64** %dst
  %8 = call i64 @_ZN10intrinsics11atomic_load20h056e7758d9aed947Lha4v0.0E(i64* %7)
  store i64 %8, i64* %__make_return_pointer
  br label %join

match_else:                                       ; preds = %entry-block
  br label %case_body2

match_case:                                       ; preds = %entry-block
  br label %case_body

match_case3:                                      ; preds = %entry-block
  br label %case_body1

join:                                             ; preds = %case_body2, %case_body1, %case_body
  %9 = load i64* %__make_return_pointer
  ret i64 %9
}

; Function Attrs: alwaysinline
define internal i64 @_ZN10intrinsics15atomic_load_acq20h61ad9f3105d1b135rha4v0.0E(i64*) unnamed_addr #6 {
entry-block:
  %1 = load atomic volatile i64* %0 acquire, align 8
  ret i64 %1
}

; Function Attrs: alwaysinline
define internal i64 @_ZN10intrinsics19atomic_load_relaxed20hbcb547e0299bfdefBha4v0.0E(i64*) unnamed_addr #6 {
entry-block:
  %1 = load atomic volatile i64* %0 monotonic, align 8
  ret i64 %1
}

; Function Attrs: alwaysinline
define internal i64 @_ZN10intrinsics11atomic_load20h056e7758d9aed947Lha4v0.0E(i64*) unnamed_addr #6 {
entry-block:
  %1 = load atomic volatile i64* %0 seq_cst, align 8
  ret i64 %1
=======
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
>>>>>>> c8e2e0b8f6dea37145646ddd374a4717e2f51b49
}

attributes #0 = { nounwind }
attributes #1 = { noreturn nounwind }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind readonly }
attributes #4 = { uwtable }
attributes #5 = { inlinehint uwtable }
attributes #6 = { alwaysinline }
<<<<<<< HEAD

!0 = metadata !{i8 0, i8 5}
=======
>>>>>>> c8e2e0b8f6dea37145646ddd374a4717e2f51b49
