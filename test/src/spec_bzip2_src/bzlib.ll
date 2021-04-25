; ModuleID = 'bzlib.c'
source_filename = "bzlib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.bz_stream = type { i8*, i32, i32, i32, i8*, i32, i32, i32, i8*, i8* (i8*, i32, i32)*, void (i8*, i8*)*, i8* }
%struct.EState = type { %struct.bz_stream*, i32, i32, i32, i32*, i32*, i32*, i32, i32*, i8*, i16*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [258 x i32], [18002 x i8], [18002 x i8], [6 x [258 x i8]], [6 x [258 x i32]], [6 x [258 x i32]], [258 x [4 x i32]] }
%struct.DState = type { %struct.bz_stream*, i32, i8, i32, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, [256 x i32], i32, [257 x i32], [257 x i32], i32*, i16*, i8*, i32, i32, i32, i32, i32, [256 x i8], [16 x i8], [256 x i8], [4096 x i8], [16 x i32], [18002 x i8], [18002 x i8], [6 x [258 x i8]], [6 x [258 x i32]], [6 x [258 x i32]], [6 x [258 x i32]], [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32* }
%struct.bzFile = type { %struct._IO_FILE*, [5000 x i8], i32, i8, %struct.bz_stream, i32, i8 }

@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [443 x i8] c"\0A\0Abzip2/libbzip2: internal error number %d.\0AThis is a bug in bzip2/libbzip2, %s.\0APlease report it to me at: jseward@bzip.org.  If this happened\0Awhen you were using some program which uses libbzip2 as a\0Acomponent, you should also report this bug to the author(s)\0Aof that program.  Please make an effort to report this bug;\0Atimely and accurate bug reports eventually lead to higher\0Aquality software.  Thanks.  Julian Seward, 15 February 2005.\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [1057 x i8] c"\0A*** A special note about internal error number 1007 ***\0A\0AExperience suggests that a common cause of i.e. 1007\0Ais unreliable memory or other hardware.  The 1007 assertion\0Ajust happens to cross-check the results of huge numbers of\0Amemory reads/writes, and so acts (unintendedly) as a stress\0Atest of your memory system.\0A\0AI suggest the following: try compressing the file again,\0Apossibly monitoring progress in detail with the -vv flag.\0A\0A* If the error cannot be reproduced, and/or happens at different\0A  points in compression, you may have a flaky memory system.\0A  Try a memory-test program.  I have used Memtest86\0A  (www.memtest86.com).  At the time of writing it is free (GPLd).\0A  Memtest86 tests memory much more thorougly than your BIOSs\0A  power-on test, and may find failures that the BIOS doesn't.\0A\0A* If the error can be repeatably reproduced, this is a bug in\0A  bzip2, and I would very much like to hear about it.  Please\0A  let me know, and, ideally, save a copy of the file causing the\0A  problem -- without which I will be unable to investigate it.\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c" {0x%08x, 0x%08x}\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"\0A    combined CRCs: stored = 0x%08x, computed = 0x%08x\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"1.0.3, 15-Feb-2005\00", align 1
@stdin = external dso_local global %struct._IO_FILE*, align 8
@stdout = external dso_local global %struct._IO_FILE*, align 8
@bzerrorstrings = internal global [16 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0)], align 16
@BZ2_crc32Table = external dso_local global [256 x i32], align 16
@BZ2_rNums = external dso_local global [512 x i32], align 16
@.str.6 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"SEQUENCE_ERROR\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"PARAM_ERROR\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"MEM_ERROR\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"DATA_ERROR\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"DATA_ERROR_MAGIC\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"IO_ERROR\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"UNEXPECTED_EOF\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"OUTBUFF_FULL\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"CONFIG_ERROR\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"???\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BZ2_bz__AssertH__fail(i32 %errcode) #0 {
entry:
  %errcode.addr = alloca i32, align 4
  store i32 %errcode, i32* %errcode.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1 = load i32, i32* %errcode.addr, align 4
  %call = call i8* @BZ2_bzlibVersion()
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([443 x i8], [443 x i8]* @.str, i64 0, i64 0), i32 %1, i8* %call)
  %2 = load i32, i32* %errcode.addr, align 4
  %cmp = icmp eq i32 %2, 1007
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([1057 x i8], [1057 x i8]* @.str.1, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @exit(i32 3) #7
  unreachable
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @BZ2_bzlibVersion() #0 {
entry:
  ret i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0)
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BZ2_bzCompressInit(%struct.bz_stream* %strm, i32 %blockSize100k, i32 %verbosity, i32 %workFactor) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca %struct.bz_stream*, align 8
  %blockSize100k.addr = alloca i32, align 4
  %verbosity.addr = alloca i32, align 4
  %workFactor.addr = alloca i32, align 4
  %n = alloca i32, align 4
  %s = alloca %struct.EState*, align 8
  store %struct.bz_stream* %strm, %struct.bz_stream** %strm.addr, align 8
  store i32 %blockSize100k, i32* %blockSize100k.addr, align 4
  store i32 %verbosity, i32* %verbosity.addr, align 4
  store i32 %workFactor, i32* %workFactor.addr, align 4
  %call = call i32 @bz_config_ok()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -9, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %0 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %cmp = icmp eq %struct.bz_stream* %0, null
  br i1 %cmp, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %1 = load i32, i32* %blockSize100k.addr, align 4
  %cmp1 = icmp slt i32 %1, 1
  br i1 %cmp1, label %if.then8, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load i32, i32* %blockSize100k.addr, align 4
  %cmp3 = icmp sgt i32 %2, 9
  br i1 %cmp3, label %if.then8, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %3 = load i32, i32* %workFactor.addr, align 4
  %cmp5 = icmp slt i32 %3, 0
  br i1 %cmp5, label %if.then8, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false4
  %4 = load i32, i32* %workFactor.addr, align 4
  %cmp7 = icmp sgt i32 %4, 250
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %lor.lhs.false6, %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %if.end
  store i32 -2, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %lor.lhs.false6
  %5 = load i32, i32* %workFactor.addr, align 4
  %cmp10 = icmp eq i32 %5, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end9
  store i32 30, i32* %workFactor.addr, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end9
  %6 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %bzalloc = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %6, i32 0, i32 9
  %7 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** %bzalloc, align 8
  %cmp13 = icmp eq i8* (i8*, i32, i32)* %7, null
  br i1 %cmp13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end12
  %8 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %bzalloc15 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %8, i32 0, i32 9
  store i8* (i8*, i32, i32)* @default_bzalloc, i8* (i8*, i32, i32)** %bzalloc15, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end12
  %9 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %bzfree = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %9, i32 0, i32 10
  %10 = load void (i8*, i8*)*, void (i8*, i8*)** %bzfree, align 8
  %cmp17 = icmp eq void (i8*, i8*)* %10, null
  br i1 %cmp17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end16
  %11 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %bzfree19 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %11, i32 0, i32 10
  store void (i8*, i8*)* @default_bzfree, void (i8*, i8*)** %bzfree19, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end16
  %12 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %bzalloc21 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %12, i32 0, i32 9
  %13 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** %bzalloc21, align 8
  %14 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %opaque = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %14, i32 0, i32 11
  %15 = load i8*, i8** %opaque, align 8
  %call22 = call i8* %13(i8* %15, i32 55768, i32 1)
  %16 = bitcast i8* %call22 to %struct.EState*
  store %struct.EState* %16, %struct.EState** %s, align 8
  %17 = load %struct.EState*, %struct.EState** %s, align 8
  %cmp23 = icmp eq %struct.EState* %17, null
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end20
  store i32 -3, i32* %retval, align 4
  br label %return

if.end25:                                         ; preds = %if.end20
  %18 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %19 = load %struct.EState*, %struct.EState** %s, align 8
  %strm26 = getelementptr inbounds %struct.EState, %struct.EState* %19, i32 0, i32 0
  store %struct.bz_stream* %18, %struct.bz_stream** %strm26, align 8
  %20 = load %struct.EState*, %struct.EState** %s, align 8
  %arr1 = getelementptr inbounds %struct.EState, %struct.EState* %20, i32 0, i32 4
  store i32* null, i32** %arr1, align 8
  %21 = load %struct.EState*, %struct.EState** %s, align 8
  %arr2 = getelementptr inbounds %struct.EState, %struct.EState* %21, i32 0, i32 5
  store i32* null, i32** %arr2, align 8
  %22 = load %struct.EState*, %struct.EState** %s, align 8
  %ftab = getelementptr inbounds %struct.EState, %struct.EState* %22, i32 0, i32 6
  store i32* null, i32** %ftab, align 8
  %23 = load i32, i32* %blockSize100k.addr, align 4
  %mul = mul nsw i32 100000, %23
  store i32 %mul, i32* %n, align 4
  %24 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %bzalloc27 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %24, i32 0, i32 9
  %25 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** %bzalloc27, align 8
  %26 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %opaque28 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %26, i32 0, i32 11
  %27 = load i8*, i8** %opaque28, align 8
  %28 = load i32, i32* %n, align 4
  %conv = sext i32 %28 to i64
  %mul29 = mul i64 %conv, 4
  %conv30 = trunc i64 %mul29 to i32
  %call31 = call i8* %25(i8* %27, i32 %conv30, i32 1)
  %29 = bitcast i8* %call31 to i32*
  %30 = load %struct.EState*, %struct.EState** %s, align 8
  %arr132 = getelementptr inbounds %struct.EState, %struct.EState* %30, i32 0, i32 4
  store i32* %29, i32** %arr132, align 8
  %31 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %bzalloc33 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %31, i32 0, i32 9
  %32 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** %bzalloc33, align 8
  %33 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %opaque34 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %33, i32 0, i32 11
  %34 = load i8*, i8** %opaque34, align 8
  %35 = load i32, i32* %n, align 4
  %add = add nsw i32 %35, 34
  %conv35 = sext i32 %add to i64
  %mul36 = mul i64 %conv35, 4
  %conv37 = trunc i64 %mul36 to i32
  %call38 = call i8* %32(i8* %34, i32 %conv37, i32 1)
  %36 = bitcast i8* %call38 to i32*
  %37 = load %struct.EState*, %struct.EState** %s, align 8
  %arr239 = getelementptr inbounds %struct.EState, %struct.EState* %37, i32 0, i32 5
  store i32* %36, i32** %arr239, align 8
  %38 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %bzalloc40 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %38, i32 0, i32 9
  %39 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** %bzalloc40, align 8
  %40 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %opaque41 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %40, i32 0, i32 11
  %41 = load i8*, i8** %opaque41, align 8
  %call42 = call i8* %39(i8* %41, i32 262148, i32 1)
  %42 = bitcast i8* %call42 to i32*
  %43 = load %struct.EState*, %struct.EState** %s, align 8
  %ftab43 = getelementptr inbounds %struct.EState, %struct.EState* %43, i32 0, i32 6
  store i32* %42, i32** %ftab43, align 8
  %44 = load %struct.EState*, %struct.EState** %s, align 8
  %arr144 = getelementptr inbounds %struct.EState, %struct.EState* %44, i32 0, i32 4
  %45 = load i32*, i32** %arr144, align 8
  %cmp45 = icmp eq i32* %45, null
  br i1 %cmp45, label %if.then55, label %lor.lhs.false47

lor.lhs.false47:                                  ; preds = %if.end25
  %46 = load %struct.EState*, %struct.EState** %s, align 8
  %arr248 = getelementptr inbounds %struct.EState, %struct.EState* %46, i32 0, i32 5
  %47 = load i32*, i32** %arr248, align 8
  %cmp49 = icmp eq i32* %47, null
  br i1 %cmp49, label %if.then55, label %lor.lhs.false51

lor.lhs.false51:                                  ; preds = %lor.lhs.false47
  %48 = load %struct.EState*, %struct.EState** %s, align 8
  %ftab52 = getelementptr inbounds %struct.EState, %struct.EState* %48, i32 0, i32 6
  %49 = load i32*, i32** %ftab52, align 8
  %cmp53 = icmp eq i32* %49, null
  br i1 %cmp53, label %if.then55, label %if.end86

if.then55:                                        ; preds = %lor.lhs.false51, %lor.lhs.false47, %if.end25
  %50 = load %struct.EState*, %struct.EState** %s, align 8
  %arr156 = getelementptr inbounds %struct.EState, %struct.EState* %50, i32 0, i32 4
  %51 = load i32*, i32** %arr156, align 8
  %cmp57 = icmp ne i32* %51, null
  br i1 %cmp57, label %if.then59, label %if.end63

if.then59:                                        ; preds = %if.then55
  %52 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %bzfree60 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %52, i32 0, i32 10
  %53 = load void (i8*, i8*)*, void (i8*, i8*)** %bzfree60, align 8
  %54 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %opaque61 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %54, i32 0, i32 11
  %55 = load i8*, i8** %opaque61, align 8
  %56 = load %struct.EState*, %struct.EState** %s, align 8
  %arr162 = getelementptr inbounds %struct.EState, %struct.EState* %56, i32 0, i32 4
  %57 = load i32*, i32** %arr162, align 8
  %58 = bitcast i32* %57 to i8*
  call void %53(i8* %55, i8* %58)
  br label %if.end63

if.end63:                                         ; preds = %if.then59, %if.then55
  %59 = load %struct.EState*, %struct.EState** %s, align 8
  %arr264 = getelementptr inbounds %struct.EState, %struct.EState* %59, i32 0, i32 5
  %60 = load i32*, i32** %arr264, align 8
  %cmp65 = icmp ne i32* %60, null
  br i1 %cmp65, label %if.then67, label %if.end71

if.then67:                                        ; preds = %if.end63
  %61 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %bzfree68 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %61, i32 0, i32 10
  %62 = load void (i8*, i8*)*, void (i8*, i8*)** %bzfree68, align 8
  %63 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %opaque69 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %63, i32 0, i32 11
  %64 = load i8*, i8** %opaque69, align 8
  %65 = load %struct.EState*, %struct.EState** %s, align 8
  %arr270 = getelementptr inbounds %struct.EState, %struct.EState* %65, i32 0, i32 5
  %66 = load i32*, i32** %arr270, align 8
  %67 = bitcast i32* %66 to i8*
  call void %62(i8* %64, i8* %67)
  br label %if.end71

if.end71:                                         ; preds = %if.then67, %if.end63
  %68 = load %struct.EState*, %struct.EState** %s, align 8
  %ftab72 = getelementptr inbounds %struct.EState, %struct.EState* %68, i32 0, i32 6
  %69 = load i32*, i32** %ftab72, align 8
  %cmp73 = icmp ne i32* %69, null
  br i1 %cmp73, label %if.then75, label %if.end79

if.then75:                                        ; preds = %if.end71
  %70 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %bzfree76 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %70, i32 0, i32 10
  %71 = load void (i8*, i8*)*, void (i8*, i8*)** %bzfree76, align 8
  %72 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %opaque77 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %72, i32 0, i32 11
  %73 = load i8*, i8** %opaque77, align 8
  %74 = load %struct.EState*, %struct.EState** %s, align 8
  %ftab78 = getelementptr inbounds %struct.EState, %struct.EState* %74, i32 0, i32 6
  %75 = load i32*, i32** %ftab78, align 8
  %76 = bitcast i32* %75 to i8*
  call void %71(i8* %73, i8* %76)
  br label %if.end79

if.end79:                                         ; preds = %if.then75, %if.end71
  %77 = load %struct.EState*, %struct.EState** %s, align 8
  %cmp80 = icmp ne %struct.EState* %77, null
  br i1 %cmp80, label %if.then82, label %if.end85

if.then82:                                        ; preds = %if.end79
  %78 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %bzfree83 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %78, i32 0, i32 10
  %79 = load void (i8*, i8*)*, void (i8*, i8*)** %bzfree83, align 8
  %80 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %opaque84 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %80, i32 0, i32 11
  %81 = load i8*, i8** %opaque84, align 8
  %82 = load %struct.EState*, %struct.EState** %s, align 8
  %83 = bitcast %struct.EState* %82 to i8*
  call void %79(i8* %81, i8* %83)
  br label %if.end85

if.end85:                                         ; preds = %if.then82, %if.end79
  store i32 -3, i32* %retval, align 4
  br label %return

if.end86:                                         ; preds = %lor.lhs.false51
  %84 = load %struct.EState*, %struct.EState** %s, align 8
  %blockNo = getelementptr inbounds %struct.EState, %struct.EState* %84, i32 0, i32 29
  store i32 0, i32* %blockNo, align 4
  %85 = load %struct.EState*, %struct.EState** %s, align 8
  %state = getelementptr inbounds %struct.EState, %struct.EState* %85, i32 0, i32 2
  store i32 2, i32* %state, align 4
  %86 = load %struct.EState*, %struct.EState** %s, align 8
  %mode = getelementptr inbounds %struct.EState, %struct.EState* %86, i32 0, i32 1
  store i32 2, i32* %mode, align 8
  %87 = load %struct.EState*, %struct.EState** %s, align 8
  %combinedCRC = getelementptr inbounds %struct.EState, %struct.EState* %87, i32 0, i32 27
  store i32 0, i32* %combinedCRC, align 4
  %88 = load i32, i32* %blockSize100k.addr, align 4
  %89 = load %struct.EState*, %struct.EState** %s, align 8
  %blockSize100k87 = getelementptr inbounds %struct.EState, %struct.EState* %89, i32 0, i32 30
  store i32 %88, i32* %blockSize100k87, align 8
  %90 = load i32, i32* %blockSize100k.addr, align 4
  %mul88 = mul nsw i32 100000, %90
  %sub = sub nsw i32 %mul88, 19
  %91 = load %struct.EState*, %struct.EState** %s, align 8
  %nblockMAX = getelementptr inbounds %struct.EState, %struct.EState* %91, i32 0, i32 18
  store i32 %sub, i32* %nblockMAX, align 8
  %92 = load i32, i32* %verbosity.addr, align 4
  %93 = load %struct.EState*, %struct.EState** %s, align 8
  %verbosity89 = getelementptr inbounds %struct.EState, %struct.EState* %93, i32 0, i32 28
  store i32 %92, i32* %verbosity89, align 8
  %94 = load i32, i32* %workFactor.addr, align 4
  %95 = load %struct.EState*, %struct.EState** %s, align 8
  %workFactor90 = getelementptr inbounds %struct.EState, %struct.EState* %95, i32 0, i32 12
  store i32 %94, i32* %workFactor90, align 8
  %96 = load %struct.EState*, %struct.EState** %s, align 8
  %arr291 = getelementptr inbounds %struct.EState, %struct.EState* %96, i32 0, i32 5
  %97 = load i32*, i32** %arr291, align 8
  %98 = bitcast i32* %97 to i8*
  %99 = load %struct.EState*, %struct.EState** %s, align 8
  %block = getelementptr inbounds %struct.EState, %struct.EState* %99, i32 0, i32 9
  store i8* %98, i8** %block, align 8
  %100 = load %struct.EState*, %struct.EState** %s, align 8
  %arr192 = getelementptr inbounds %struct.EState, %struct.EState* %100, i32 0, i32 4
  %101 = load i32*, i32** %arr192, align 8
  %102 = bitcast i32* %101 to i16*
  %103 = load %struct.EState*, %struct.EState** %s, align 8
  %mtfv = getelementptr inbounds %struct.EState, %struct.EState* %103, i32 0, i32 10
  store i16* %102, i16** %mtfv, align 8
  %104 = load %struct.EState*, %struct.EState** %s, align 8
  %zbits = getelementptr inbounds %struct.EState, %struct.EState* %104, i32 0, i32 11
  store i8* null, i8** %zbits, align 8
  %105 = load %struct.EState*, %struct.EState** %s, align 8
  %arr193 = getelementptr inbounds %struct.EState, %struct.EState* %105, i32 0, i32 4
  %106 = load i32*, i32** %arr193, align 8
  %107 = load %struct.EState*, %struct.EState** %s, align 8
  %ptr = getelementptr inbounds %struct.EState, %struct.EState* %107, i32 0, i32 8
  store i32* %106, i32** %ptr, align 8
  %108 = load %struct.EState*, %struct.EState** %s, align 8
  %109 = bitcast %struct.EState* %108 to i8*
  %110 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %state94 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %110, i32 0, i32 8
  store i8* %109, i8** %state94, align 8
  %111 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %total_in_lo32 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %111, i32 0, i32 2
  store i32 0, i32* %total_in_lo32, align 4
  %112 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %total_in_hi32 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %112, i32 0, i32 3
  store i32 0, i32* %total_in_hi32, align 8
  %113 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %total_out_lo32 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %113, i32 0, i32 6
  store i32 0, i32* %total_out_lo32, align 4
  %114 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %total_out_hi32 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %114, i32 0, i32 7
  store i32 0, i32* %total_out_hi32, align 8
  %115 = load %struct.EState*, %struct.EState** %s, align 8
  call void @init_RL(%struct.EState* %115)
  %116 = load %struct.EState*, %struct.EState** %s, align 8
  call void @prepare_new_block(%struct.EState* %116)
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end86, %if.end85, %if.then24, %if.then8, %if.then
  %117 = load i32, i32* %retval, align 4
  ret i32 %117
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bz_config_ok() #0 {
entry:
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @default_bzalloc(i8* %opaque, i32 %items, i32 %size) #0 {
entry:
  %opaque.addr = alloca i8*, align 8
  %items.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %v = alloca i8*, align 8
  store i8* %opaque, i8** %opaque.addr, align 8
  store i32 %items, i32* %items.addr, align 4
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* %items.addr, align 4
  %1 = load i32, i32* %size.addr, align 4
  %mul = mul nsw i32 %0, %1
  %conv = sext i32 %mul to i64
  %call = call noalias i8* @malloc(i64 %conv) #8
  store i8* %call, i8** %v, align 8
  %2 = load i8*, i8** %v, align 8
  ret i8* %2
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @default_bzfree(i8* %opaque, i8* %addr) #0 {
entry:
  %opaque.addr = alloca i8*, align 8
  %addr.addr = alloca i8*, align 8
  store i8* %opaque, i8** %opaque.addr, align 8
  store i8* %addr, i8** %addr.addr, align 8
  %0 = load i8*, i8** %addr.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %addr.addr, align 8
  call void @free(i8* %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_RL(%struct.EState* %s) #0 {
entry:
  %s.addr = alloca %struct.EState*, align 8
  store %struct.EState* %s, %struct.EState** %s.addr, align 8
  %0 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %state_in_ch = getelementptr inbounds %struct.EState, %struct.EState* %0, i32 0, i32 13
  store i32 256, i32* %state_in_ch, align 4
  %1 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %state_in_len = getelementptr inbounds %struct.EState, %struct.EState* %1, i32 0, i32 14
  store i32 0, i32* %state_in_len, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_new_block(%struct.EState* %s) #0 {
entry:
  %s.addr = alloca %struct.EState*, align 8
  %i = alloca i32, align 4
  store %struct.EState* %s, %struct.EState** %s.addr, align 8
  %0 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %nblock = getelementptr inbounds %struct.EState, %struct.EState* %0, i32 0, i32 17
  store i32 0, i32* %nblock, align 4
  %1 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %numZ = getelementptr inbounds %struct.EState, %struct.EState* %1, i32 0, i32 19
  store i32 0, i32* %numZ, align 4
  %2 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %state_out_pos = getelementptr inbounds %struct.EState, %struct.EState* %2, i32 0, i32 20
  store i32 0, i32* %state_out_pos, align 8
  %3 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %blockCRC = getelementptr inbounds %struct.EState, %struct.EState* %3, i32 0, i32 26
  store i32 -1, i32* %blockCRC, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %4, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %inUse = getelementptr inbounds %struct.EState, %struct.EState* %5, i32 0, i32 22
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %inUse, i64 0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %blockNo = getelementptr inbounds %struct.EState, %struct.EState* %8, i32 0, i32 29
  %9 = load i32, i32* %blockNo, align 4
  %inc1 = add nsw i32 %9, 1
  store i32 %inc1, i32* %blockNo, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BZ2_bzCompress(%struct.bz_stream* %strm, i32 %action) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca %struct.bz_stream*, align 8
  %action.addr = alloca i32, align 4
  %progress = alloca i8, align 1
  %s = alloca %struct.EState*, align 8
  store %struct.bz_stream* %strm, %struct.bz_stream** %strm.addr, align 8
  store i32 %action, i32* %action.addr, align 4
  %0 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %cmp = icmp eq %struct.bz_stream* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -2, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %state = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1, i32 0, i32 8
  %2 = load i8*, i8** %state, align 8
  %3 = bitcast i8* %2 to %struct.EState*
  store %struct.EState* %3, %struct.EState** %s, align 8
  %4 = load %struct.EState*, %struct.EState** %s, align 8
  %cmp1 = icmp eq %struct.EState* %4, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 -2, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %5 = load %struct.EState*, %struct.EState** %s, align 8
  %strm4 = getelementptr inbounds %struct.EState, %struct.EState* %5, i32 0, i32 0
  %6 = load %struct.bz_stream*, %struct.bz_stream** %strm4, align 8
  %7 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %cmp5 = icmp ne %struct.bz_stream* %6, %7
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  store i32 -2, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end3
  br label %preswitch

preswitch:                                        ; preds = %if.then18, %if.then13, %if.end7
  %8 = load %struct.EState*, %struct.EState** %s, align 8
  %mode = getelementptr inbounds %struct.EState, %struct.EState* %8, i32 0, i32 1
  %9 = load i32, i32* %mode, align 8
  switch i32 %9, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb8
    i32 3, label %sw.bb23
    i32 4, label %sw.bb47
  ]

sw.bb:                                            ; preds = %preswitch
  store i32 -1, i32* %retval, align 4
  br label %return

sw.bb8:                                           ; preds = %preswitch
  %10 = load i32, i32* %action.addr, align 4
  %cmp9 = icmp eq i32 %10, 0
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %sw.bb8
  %11 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %call = call zeroext i8 @handle_compress(%struct.bz_stream* %11)
  store i8 %call, i8* %progress, align 1
  %12 = load i8, i8* %progress, align 1
  %conv = zext i8 %12 to i32
  %tobool = icmp ne i32 %conv, 0
  %13 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 1, i32 -2
  store i32 %cond, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %sw.bb8
  %14 = load i32, i32* %action.addr, align 4
  %cmp11 = icmp eq i32 %14, 1
  br i1 %cmp11, label %if.then13, label %if.else15

if.then13:                                        ; preds = %if.else
  %15 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %avail_in = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %15, i32 0, i32 1
  %16 = load i32, i32* %avail_in, align 8
  %17 = load %struct.EState*, %struct.EState** %s, align 8
  %avail_in_expect = getelementptr inbounds %struct.EState, %struct.EState* %17, i32 0, i32 3
  store i32 %16, i32* %avail_in_expect, align 8
  %18 = load %struct.EState*, %struct.EState** %s, align 8
  %mode14 = getelementptr inbounds %struct.EState, %struct.EState* %18, i32 0, i32 1
  store i32 3, i32* %mode14, align 8
  br label %preswitch

if.else15:                                        ; preds = %if.else
  %19 = load i32, i32* %action.addr, align 4
  %cmp16 = icmp eq i32 %19, 2
  br i1 %cmp16, label %if.then18, label %if.else22

if.then18:                                        ; preds = %if.else15
  %20 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %avail_in19 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %20, i32 0, i32 1
  %21 = load i32, i32* %avail_in19, align 8
  %22 = load %struct.EState*, %struct.EState** %s, align 8
  %avail_in_expect20 = getelementptr inbounds %struct.EState, %struct.EState* %22, i32 0, i32 3
  store i32 %21, i32* %avail_in_expect20, align 8
  %23 = load %struct.EState*, %struct.EState** %s, align 8
  %mode21 = getelementptr inbounds %struct.EState, %struct.EState* %23, i32 0, i32 1
  store i32 4, i32* %mode21, align 8
  br label %preswitch

if.else22:                                        ; preds = %if.else15
  store i32 -2, i32* %retval, align 4
  br label %return

sw.bb23:                                          ; preds = %preswitch
  %24 = load i32, i32* %action.addr, align 4
  %cmp24 = icmp ne i32 %24, 1
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %sw.bb23
  store i32 -1, i32* %retval, align 4
  br label %return

if.end27:                                         ; preds = %sw.bb23
  %25 = load %struct.EState*, %struct.EState** %s, align 8
  %avail_in_expect28 = getelementptr inbounds %struct.EState, %struct.EState* %25, i32 0, i32 3
  %26 = load i32, i32* %avail_in_expect28, align 8
  %27 = load %struct.EState*, %struct.EState** %s, align 8
  %strm29 = getelementptr inbounds %struct.EState, %struct.EState* %27, i32 0, i32 0
  %28 = load %struct.bz_stream*, %struct.bz_stream** %strm29, align 8
  %avail_in30 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %28, i32 0, i32 1
  %29 = load i32, i32* %avail_in30, align 8
  %cmp31 = icmp ne i32 %26, %29
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end27
  store i32 -1, i32* %retval, align 4
  br label %return

if.end34:                                         ; preds = %if.end27
  %30 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %call35 = call zeroext i8 @handle_compress(%struct.bz_stream* %30)
  store i8 %call35, i8* %progress, align 1
  %31 = load %struct.EState*, %struct.EState** %s, align 8
  %avail_in_expect36 = getelementptr inbounds %struct.EState, %struct.EState* %31, i32 0, i32 3
  %32 = load i32, i32* %avail_in_expect36, align 8
  %cmp37 = icmp ugt i32 %32, 0
  br i1 %cmp37, label %if.then44, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end34
  %33 = load %struct.EState*, %struct.EState** %s, align 8
  %call39 = call zeroext i8 @isempty_RL(%struct.EState* %33)
  %tobool40 = icmp ne i8 %call39, 0
  br i1 %tobool40, label %lor.lhs.false41, label %if.then44

lor.lhs.false41:                                  ; preds = %lor.lhs.false
  %34 = load %struct.EState*, %struct.EState** %s, align 8
  %state_out_pos = getelementptr inbounds %struct.EState, %struct.EState* %34, i32 0, i32 20
  %35 = load i32, i32* %state_out_pos, align 8
  %36 = load %struct.EState*, %struct.EState** %s, align 8
  %numZ = getelementptr inbounds %struct.EState, %struct.EState* %36, i32 0, i32 19
  %37 = load i32, i32* %numZ, align 4
  %cmp42 = icmp slt i32 %35, %37
  br i1 %cmp42, label %if.then44, label %if.end45

if.then44:                                        ; preds = %lor.lhs.false41, %lor.lhs.false, %if.end34
  store i32 2, i32* %retval, align 4
  br label %return

if.end45:                                         ; preds = %lor.lhs.false41
  %38 = load %struct.EState*, %struct.EState** %s, align 8
  %mode46 = getelementptr inbounds %struct.EState, %struct.EState* %38, i32 0, i32 1
  store i32 2, i32* %mode46, align 8
  store i32 1, i32* %retval, align 4
  br label %return

sw.bb47:                                          ; preds = %preswitch
  %39 = load i32, i32* %action.addr, align 4
  %cmp48 = icmp ne i32 %39, 2
  br i1 %cmp48, label %if.then50, label %if.end51

if.then50:                                        ; preds = %sw.bb47
  store i32 -1, i32* %retval, align 4
  br label %return

if.end51:                                         ; preds = %sw.bb47
  %40 = load %struct.EState*, %struct.EState** %s, align 8
  %avail_in_expect52 = getelementptr inbounds %struct.EState, %struct.EState* %40, i32 0, i32 3
  %41 = load i32, i32* %avail_in_expect52, align 8
  %42 = load %struct.EState*, %struct.EState** %s, align 8
  %strm53 = getelementptr inbounds %struct.EState, %struct.EState* %42, i32 0, i32 0
  %43 = load %struct.bz_stream*, %struct.bz_stream** %strm53, align 8
  %avail_in54 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %43, i32 0, i32 1
  %44 = load i32, i32* %avail_in54, align 8
  %cmp55 = icmp ne i32 %41, %44
  br i1 %cmp55, label %if.then57, label %if.end58

if.then57:                                        ; preds = %if.end51
  store i32 -1, i32* %retval, align 4
  br label %return

if.end58:                                         ; preds = %if.end51
  %45 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %call59 = call zeroext i8 @handle_compress(%struct.bz_stream* %45)
  store i8 %call59, i8* %progress, align 1
  %46 = load i8, i8* %progress, align 1
  %tobool60 = icmp ne i8 %46, 0
  br i1 %tobool60, label %if.end62, label %if.then61

if.then61:                                        ; preds = %if.end58
  store i32 -1, i32* %retval, align 4
  br label %return

if.end62:                                         ; preds = %if.end58
  %47 = load %struct.EState*, %struct.EState** %s, align 8
  %avail_in_expect63 = getelementptr inbounds %struct.EState, %struct.EState* %47, i32 0, i32 3
  %48 = load i32, i32* %avail_in_expect63, align 8
  %cmp64 = icmp ugt i32 %48, 0
  br i1 %cmp64, label %if.then74, label %lor.lhs.false66

lor.lhs.false66:                                  ; preds = %if.end62
  %49 = load %struct.EState*, %struct.EState** %s, align 8
  %call67 = call zeroext i8 @isempty_RL(%struct.EState* %49)
  %tobool68 = icmp ne i8 %call67, 0
  br i1 %tobool68, label %lor.lhs.false69, label %if.then74

lor.lhs.false69:                                  ; preds = %lor.lhs.false66
  %50 = load %struct.EState*, %struct.EState** %s, align 8
  %state_out_pos70 = getelementptr inbounds %struct.EState, %struct.EState* %50, i32 0, i32 20
  %51 = load i32, i32* %state_out_pos70, align 8
  %52 = load %struct.EState*, %struct.EState** %s, align 8
  %numZ71 = getelementptr inbounds %struct.EState, %struct.EState* %52, i32 0, i32 19
  %53 = load i32, i32* %numZ71, align 4
  %cmp72 = icmp slt i32 %51, %53
  br i1 %cmp72, label %if.then74, label %if.end75

if.then74:                                        ; preds = %lor.lhs.false69, %lor.lhs.false66, %if.end62
  store i32 3, i32* %retval, align 4
  br label %return

if.end75:                                         ; preds = %lor.lhs.false69
  %54 = load %struct.EState*, %struct.EState** %s, align 8
  %mode76 = getelementptr inbounds %struct.EState, %struct.EState* %54, i32 0, i32 1
  store i32 1, i32* %mode76, align 8
  store i32 4, i32* %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %preswitch
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %if.end75, %if.then74, %if.then61, %if.then57, %if.then50, %if.end45, %if.then44, %if.then33, %if.then26, %if.else22, %if.then10, %sw.bb, %if.then6, %if.then2, %if.then
  %55 = load i32, i32* %retval, align 4
  ret i32 %55
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @handle_compress(%struct.bz_stream* %strm) #0 {
entry:
  %strm.addr = alloca %struct.bz_stream*, align 8
  %progress_in = alloca i8, align 1
  %progress_out = alloca i8, align 1
  %s = alloca %struct.EState*, align 8
  store %struct.bz_stream* %strm, %struct.bz_stream** %strm.addr, align 8
  store i8 0, i8* %progress_in, align 1
  store i8 0, i8* %progress_out, align 1
  %0 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %state = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %0, i32 0, i32 8
  %1 = load i8*, i8** %state, align 8
  %2 = bitcast i8* %1 to %struct.EState*
  store %struct.EState* %2, %struct.EState** %s, align 8
  br label %while.body

while.body:                                       ; preds = %entry, %if.end65
  %3 = load %struct.EState*, %struct.EState** %s, align 8
  %state1 = getelementptr inbounds %struct.EState, %struct.EState* %3, i32 0, i32 2
  %4 = load i32, i32* %state1, align 4
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.then, label %if.end30

if.then:                                          ; preds = %while.body
  %5 = load %struct.EState*, %struct.EState** %s, align 8
  %call = call zeroext i8 @copy_output_until_stop(%struct.EState* %5)
  %conv = zext i8 %call to i32
  %6 = load i8, i8* %progress_out, align 1
  %conv2 = zext i8 %6 to i32
  %or = or i32 %conv2, %conv
  %conv3 = trunc i32 %or to i8
  store i8 %conv3, i8* %progress_out, align 1
  %7 = load %struct.EState*, %struct.EState** %s, align 8
  %state_out_pos = getelementptr inbounds %struct.EState, %struct.EState* %7, i32 0, i32 20
  %8 = load i32, i32* %state_out_pos, align 8
  %9 = load %struct.EState*, %struct.EState** %s, align 8
  %numZ = getelementptr inbounds %struct.EState, %struct.EState* %9, i32 0, i32 19
  %10 = load i32, i32* %numZ, align 4
  %cmp4 = icmp slt i32 %8, %10
  br i1 %cmp4, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  br label %while.end

if.end:                                           ; preds = %if.then
  %11 = load %struct.EState*, %struct.EState** %s, align 8
  %mode = getelementptr inbounds %struct.EState, %struct.EState* %11, i32 0, i32 1
  %12 = load i32, i32* %mode, align 8
  %cmp7 = icmp eq i32 %12, 4
  br i1 %cmp7, label %land.lhs.true, label %if.end15

land.lhs.true:                                    ; preds = %if.end
  %13 = load %struct.EState*, %struct.EState** %s, align 8
  %avail_in_expect = getelementptr inbounds %struct.EState, %struct.EState* %13, i32 0, i32 3
  %14 = load i32, i32* %avail_in_expect, align 8
  %cmp9 = icmp eq i32 %14, 0
  br i1 %cmp9, label %land.lhs.true11, label %if.end15

land.lhs.true11:                                  ; preds = %land.lhs.true
  %15 = load %struct.EState*, %struct.EState** %s, align 8
  %call12 = call zeroext i8 @isempty_RL(%struct.EState* %15)
  %conv13 = zext i8 %call12 to i32
  %tobool = icmp ne i32 %conv13, 0
  br i1 %tobool, label %if.then14, label %if.end15

if.then14:                                        ; preds = %land.lhs.true11
  br label %while.end

if.end15:                                         ; preds = %land.lhs.true11, %land.lhs.true, %if.end
  %16 = load %struct.EState*, %struct.EState** %s, align 8
  call void @prepare_new_block(%struct.EState* %16)
  %17 = load %struct.EState*, %struct.EState** %s, align 8
  %state16 = getelementptr inbounds %struct.EState, %struct.EState* %17, i32 0, i32 2
  store i32 2, i32* %state16, align 4
  %18 = load %struct.EState*, %struct.EState** %s, align 8
  %mode17 = getelementptr inbounds %struct.EState, %struct.EState* %18, i32 0, i32 1
  %19 = load i32, i32* %mode17, align 8
  %cmp18 = icmp eq i32 %19, 3
  br i1 %cmp18, label %land.lhs.true20, label %if.end29

land.lhs.true20:                                  ; preds = %if.end15
  %20 = load %struct.EState*, %struct.EState** %s, align 8
  %avail_in_expect21 = getelementptr inbounds %struct.EState, %struct.EState* %20, i32 0, i32 3
  %21 = load i32, i32* %avail_in_expect21, align 8
  %cmp22 = icmp eq i32 %21, 0
  br i1 %cmp22, label %land.lhs.true24, label %if.end29

land.lhs.true24:                                  ; preds = %land.lhs.true20
  %22 = load %struct.EState*, %struct.EState** %s, align 8
  %call25 = call zeroext i8 @isempty_RL(%struct.EState* %22)
  %conv26 = zext i8 %call25 to i32
  %tobool27 = icmp ne i32 %conv26, 0
  br i1 %tobool27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %land.lhs.true24
  br label %while.end

if.end29:                                         ; preds = %land.lhs.true24, %land.lhs.true20, %if.end15
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %while.body
  %23 = load %struct.EState*, %struct.EState** %s, align 8
  %state31 = getelementptr inbounds %struct.EState, %struct.EState* %23, i32 0, i32 2
  %24 = load i32, i32* %state31, align 4
  %cmp32 = icmp eq i32 %24, 2
  br i1 %cmp32, label %if.then34, label %if.end65

if.then34:                                        ; preds = %if.end30
  %25 = load %struct.EState*, %struct.EState** %s, align 8
  %call35 = call zeroext i8 @copy_input_until_stop(%struct.EState* %25)
  %conv36 = zext i8 %call35 to i32
  %26 = load i8, i8* %progress_in, align 1
  %conv37 = zext i8 %26 to i32
  %or38 = or i32 %conv37, %conv36
  %conv39 = trunc i32 %or38 to i8
  store i8 %conv39, i8* %progress_in, align 1
  %27 = load %struct.EState*, %struct.EState** %s, align 8
  %mode40 = getelementptr inbounds %struct.EState, %struct.EState* %27, i32 0, i32 1
  %28 = load i32, i32* %mode40, align 8
  %cmp41 = icmp ne i32 %28, 2
  br i1 %cmp41, label %land.lhs.true43, label %if.else

land.lhs.true43:                                  ; preds = %if.then34
  %29 = load %struct.EState*, %struct.EState** %s, align 8
  %avail_in_expect44 = getelementptr inbounds %struct.EState, %struct.EState* %29, i32 0, i32 3
  %30 = load i32, i32* %avail_in_expect44, align 8
  %cmp45 = icmp eq i32 %30, 0
  br i1 %cmp45, label %if.then47, label %if.else

if.then47:                                        ; preds = %land.lhs.true43
  %31 = load %struct.EState*, %struct.EState** %s, align 8
  call void @flush_RL(%struct.EState* %31)
  %32 = load %struct.EState*, %struct.EState** %s, align 8
  %33 = load %struct.EState*, %struct.EState** %s, align 8
  %mode48 = getelementptr inbounds %struct.EState, %struct.EState* %33, i32 0, i32 1
  %34 = load i32, i32* %mode48, align 8
  %cmp49 = icmp eq i32 %34, 4
  %conv50 = zext i1 %cmp49 to i32
  %conv51 = trunc i32 %conv50 to i8
  call void @BZ2_compressBlock(%struct.EState* %32, i8 zeroext %conv51)
  %35 = load %struct.EState*, %struct.EState** %s, align 8
  %state52 = getelementptr inbounds %struct.EState, %struct.EState* %35, i32 0, i32 2
  store i32 1, i32* %state52, align 4
  br label %if.end64

if.else:                                          ; preds = %land.lhs.true43, %if.then34
  %36 = load %struct.EState*, %struct.EState** %s, align 8
  %nblock = getelementptr inbounds %struct.EState, %struct.EState* %36, i32 0, i32 17
  %37 = load i32, i32* %nblock, align 4
  %38 = load %struct.EState*, %struct.EState** %s, align 8
  %nblockMAX = getelementptr inbounds %struct.EState, %struct.EState* %38, i32 0, i32 18
  %39 = load i32, i32* %nblockMAX, align 8
  %cmp53 = icmp sge i32 %37, %39
  br i1 %cmp53, label %if.then55, label %if.else57

if.then55:                                        ; preds = %if.else
  %40 = load %struct.EState*, %struct.EState** %s, align 8
  call void @BZ2_compressBlock(%struct.EState* %40, i8 zeroext 0)
  %41 = load %struct.EState*, %struct.EState** %s, align 8
  %state56 = getelementptr inbounds %struct.EState, %struct.EState* %41, i32 0, i32 2
  store i32 1, i32* %state56, align 4
  br label %if.end63

if.else57:                                        ; preds = %if.else
  %42 = load %struct.EState*, %struct.EState** %s, align 8
  %strm58 = getelementptr inbounds %struct.EState, %struct.EState* %42, i32 0, i32 0
  %43 = load %struct.bz_stream*, %struct.bz_stream** %strm58, align 8
  %avail_in = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %43, i32 0, i32 1
  %44 = load i32, i32* %avail_in, align 8
  %cmp59 = icmp eq i32 %44, 0
  br i1 %cmp59, label %if.then61, label %if.end62

if.then61:                                        ; preds = %if.else57
  br label %while.end

if.end62:                                         ; preds = %if.else57
  br label %if.end63

if.end63:                                         ; preds = %if.end62, %if.then55
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %if.then47
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %if.end30
  br label %while.body

while.end:                                        ; preds = %if.then61, %if.then28, %if.then14, %if.then6
  %45 = load i8, i8* %progress_in, align 1
  %conv66 = zext i8 %45 to i32
  %tobool67 = icmp ne i32 %conv66, 0
  br i1 %tobool67, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.end
  %46 = load i8, i8* %progress_out, align 1
  %conv68 = zext i8 %46 to i32
  %tobool69 = icmp ne i32 %conv68, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.end
  %47 = phi i1 [ true, %while.end ], [ %tobool69, %lor.rhs ]
  %lor.ext = zext i1 %47 to i32
  %conv70 = trunc i32 %lor.ext to i8
  ret i8 %conv70
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @isempty_RL(%struct.EState* %s) #0 {
entry:
  %retval = alloca i8, align 1
  %s.addr = alloca %struct.EState*, align 8
  store %struct.EState* %s, %struct.EState** %s.addr, align 8
  %0 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %state_in_ch = getelementptr inbounds %struct.EState, %struct.EState* %0, i32 0, i32 13
  %1 = load i32, i32* %state_in_ch, align 4
  %cmp = icmp ult i32 %1, 256
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %state_in_len = getelementptr inbounds %struct.EState, %struct.EState* %2, i32 0, i32 14
  %3 = load i32, i32* %state_in_len, align 8
  %cmp1 = icmp sgt i32 %3, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  store i8 0, i8* %retval, align 1
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  store i8 1, i8* %retval, align 1
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load i8, i8* %retval, align 1
  ret i8 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BZ2_bzCompressEnd(%struct.bz_stream* %strm) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca %struct.bz_stream*, align 8
  %s = alloca %struct.EState*, align 8
  store %struct.bz_stream* %strm, %struct.bz_stream** %strm.addr, align 8
  %0 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %cmp = icmp eq %struct.bz_stream* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -2, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %state = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1, i32 0, i32 8
  %2 = load i8*, i8** %state, align 8
  %3 = bitcast i8* %2 to %struct.EState*
  store %struct.EState* %3, %struct.EState** %s, align 8
  %4 = load %struct.EState*, %struct.EState** %s, align 8
  %cmp1 = icmp eq %struct.EState* %4, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 -2, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %5 = load %struct.EState*, %struct.EState** %s, align 8
  %strm4 = getelementptr inbounds %struct.EState, %struct.EState* %5, i32 0, i32 0
  %6 = load %struct.bz_stream*, %struct.bz_stream** %strm4, align 8
  %7 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %cmp5 = icmp ne %struct.bz_stream* %6, %7
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  store i32 -2, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end3
  %8 = load %struct.EState*, %struct.EState** %s, align 8
  %arr1 = getelementptr inbounds %struct.EState, %struct.EState* %8, i32 0, i32 4
  %9 = load i32*, i32** %arr1, align 8
  %cmp8 = icmp ne i32* %9, null
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end7
  %10 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %bzfree = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %10, i32 0, i32 10
  %11 = load void (i8*, i8*)*, void (i8*, i8*)** %bzfree, align 8
  %12 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %opaque = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %12, i32 0, i32 11
  %13 = load i8*, i8** %opaque, align 8
  %14 = load %struct.EState*, %struct.EState** %s, align 8
  %arr110 = getelementptr inbounds %struct.EState, %struct.EState* %14, i32 0, i32 4
  %15 = load i32*, i32** %arr110, align 8
  %16 = bitcast i32* %15 to i8*
  call void %11(i8* %13, i8* %16)
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end7
  %17 = load %struct.EState*, %struct.EState** %s, align 8
  %arr2 = getelementptr inbounds %struct.EState, %struct.EState* %17, i32 0, i32 5
  %18 = load i32*, i32** %arr2, align 8
  %cmp12 = icmp ne i32* %18, null
  br i1 %cmp12, label %if.then13, label %if.end17

if.then13:                                        ; preds = %if.end11
  %19 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %bzfree14 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %19, i32 0, i32 10
  %20 = load void (i8*, i8*)*, void (i8*, i8*)** %bzfree14, align 8
  %21 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %opaque15 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %21, i32 0, i32 11
  %22 = load i8*, i8** %opaque15, align 8
  %23 = load %struct.EState*, %struct.EState** %s, align 8
  %arr216 = getelementptr inbounds %struct.EState, %struct.EState* %23, i32 0, i32 5
  %24 = load i32*, i32** %arr216, align 8
  %25 = bitcast i32* %24 to i8*
  call void %20(i8* %22, i8* %25)
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %if.end11
  %26 = load %struct.EState*, %struct.EState** %s, align 8
  %ftab = getelementptr inbounds %struct.EState, %struct.EState* %26, i32 0, i32 6
  %27 = load i32*, i32** %ftab, align 8
  %cmp18 = icmp ne i32* %27, null
  br i1 %cmp18, label %if.then19, label %if.end23

if.then19:                                        ; preds = %if.end17
  %28 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %bzfree20 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %28, i32 0, i32 10
  %29 = load void (i8*, i8*)*, void (i8*, i8*)** %bzfree20, align 8
  %30 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %opaque21 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %30, i32 0, i32 11
  %31 = load i8*, i8** %opaque21, align 8
  %32 = load %struct.EState*, %struct.EState** %s, align 8
  %ftab22 = getelementptr inbounds %struct.EState, %struct.EState* %32, i32 0, i32 6
  %33 = load i32*, i32** %ftab22, align 8
  %34 = bitcast i32* %33 to i8*
  call void %29(i8* %31, i8* %34)
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %if.end17
  %35 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %bzfree24 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %35, i32 0, i32 10
  %36 = load void (i8*, i8*)*, void (i8*, i8*)** %bzfree24, align 8
  %37 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %opaque25 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %37, i32 0, i32 11
  %38 = load i8*, i8** %opaque25, align 8
  %39 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %state26 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %39, i32 0, i32 8
  %40 = load i8*, i8** %state26, align 8
  call void %36(i8* %38, i8* %40)
  %41 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %state27 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %41, i32 0, i32 8
  store i8* null, i8** %state27, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end23, %if.then6, %if.then2, %if.then
  %42 = load i32, i32* %retval, align 4
  ret i32 %42
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BZ2_bzDecompressInit(%struct.bz_stream* %strm, i32 %verbosity, i32 %small) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca %struct.bz_stream*, align 8
  %verbosity.addr = alloca i32, align 4
  %small.addr = alloca i32, align 4
  %s = alloca %struct.DState*, align 8
  store %struct.bz_stream* %strm, %struct.bz_stream** %strm.addr, align 8
  store i32 %verbosity, i32* %verbosity.addr, align 4
  store i32 %small, i32* %small.addr, align 4
  %call = call i32 @bz_config_ok()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -9, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %0 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %cmp = icmp eq %struct.bz_stream* %0, null
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  store i32 -2, i32* %retval, align 4
  br label %return

if.end2:                                          ; preds = %if.end
  %1 = load i32, i32* %small.addr, align 4
  %cmp3 = icmp ne i32 %1, 0
  br i1 %cmp3, label %land.lhs.true, label %if.end6

land.lhs.true:                                    ; preds = %if.end2
  %2 = load i32, i32* %small.addr, align 4
  %cmp4 = icmp ne i32 %2, 1
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %land.lhs.true
  store i32 -2, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %3 = load i32, i32* %verbosity.addr, align 4
  %cmp7 = icmp slt i32 %3, 0
  br i1 %cmp7, label %if.then9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end6
  %4 = load i32, i32* %verbosity.addr, align 4
  %cmp8 = icmp sgt i32 %4, 4
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %lor.lhs.false, %if.end6
  store i32 -2, i32* %retval, align 4
  br label %return

if.end10:                                         ; preds = %lor.lhs.false
  %5 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %bzalloc = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %5, i32 0, i32 9
  %6 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** %bzalloc, align 8
  %cmp11 = icmp eq i8* (i8*, i32, i32)* %6, null
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end10
  %7 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %bzalloc13 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %7, i32 0, i32 9
  store i8* (i8*, i32, i32)* @default_bzalloc, i8* (i8*, i32, i32)** %bzalloc13, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end10
  %8 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %bzfree = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %8, i32 0, i32 10
  %9 = load void (i8*, i8*)*, void (i8*, i8*)** %bzfree, align 8
  %cmp15 = icmp eq void (i8*, i8*)* %9, null
  br i1 %cmp15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end14
  %10 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %bzfree17 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %10, i32 0, i32 10
  store void (i8*, i8*)* @default_bzfree, void (i8*, i8*)** %bzfree17, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end14
  %11 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %bzalloc19 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %11, i32 0, i32 9
  %12 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** %bzalloc19, align 8
  %13 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %opaque = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %13, i32 0, i32 11
  %14 = load i8*, i8** %opaque, align 8
  %call20 = call i8* %12(i8* %14, i32 64144, i32 1)
  %15 = bitcast i8* %call20 to %struct.DState*
  store %struct.DState* %15, %struct.DState** %s, align 8
  %16 = load %struct.DState*, %struct.DState** %s, align 8
  %cmp21 = icmp eq %struct.DState* %16, null
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end18
  store i32 -3, i32* %retval, align 4
  br label %return

if.end23:                                         ; preds = %if.end18
  %17 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %18 = load %struct.DState*, %struct.DState** %s, align 8
  %strm24 = getelementptr inbounds %struct.DState, %struct.DState* %18, i32 0, i32 0
  store %struct.bz_stream* %17, %struct.bz_stream** %strm24, align 8
  %19 = load %struct.DState*, %struct.DState** %s, align 8
  %20 = bitcast %struct.DState* %19 to i8*
  %21 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %state = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %21, i32 0, i32 8
  store i8* %20, i8** %state, align 8
  %22 = load %struct.DState*, %struct.DState** %s, align 8
  %state25 = getelementptr inbounds %struct.DState, %struct.DState* %22, i32 0, i32 1
  store i32 10, i32* %state25, align 8
  %23 = load %struct.DState*, %struct.DState** %s, align 8
  %bsLive = getelementptr inbounds %struct.DState, %struct.DState* %23, i32 0, i32 8
  store i32 0, i32* %bsLive, align 4
  %24 = load %struct.DState*, %struct.DState** %s, align 8
  %bsBuff = getelementptr inbounds %struct.DState, %struct.DState* %24, i32 0, i32 7
  store i32 0, i32* %bsBuff, align 8
  %25 = load %struct.DState*, %struct.DState** %s, align 8
  %calculatedCombinedCRC = getelementptr inbounds %struct.DState, %struct.DState* %25, i32 0, i32 26
  store i32 0, i32* %calculatedCombinedCRC, align 4
  %26 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %total_in_lo32 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %26, i32 0, i32 2
  store i32 0, i32* %total_in_lo32, align 4
  %27 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %total_in_hi32 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %27, i32 0, i32 3
  store i32 0, i32* %total_in_hi32, align 8
  %28 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %total_out_lo32 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %28, i32 0, i32 6
  store i32 0, i32* %total_out_lo32, align 4
  %29 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %total_out_hi32 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %29, i32 0, i32 7
  store i32 0, i32* %total_out_hi32, align 8
  %30 = load i32, i32* %small.addr, align 4
  %conv = trunc i32 %30 to i8
  %31 = load %struct.DState*, %struct.DState** %s, align 8
  %smallDecompress = getelementptr inbounds %struct.DState, %struct.DState* %31, i32 0, i32 10
  store i8 %conv, i8* %smallDecompress, align 4
  %32 = load %struct.DState*, %struct.DState** %s, align 8
  %ll4 = getelementptr inbounds %struct.DState, %struct.DState* %32, i32 0, i32 22
  store i8* null, i8** %ll4, align 8
  %33 = load %struct.DState*, %struct.DState** %s, align 8
  %ll16 = getelementptr inbounds %struct.DState, %struct.DState* %33, i32 0, i32 21
  store i16* null, i16** %ll16, align 8
  %34 = load %struct.DState*, %struct.DState** %s, align 8
  %tt = getelementptr inbounds %struct.DState, %struct.DState* %34, i32 0, i32 20
  store i32* null, i32** %tt, align 8
  %35 = load %struct.DState*, %struct.DState** %s, align 8
  %currBlockNo = getelementptr inbounds %struct.DState, %struct.DState* %35, i32 0, i32 11
  store i32 0, i32* %currBlockNo, align 8
  %36 = load i32, i32* %verbosity.addr, align 4
  %37 = load %struct.DState*, %struct.DState** %s, align 8
  %verbosity26 = getelementptr inbounds %struct.DState, %struct.DState* %37, i32 0, i32 12
  store i32 %36, i32* %verbosity26, align 4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end23, %if.then22, %if.then9, %if.then5, %if.then1, %if.then
  %38 = load i32, i32* %retval, align 4
  ret i32 %38
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BZ2_indexIntoF(i32 %indx, i32* %cftab) #0 {
entry:
  %indx.addr = alloca i32, align 4
  %cftab.addr = alloca i32*, align 8
  %nb = alloca i32, align 4
  %na = alloca i32, align 4
  %mid = alloca i32, align 4
  store i32 %indx, i32* %indx.addr, align 4
  store i32* %cftab, i32** %cftab.addr, align 8
  store i32 0, i32* %nb, align 4
  store i32 256, i32* %na, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load i32, i32* %nb, align 4
  %1 = load i32, i32* %na, align 4
  %add = add nsw i32 %0, %1
  %shr = ashr i32 %add, 1
  store i32 %shr, i32* %mid, align 4
  %2 = load i32, i32* %indx.addr, align 4
  %3 = load i32*, i32** %cftab.addr, align 8
  %4 = load i32, i32* %mid, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %cmp = icmp sge i32 %2, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %6 = load i32, i32* %mid, align 4
  store i32 %6, i32* %nb, align 4
  br label %if.end

if.else:                                          ; preds = %do.body
  %7 = load i32, i32* %mid, align 4
  store i32 %7, i32* %na, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %8 = load i32, i32* %na, align 4
  %9 = load i32, i32* %nb, align 4
  %sub = sub nsw i32 %8, %9
  %cmp1 = icmp ne i32 %sub, 1
  br i1 %cmp1, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %10 = load i32, i32* %nb, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BZ2_bzDecompress(%struct.bz_stream* %strm) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca %struct.bz_stream*, align 8
  %corrupt = alloca i8, align 1
  %s = alloca %struct.DState*, align 8
  %r = alloca i32, align 4
  store %struct.bz_stream* %strm, %struct.bz_stream** %strm.addr, align 8
  %0 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %cmp = icmp eq %struct.bz_stream* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -2, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %state = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1, i32 0, i32 8
  %2 = load i8*, i8** %state, align 8
  %3 = bitcast i8* %2 to %struct.DState*
  store %struct.DState* %3, %struct.DState** %s, align 8
  %4 = load %struct.DState*, %struct.DState** %s, align 8
  %cmp1 = icmp eq %struct.DState* %4, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 -2, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %5 = load %struct.DState*, %struct.DState** %s, align 8
  %strm4 = getelementptr inbounds %struct.DState, %struct.DState* %5, i32 0, i32 0
  %6 = load %struct.bz_stream*, %struct.bz_stream** %strm4, align 8
  %7 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %cmp5 = icmp ne %struct.bz_stream* %6, %7
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  store i32 -2, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end3
  br label %while.body

while.body:                                       ; preds = %if.end7, %if.end70
  %8 = load %struct.DState*, %struct.DState** %s, align 8
  %state8 = getelementptr inbounds %struct.DState, %struct.DState* %8, i32 0, i32 1
  %9 = load i32, i32* %state8, align 8
  %cmp9 = icmp eq i32 %9, 1
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %while.body
  store i32 -1, i32* %retval, align 4
  br label %return

if.end11:                                         ; preds = %while.body
  %10 = load %struct.DState*, %struct.DState** %s, align 8
  %state12 = getelementptr inbounds %struct.DState, %struct.DState* %10, i32 0, i32 1
  %11 = load i32, i32* %state12, align 8
  %cmp13 = icmp eq i32 %11, 2
  br i1 %cmp13, label %if.then14, label %if.end47

if.then14:                                        ; preds = %if.end11
  %12 = load %struct.DState*, %struct.DState** %s, align 8
  %smallDecompress = getelementptr inbounds %struct.DState, %struct.DState* %12, i32 0, i32 10
  %13 = load i8, i8* %smallDecompress, align 4
  %tobool = icmp ne i8 %13, 0
  br i1 %tobool, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.then14
  %14 = load %struct.DState*, %struct.DState** %s, align 8
  %call = call zeroext i8 @unRLE_obuf_to_output_SMALL(%struct.DState* %14)
  store i8 %call, i8* %corrupt, align 1
  br label %if.end17

if.else:                                          ; preds = %if.then14
  %15 = load %struct.DState*, %struct.DState** %s, align 8
  %call16 = call zeroext i8 @unRLE_obuf_to_output_FAST(%struct.DState* %15)
  store i8 %call16, i8* %corrupt, align 1
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then15
  %16 = load i8, i8* %corrupt, align 1
  %tobool18 = icmp ne i8 %16, 0
  br i1 %tobool18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end17
  store i32 -4, i32* %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.end17
  %17 = load %struct.DState*, %struct.DState** %s, align 8
  %nblock_used = getelementptr inbounds %struct.DState, %struct.DState* %17, i32 0, i32 17
  %18 = load i32, i32* %nblock_used, align 4
  %19 = load %struct.DState*, %struct.DState** %s, align 8
  %save_nblock = getelementptr inbounds %struct.DState, %struct.DState* %19, i32 0, i32 51
  %20 = load i32, i32* %save_nblock, align 8
  %add = add nsw i32 %20, 1
  %cmp21 = icmp eq i32 %18, %add
  br i1 %cmp21, label %land.lhs.true, label %if.else45

land.lhs.true:                                    ; preds = %if.end20
  %21 = load %struct.DState*, %struct.DState** %s, align 8
  %state_out_len = getelementptr inbounds %struct.DState, %struct.DState* %21, i32 0, i32 3
  %22 = load i32, i32* %state_out_len, align 8
  %cmp22 = icmp eq i32 %22, 0
  br i1 %cmp22, label %if.then23, label %if.else45

if.then23:                                        ; preds = %land.lhs.true
  %23 = load %struct.DState*, %struct.DState** %s, align 8
  %calculatedBlockCRC = getelementptr inbounds %struct.DState, %struct.DState* %23, i32 0, i32 25
  %24 = load i32, i32* %calculatedBlockCRC, align 8
  %neg = xor i32 %24, -1
  %25 = load %struct.DState*, %struct.DState** %s, align 8
  %calculatedBlockCRC24 = getelementptr inbounds %struct.DState, %struct.DState* %25, i32 0, i32 25
  store i32 %neg, i32* %calculatedBlockCRC24, align 8
  %26 = load %struct.DState*, %struct.DState** %s, align 8
  %verbosity = getelementptr inbounds %struct.DState, %struct.DState* %26, i32 0, i32 12
  %27 = load i32, i32* %verbosity, align 4
  %cmp25 = icmp sge i32 %27, 3
  br i1 %cmp25, label %if.then26, label %if.end29

if.then26:                                        ; preds = %if.then23
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %29 = load %struct.DState*, %struct.DState** %s, align 8
  %storedBlockCRC = getelementptr inbounds %struct.DState, %struct.DState* %29, i32 0, i32 23
  %30 = load i32, i32* %storedBlockCRC, align 8
  %31 = load %struct.DState*, %struct.DState** %s, align 8
  %calculatedBlockCRC27 = getelementptr inbounds %struct.DState, %struct.DState* %31, i32 0, i32 25
  %32 = load i32, i32* %calculatedBlockCRC27, align 8
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %30, i32 %32)
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.then23
  %33 = load %struct.DState*, %struct.DState** %s, align 8
  %verbosity30 = getelementptr inbounds %struct.DState, %struct.DState* %33, i32 0, i32 12
  %34 = load i32, i32* %verbosity30, align 4
  %cmp31 = icmp sge i32 %34, 2
  br i1 %cmp31, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.end29
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end29
  %36 = load %struct.DState*, %struct.DState** %s, align 8
  %calculatedBlockCRC35 = getelementptr inbounds %struct.DState, %struct.DState* %36, i32 0, i32 25
  %37 = load i32, i32* %calculatedBlockCRC35, align 8
  %38 = load %struct.DState*, %struct.DState** %s, align 8
  %storedBlockCRC36 = getelementptr inbounds %struct.DState, %struct.DState* %38, i32 0, i32 23
  %39 = load i32, i32* %storedBlockCRC36, align 8
  %cmp37 = icmp ne i32 %37, %39
  br i1 %cmp37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end34
  store i32 -4, i32* %retval, align 4
  br label %return

if.end39:                                         ; preds = %if.end34
  %40 = load %struct.DState*, %struct.DState** %s, align 8
  %calculatedCombinedCRC = getelementptr inbounds %struct.DState, %struct.DState* %40, i32 0, i32 26
  %41 = load i32, i32* %calculatedCombinedCRC, align 4
  %shl = shl i32 %41, 1
  %42 = load %struct.DState*, %struct.DState** %s, align 8
  %calculatedCombinedCRC40 = getelementptr inbounds %struct.DState, %struct.DState* %42, i32 0, i32 26
  %43 = load i32, i32* %calculatedCombinedCRC40, align 4
  %shr = lshr i32 %43, 31
  %or = or i32 %shl, %shr
  %44 = load %struct.DState*, %struct.DState** %s, align 8
  %calculatedCombinedCRC41 = getelementptr inbounds %struct.DState, %struct.DState* %44, i32 0, i32 26
  store i32 %or, i32* %calculatedCombinedCRC41, align 4
  %45 = load %struct.DState*, %struct.DState** %s, align 8
  %calculatedBlockCRC42 = getelementptr inbounds %struct.DState, %struct.DState* %45, i32 0, i32 25
  %46 = load i32, i32* %calculatedBlockCRC42, align 8
  %47 = load %struct.DState*, %struct.DState** %s, align 8
  %calculatedCombinedCRC43 = getelementptr inbounds %struct.DState, %struct.DState* %47, i32 0, i32 26
  %48 = load i32, i32* %calculatedCombinedCRC43, align 4
  %xor = xor i32 %48, %46
  store i32 %xor, i32* %calculatedCombinedCRC43, align 4
  %49 = load %struct.DState*, %struct.DState** %s, align 8
  %state44 = getelementptr inbounds %struct.DState, %struct.DState* %49, i32 0, i32 1
  store i32 14, i32* %state44, align 8
  br label %if.end46

if.else45:                                        ; preds = %land.lhs.true, %if.end20
  store i32 0, i32* %retval, align 4
  br label %return

if.end46:                                         ; preds = %if.end39
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.end11
  %50 = load %struct.DState*, %struct.DState** %s, align 8
  %state48 = getelementptr inbounds %struct.DState, %struct.DState* %50, i32 0, i32 1
  %51 = load i32, i32* %state48, align 8
  %cmp49 = icmp sge i32 %51, 10
  br i1 %cmp49, label %if.then50, label %if.end70

if.then50:                                        ; preds = %if.end47
  %52 = load %struct.DState*, %struct.DState** %s, align 8
  %call51 = call i32 @BZ2_decompress(%struct.DState* %52)
  store i32 %call51, i32* %r, align 4
  %53 = load i32, i32* %r, align 4
  %cmp52 = icmp eq i32 %53, 4
  br i1 %cmp52, label %if.then53, label %if.end65

if.then53:                                        ; preds = %if.then50
  %54 = load %struct.DState*, %struct.DState** %s, align 8
  %verbosity54 = getelementptr inbounds %struct.DState, %struct.DState* %54, i32 0, i32 12
  %55 = load i32, i32* %verbosity54, align 4
  %cmp55 = icmp sge i32 %55, 3
  br i1 %cmp55, label %if.then56, label %if.end59

if.then56:                                        ; preds = %if.then53
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %57 = load %struct.DState*, %struct.DState** %s, align 8
  %storedCombinedCRC = getelementptr inbounds %struct.DState, %struct.DState* %57, i32 0, i32 24
  %58 = load i32, i32* %storedCombinedCRC, align 4
  %59 = load %struct.DState*, %struct.DState** %s, align 8
  %calculatedCombinedCRC57 = getelementptr inbounds %struct.DState, %struct.DState* %59, i32 0, i32 26
  %60 = load i32, i32* %calculatedCombinedCRC57, align 4
  %call58 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %56, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), i32 %58, i32 %60)
  br label %if.end59

if.end59:                                         ; preds = %if.then56, %if.then53
  %61 = load %struct.DState*, %struct.DState** %s, align 8
  %calculatedCombinedCRC60 = getelementptr inbounds %struct.DState, %struct.DState* %61, i32 0, i32 26
  %62 = load i32, i32* %calculatedCombinedCRC60, align 4
  %63 = load %struct.DState*, %struct.DState** %s, align 8
  %storedCombinedCRC61 = getelementptr inbounds %struct.DState, %struct.DState* %63, i32 0, i32 24
  %64 = load i32, i32* %storedCombinedCRC61, align 4
  %cmp62 = icmp ne i32 %62, %64
  br i1 %cmp62, label %if.then63, label %if.end64

if.then63:                                        ; preds = %if.end59
  store i32 -4, i32* %retval, align 4
  br label %return

if.end64:                                         ; preds = %if.end59
  %65 = load i32, i32* %r, align 4
  store i32 %65, i32* %retval, align 4
  br label %return

if.end65:                                         ; preds = %if.then50
  %66 = load %struct.DState*, %struct.DState** %s, align 8
  %state66 = getelementptr inbounds %struct.DState, %struct.DState* %66, i32 0, i32 1
  %67 = load i32, i32* %state66, align 8
  %cmp67 = icmp ne i32 %67, 2
  br i1 %cmp67, label %if.then68, label %if.end69

if.then68:                                        ; preds = %if.end65
  %68 = load i32, i32* %r, align 4
  store i32 %68, i32* %retval, align 4
  br label %return

if.end69:                                         ; preds = %if.end65
  br label %if.end70

if.end70:                                         ; preds = %if.end69, %if.end47
  br label %while.body

return:                                           ; preds = %if.then68, %if.end64, %if.then63, %if.else45, %if.then38, %if.then19, %if.then10, %if.then6, %if.then2, %if.then
  %69 = load i32, i32* %retval, align 4
  ret i32 %69
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @unRLE_obuf_to_output_SMALL(%struct.DState* %s) #0 {
entry:
  %retval = alloca i8, align 1
  %s.addr = alloca %struct.DState*, align 8
  %k1 = alloca i8, align 1
  store %struct.DState* %s, %struct.DState** %s.addr, align 8
  %0 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %blockRandomised = getelementptr inbounds %struct.DState, %struct.DState* %0, i32 0, i32 4
  %1 = load i8, i8* %blockRandomised, align 4
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.then, %if.then87, %if.then93, %if.then155, %if.then161, %if.then223, %if.then229, %if.end328
  br label %while.body2

while.body2:                                      ; preds = %while.body, %if.end26
  %2 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm = getelementptr inbounds %struct.DState, %struct.DState* %2, i32 0, i32 0
  %3 = load %struct.bz_stream*, %struct.bz_stream** %strm, align 8
  %avail_out = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %3, i32 0, i32 5
  %4 = load i32, i32* %avail_out, align 8
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then3, label %if.end

if.then3:                                         ; preds = %while.body2
  store i8 0, i8* %retval, align 1
  br label %return

if.end:                                           ; preds = %while.body2
  %5 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_len = getelementptr inbounds %struct.DState, %struct.DState* %5, i32 0, i32 3
  %6 = load i32, i32* %state_out_len, align 8
  %cmp4 = icmp eq i32 %6, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  br label %while.end

if.end6:                                          ; preds = %if.end
  %7 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_ch = getelementptr inbounds %struct.DState, %struct.DState* %7, i32 0, i32 2
  %8 = load i8, i8* %state_out_ch, align 4
  %9 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm7 = getelementptr inbounds %struct.DState, %struct.DState* %9, i32 0, i32 0
  %10 = load %struct.bz_stream*, %struct.bz_stream** %strm7, align 8
  %next_out = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %10, i32 0, i32 4
  %11 = load i8*, i8** %next_out, align 8
  store i8 %8, i8* %11, align 1
  %12 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %calculatedBlockCRC = getelementptr inbounds %struct.DState, %struct.DState* %12, i32 0, i32 25
  %13 = load i32, i32* %calculatedBlockCRC, align 8
  %shl = shl i32 %13, 8
  %14 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %calculatedBlockCRC8 = getelementptr inbounds %struct.DState, %struct.DState* %14, i32 0, i32 25
  %15 = load i32, i32* %calculatedBlockCRC8, align 8
  %shr = lshr i32 %15, 24
  %16 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_ch9 = getelementptr inbounds %struct.DState, %struct.DState* %16, i32 0, i32 2
  %17 = load i8, i8* %state_out_ch9, align 4
  %conv = zext i8 %17 to i32
  %xor = xor i32 %shr, %conv
  %idxprom = zext i32 %xor to i64
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* @BZ2_crc32Table, i64 0, i64 %idxprom
  %18 = load i32, i32* %arrayidx, align 4
  %xor10 = xor i32 %shl, %18
  %19 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %calculatedBlockCRC11 = getelementptr inbounds %struct.DState, %struct.DState* %19, i32 0, i32 25
  store i32 %xor10, i32* %calculatedBlockCRC11, align 8
  %20 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_len12 = getelementptr inbounds %struct.DState, %struct.DState* %20, i32 0, i32 3
  %21 = load i32, i32* %state_out_len12, align 8
  %dec = add nsw i32 %21, -1
  store i32 %dec, i32* %state_out_len12, align 8
  %22 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm13 = getelementptr inbounds %struct.DState, %struct.DState* %22, i32 0, i32 0
  %23 = load %struct.bz_stream*, %struct.bz_stream** %strm13, align 8
  %next_out14 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %23, i32 0, i32 4
  %24 = load i8*, i8** %next_out14, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr, i8** %next_out14, align 8
  %25 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm15 = getelementptr inbounds %struct.DState, %struct.DState* %25, i32 0, i32 0
  %26 = load %struct.bz_stream*, %struct.bz_stream** %strm15, align 8
  %avail_out16 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %26, i32 0, i32 5
  %27 = load i32, i32* %avail_out16, align 8
  %dec17 = add i32 %27, -1
  store i32 %dec17, i32* %avail_out16, align 8
  %28 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm18 = getelementptr inbounds %struct.DState, %struct.DState* %28, i32 0, i32 0
  %29 = load %struct.bz_stream*, %struct.bz_stream** %strm18, align 8
  %total_out_lo32 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %29, i32 0, i32 6
  %30 = load i32, i32* %total_out_lo32, align 4
  %inc = add i32 %30, 1
  store i32 %inc, i32* %total_out_lo32, align 4
  %31 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm19 = getelementptr inbounds %struct.DState, %struct.DState* %31, i32 0, i32 0
  %32 = load %struct.bz_stream*, %struct.bz_stream** %strm19, align 8
  %total_out_lo3220 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %32, i32 0, i32 6
  %33 = load i32, i32* %total_out_lo3220, align 4
  %cmp21 = icmp eq i32 %33, 0
  br i1 %cmp21, label %if.then23, label %if.end26

if.then23:                                        ; preds = %if.end6
  %34 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm24 = getelementptr inbounds %struct.DState, %struct.DState* %34, i32 0, i32 0
  %35 = load %struct.bz_stream*, %struct.bz_stream** %strm24, align 8
  %total_out_hi32 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %35, i32 0, i32 7
  %36 = load i32, i32* %total_out_hi32, align 8
  %inc25 = add i32 %36, 1
  store i32 %inc25, i32* %total_out_hi32, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.end6
  br label %while.body2

while.end:                                        ; preds = %if.then5
  %37 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used = getelementptr inbounds %struct.DState, %struct.DState* %37, i32 0, i32 17
  %38 = load i32, i32* %nblock_used, align 4
  %39 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nblock = getelementptr inbounds %struct.DState, %struct.DState* %39, i32 0, i32 51
  %40 = load i32, i32* %save_nblock, align 8
  %add = add nsw i32 %40, 1
  %cmp27 = icmp eq i32 %38, %add
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %while.end
  store i8 0, i8* %retval, align 1
  br label %return

if.end30:                                         ; preds = %while.end
  %41 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used31 = getelementptr inbounds %struct.DState, %struct.DState* %41, i32 0, i32 17
  %42 = load i32, i32* %nblock_used31, align 4
  %43 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nblock32 = getelementptr inbounds %struct.DState, %struct.DState* %43, i32 0, i32 51
  %44 = load i32, i32* %save_nblock32, align 8
  %add33 = add nsw i32 %44, 1
  %cmp34 = icmp sgt i32 %42, %add33
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end30
  store i8 1, i8* %retval, align 1
  br label %return

if.end37:                                         ; preds = %if.end30
  %45 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_len38 = getelementptr inbounds %struct.DState, %struct.DState* %45, i32 0, i32 3
  store i32 1, i32* %state_out_len38, align 8
  %46 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k0 = getelementptr inbounds %struct.DState, %struct.DState* %46, i32 0, i32 15
  %47 = load i32, i32* %k0, align 8
  %conv39 = trunc i32 %47 to i8
  %48 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_ch40 = getelementptr inbounds %struct.DState, %struct.DState* %48, i32 0, i32 2
  store i8 %conv39, i8* %state_out_ch40, align 4
  %49 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos = getelementptr inbounds %struct.DState, %struct.DState* %49, i32 0, i32 14
  %50 = load i32, i32* %tPos, align 4
  %51 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %cftab = getelementptr inbounds %struct.DState, %struct.DState* %51, i32 0, i32 18
  %arraydecay = getelementptr inbounds [257 x i32], [257 x i32]* %cftab, i64 0, i64 0
  %call = call i32 @BZ2_indexIntoF(i32 %50, i32* %arraydecay)
  %conv41 = trunc i32 %call to i8
  store i8 %conv41, i8* %k1, align 1
  %52 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll16 = getelementptr inbounds %struct.DState, %struct.DState* %52, i32 0, i32 21
  %53 = load i16*, i16** %ll16, align 8
  %54 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos42 = getelementptr inbounds %struct.DState, %struct.DState* %54, i32 0, i32 14
  %55 = load i32, i32* %tPos42, align 4
  %idxprom43 = zext i32 %55 to i64
  %arrayidx44 = getelementptr inbounds i16, i16* %53, i64 %idxprom43
  %56 = load i16, i16* %arrayidx44, align 2
  %conv45 = zext i16 %56 to i32
  %57 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll4 = getelementptr inbounds %struct.DState, %struct.DState* %57, i32 0, i32 22
  %58 = load i8*, i8** %ll4, align 8
  %59 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos46 = getelementptr inbounds %struct.DState, %struct.DState* %59, i32 0, i32 14
  %60 = load i32, i32* %tPos46, align 4
  %shr47 = lshr i32 %60, 1
  %idxprom48 = zext i32 %shr47 to i64
  %arrayidx49 = getelementptr inbounds i8, i8* %58, i64 %idxprom48
  %61 = load i8, i8* %arrayidx49, align 1
  %conv50 = zext i8 %61 to i32
  %62 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos51 = getelementptr inbounds %struct.DState, %struct.DState* %62, i32 0, i32 14
  %63 = load i32, i32* %tPos51, align 4
  %shl52 = shl i32 %63, 2
  %and = and i32 %shl52, 4
  %shr53 = lshr i32 %conv50, %and
  %and54 = and i32 %shr53, 15
  %shl55 = shl i32 %and54, 16
  %or = or i32 %conv45, %shl55
  %64 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos56 = getelementptr inbounds %struct.DState, %struct.DState* %64, i32 0, i32 14
  store i32 %or, i32* %tPos56, align 4
  %65 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo = getelementptr inbounds %struct.DState, %struct.DState* %65, i32 0, i32 5
  %66 = load i32, i32* %rNToGo, align 8
  %cmp57 = icmp eq i32 %66, 0
  br i1 %cmp57, label %if.then59, label %if.end71

if.then59:                                        ; preds = %if.end37
  %67 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos = getelementptr inbounds %struct.DState, %struct.DState* %67, i32 0, i32 6
  %68 = load i32, i32* %rTPos, align 4
  %idxprom60 = sext i32 %68 to i64
  %arrayidx61 = getelementptr inbounds [512 x i32], [512 x i32]* @BZ2_rNums, i64 0, i64 %idxprom60
  %69 = load i32, i32* %arrayidx61, align 4
  %70 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo62 = getelementptr inbounds %struct.DState, %struct.DState* %70, i32 0, i32 5
  store i32 %69, i32* %rNToGo62, align 8
  %71 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos63 = getelementptr inbounds %struct.DState, %struct.DState* %71, i32 0, i32 6
  %72 = load i32, i32* %rTPos63, align 4
  %inc64 = add nsw i32 %72, 1
  store i32 %inc64, i32* %rTPos63, align 4
  %73 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos65 = getelementptr inbounds %struct.DState, %struct.DState* %73, i32 0, i32 6
  %74 = load i32, i32* %rTPos65, align 4
  %cmp66 = icmp eq i32 %74, 512
  br i1 %cmp66, label %if.then68, label %if.end70

if.then68:                                        ; preds = %if.then59
  %75 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos69 = getelementptr inbounds %struct.DState, %struct.DState* %75, i32 0, i32 6
  store i32 0, i32* %rTPos69, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %if.then59
  br label %if.end71

if.end71:                                         ; preds = %if.end70, %if.end37
  %76 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo72 = getelementptr inbounds %struct.DState, %struct.DState* %76, i32 0, i32 5
  %77 = load i32, i32* %rNToGo72, align 8
  %dec73 = add nsw i32 %77, -1
  store i32 %dec73, i32* %rNToGo72, align 8
  %78 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo74 = getelementptr inbounds %struct.DState, %struct.DState* %78, i32 0, i32 5
  %79 = load i32, i32* %rNToGo74, align 8
  %cmp75 = icmp eq i32 %79, 1
  %80 = zext i1 %cmp75 to i64
  %cond = select i1 %cmp75, i32 1, i32 0
  %81 = load i8, i8* %k1, align 1
  %conv77 = zext i8 %81 to i32
  %xor78 = xor i32 %conv77, %cond
  %conv79 = trunc i32 %xor78 to i8
  store i8 %conv79, i8* %k1, align 1
  %82 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used80 = getelementptr inbounds %struct.DState, %struct.DState* %82, i32 0, i32 17
  %83 = load i32, i32* %nblock_used80, align 4
  %inc81 = add nsw i32 %83, 1
  store i32 %inc81, i32* %nblock_used80, align 4
  %84 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used82 = getelementptr inbounds %struct.DState, %struct.DState* %84, i32 0, i32 17
  %85 = load i32, i32* %nblock_used82, align 4
  %86 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nblock83 = getelementptr inbounds %struct.DState, %struct.DState* %86, i32 0, i32 51
  %87 = load i32, i32* %save_nblock83, align 8
  %add84 = add nsw i32 %87, 1
  %cmp85 = icmp eq i32 %85, %add84
  br i1 %cmp85, label %if.then87, label %if.end88

if.then87:                                        ; preds = %if.end71
  br label %while.body

if.end88:                                         ; preds = %if.end71
  %88 = load i8, i8* %k1, align 1
  %conv89 = zext i8 %88 to i32
  %89 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k090 = getelementptr inbounds %struct.DState, %struct.DState* %89, i32 0, i32 15
  %90 = load i32, i32* %k090, align 8
  %cmp91 = icmp ne i32 %conv89, %90
  br i1 %cmp91, label %if.then93, label %if.end96

if.then93:                                        ; preds = %if.end88
  %91 = load i8, i8* %k1, align 1
  %conv94 = zext i8 %91 to i32
  %92 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k095 = getelementptr inbounds %struct.DState, %struct.DState* %92, i32 0, i32 15
  store i32 %conv94, i32* %k095, align 8
  br label %while.body

if.end96:                                         ; preds = %if.end88
  %93 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_len97 = getelementptr inbounds %struct.DState, %struct.DState* %93, i32 0, i32 3
  store i32 2, i32* %state_out_len97, align 8
  %94 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos98 = getelementptr inbounds %struct.DState, %struct.DState* %94, i32 0, i32 14
  %95 = load i32, i32* %tPos98, align 4
  %96 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %cftab99 = getelementptr inbounds %struct.DState, %struct.DState* %96, i32 0, i32 18
  %arraydecay100 = getelementptr inbounds [257 x i32], [257 x i32]* %cftab99, i64 0, i64 0
  %call101 = call i32 @BZ2_indexIntoF(i32 %95, i32* %arraydecay100)
  %conv102 = trunc i32 %call101 to i8
  store i8 %conv102, i8* %k1, align 1
  %97 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll16103 = getelementptr inbounds %struct.DState, %struct.DState* %97, i32 0, i32 21
  %98 = load i16*, i16** %ll16103, align 8
  %99 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos104 = getelementptr inbounds %struct.DState, %struct.DState* %99, i32 0, i32 14
  %100 = load i32, i32* %tPos104, align 4
  %idxprom105 = zext i32 %100 to i64
  %arrayidx106 = getelementptr inbounds i16, i16* %98, i64 %idxprom105
  %101 = load i16, i16* %arrayidx106, align 2
  %conv107 = zext i16 %101 to i32
  %102 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll4108 = getelementptr inbounds %struct.DState, %struct.DState* %102, i32 0, i32 22
  %103 = load i8*, i8** %ll4108, align 8
  %104 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos109 = getelementptr inbounds %struct.DState, %struct.DState* %104, i32 0, i32 14
  %105 = load i32, i32* %tPos109, align 4
  %shr110 = lshr i32 %105, 1
  %idxprom111 = zext i32 %shr110 to i64
  %arrayidx112 = getelementptr inbounds i8, i8* %103, i64 %idxprom111
  %106 = load i8, i8* %arrayidx112, align 1
  %conv113 = zext i8 %106 to i32
  %107 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos114 = getelementptr inbounds %struct.DState, %struct.DState* %107, i32 0, i32 14
  %108 = load i32, i32* %tPos114, align 4
  %shl115 = shl i32 %108, 2
  %and116 = and i32 %shl115, 4
  %shr117 = lshr i32 %conv113, %and116
  %and118 = and i32 %shr117, 15
  %shl119 = shl i32 %and118, 16
  %or120 = or i32 %conv107, %shl119
  %109 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos121 = getelementptr inbounds %struct.DState, %struct.DState* %109, i32 0, i32 14
  store i32 %or120, i32* %tPos121, align 4
  %110 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo122 = getelementptr inbounds %struct.DState, %struct.DState* %110, i32 0, i32 5
  %111 = load i32, i32* %rNToGo122, align 8
  %cmp123 = icmp eq i32 %111, 0
  br i1 %cmp123, label %if.then125, label %if.end138

if.then125:                                       ; preds = %if.end96
  %112 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos126 = getelementptr inbounds %struct.DState, %struct.DState* %112, i32 0, i32 6
  %113 = load i32, i32* %rTPos126, align 4
  %idxprom127 = sext i32 %113 to i64
  %arrayidx128 = getelementptr inbounds [512 x i32], [512 x i32]* @BZ2_rNums, i64 0, i64 %idxprom127
  %114 = load i32, i32* %arrayidx128, align 4
  %115 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo129 = getelementptr inbounds %struct.DState, %struct.DState* %115, i32 0, i32 5
  store i32 %114, i32* %rNToGo129, align 8
  %116 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos130 = getelementptr inbounds %struct.DState, %struct.DState* %116, i32 0, i32 6
  %117 = load i32, i32* %rTPos130, align 4
  %inc131 = add nsw i32 %117, 1
  store i32 %inc131, i32* %rTPos130, align 4
  %118 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos132 = getelementptr inbounds %struct.DState, %struct.DState* %118, i32 0, i32 6
  %119 = load i32, i32* %rTPos132, align 4
  %cmp133 = icmp eq i32 %119, 512
  br i1 %cmp133, label %if.then135, label %if.end137

if.then135:                                       ; preds = %if.then125
  %120 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos136 = getelementptr inbounds %struct.DState, %struct.DState* %120, i32 0, i32 6
  store i32 0, i32* %rTPos136, align 4
  br label %if.end137

if.end137:                                        ; preds = %if.then135, %if.then125
  br label %if.end138

if.end138:                                        ; preds = %if.end137, %if.end96
  %121 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo139 = getelementptr inbounds %struct.DState, %struct.DState* %121, i32 0, i32 5
  %122 = load i32, i32* %rNToGo139, align 8
  %dec140 = add nsw i32 %122, -1
  store i32 %dec140, i32* %rNToGo139, align 8
  %123 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo141 = getelementptr inbounds %struct.DState, %struct.DState* %123, i32 0, i32 5
  %124 = load i32, i32* %rNToGo141, align 8
  %cmp142 = icmp eq i32 %124, 1
  %125 = zext i1 %cmp142 to i64
  %cond144 = select i1 %cmp142, i32 1, i32 0
  %126 = load i8, i8* %k1, align 1
  %conv145 = zext i8 %126 to i32
  %xor146 = xor i32 %conv145, %cond144
  %conv147 = trunc i32 %xor146 to i8
  store i8 %conv147, i8* %k1, align 1
  %127 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used148 = getelementptr inbounds %struct.DState, %struct.DState* %127, i32 0, i32 17
  %128 = load i32, i32* %nblock_used148, align 4
  %inc149 = add nsw i32 %128, 1
  store i32 %inc149, i32* %nblock_used148, align 4
  %129 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used150 = getelementptr inbounds %struct.DState, %struct.DState* %129, i32 0, i32 17
  %130 = load i32, i32* %nblock_used150, align 4
  %131 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nblock151 = getelementptr inbounds %struct.DState, %struct.DState* %131, i32 0, i32 51
  %132 = load i32, i32* %save_nblock151, align 8
  %add152 = add nsw i32 %132, 1
  %cmp153 = icmp eq i32 %130, %add152
  br i1 %cmp153, label %if.then155, label %if.end156

if.then155:                                       ; preds = %if.end138
  br label %while.body

if.end156:                                        ; preds = %if.end138
  %133 = load i8, i8* %k1, align 1
  %conv157 = zext i8 %133 to i32
  %134 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k0158 = getelementptr inbounds %struct.DState, %struct.DState* %134, i32 0, i32 15
  %135 = load i32, i32* %k0158, align 8
  %cmp159 = icmp ne i32 %conv157, %135
  br i1 %cmp159, label %if.then161, label %if.end164

if.then161:                                       ; preds = %if.end156
  %136 = load i8, i8* %k1, align 1
  %conv162 = zext i8 %136 to i32
  %137 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k0163 = getelementptr inbounds %struct.DState, %struct.DState* %137, i32 0, i32 15
  store i32 %conv162, i32* %k0163, align 8
  br label %while.body

if.end164:                                        ; preds = %if.end156
  %138 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_len165 = getelementptr inbounds %struct.DState, %struct.DState* %138, i32 0, i32 3
  store i32 3, i32* %state_out_len165, align 8
  %139 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos166 = getelementptr inbounds %struct.DState, %struct.DState* %139, i32 0, i32 14
  %140 = load i32, i32* %tPos166, align 4
  %141 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %cftab167 = getelementptr inbounds %struct.DState, %struct.DState* %141, i32 0, i32 18
  %arraydecay168 = getelementptr inbounds [257 x i32], [257 x i32]* %cftab167, i64 0, i64 0
  %call169 = call i32 @BZ2_indexIntoF(i32 %140, i32* %arraydecay168)
  %conv170 = trunc i32 %call169 to i8
  store i8 %conv170, i8* %k1, align 1
  %142 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll16171 = getelementptr inbounds %struct.DState, %struct.DState* %142, i32 0, i32 21
  %143 = load i16*, i16** %ll16171, align 8
  %144 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos172 = getelementptr inbounds %struct.DState, %struct.DState* %144, i32 0, i32 14
  %145 = load i32, i32* %tPos172, align 4
  %idxprom173 = zext i32 %145 to i64
  %arrayidx174 = getelementptr inbounds i16, i16* %143, i64 %idxprom173
  %146 = load i16, i16* %arrayidx174, align 2
  %conv175 = zext i16 %146 to i32
  %147 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll4176 = getelementptr inbounds %struct.DState, %struct.DState* %147, i32 0, i32 22
  %148 = load i8*, i8** %ll4176, align 8
  %149 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos177 = getelementptr inbounds %struct.DState, %struct.DState* %149, i32 0, i32 14
  %150 = load i32, i32* %tPos177, align 4
  %shr178 = lshr i32 %150, 1
  %idxprom179 = zext i32 %shr178 to i64
  %arrayidx180 = getelementptr inbounds i8, i8* %148, i64 %idxprom179
  %151 = load i8, i8* %arrayidx180, align 1
  %conv181 = zext i8 %151 to i32
  %152 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos182 = getelementptr inbounds %struct.DState, %struct.DState* %152, i32 0, i32 14
  %153 = load i32, i32* %tPos182, align 4
  %shl183 = shl i32 %153, 2
  %and184 = and i32 %shl183, 4
  %shr185 = lshr i32 %conv181, %and184
  %and186 = and i32 %shr185, 15
  %shl187 = shl i32 %and186, 16
  %or188 = or i32 %conv175, %shl187
  %154 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos189 = getelementptr inbounds %struct.DState, %struct.DState* %154, i32 0, i32 14
  store i32 %or188, i32* %tPos189, align 4
  %155 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo190 = getelementptr inbounds %struct.DState, %struct.DState* %155, i32 0, i32 5
  %156 = load i32, i32* %rNToGo190, align 8
  %cmp191 = icmp eq i32 %156, 0
  br i1 %cmp191, label %if.then193, label %if.end206

if.then193:                                       ; preds = %if.end164
  %157 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos194 = getelementptr inbounds %struct.DState, %struct.DState* %157, i32 0, i32 6
  %158 = load i32, i32* %rTPos194, align 4
  %idxprom195 = sext i32 %158 to i64
  %arrayidx196 = getelementptr inbounds [512 x i32], [512 x i32]* @BZ2_rNums, i64 0, i64 %idxprom195
  %159 = load i32, i32* %arrayidx196, align 4
  %160 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo197 = getelementptr inbounds %struct.DState, %struct.DState* %160, i32 0, i32 5
  store i32 %159, i32* %rNToGo197, align 8
  %161 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos198 = getelementptr inbounds %struct.DState, %struct.DState* %161, i32 0, i32 6
  %162 = load i32, i32* %rTPos198, align 4
  %inc199 = add nsw i32 %162, 1
  store i32 %inc199, i32* %rTPos198, align 4
  %163 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos200 = getelementptr inbounds %struct.DState, %struct.DState* %163, i32 0, i32 6
  %164 = load i32, i32* %rTPos200, align 4
  %cmp201 = icmp eq i32 %164, 512
  br i1 %cmp201, label %if.then203, label %if.end205

if.then203:                                       ; preds = %if.then193
  %165 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos204 = getelementptr inbounds %struct.DState, %struct.DState* %165, i32 0, i32 6
  store i32 0, i32* %rTPos204, align 4
  br label %if.end205

if.end205:                                        ; preds = %if.then203, %if.then193
  br label %if.end206

if.end206:                                        ; preds = %if.end205, %if.end164
  %166 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo207 = getelementptr inbounds %struct.DState, %struct.DState* %166, i32 0, i32 5
  %167 = load i32, i32* %rNToGo207, align 8
  %dec208 = add nsw i32 %167, -1
  store i32 %dec208, i32* %rNToGo207, align 8
  %168 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo209 = getelementptr inbounds %struct.DState, %struct.DState* %168, i32 0, i32 5
  %169 = load i32, i32* %rNToGo209, align 8
  %cmp210 = icmp eq i32 %169, 1
  %170 = zext i1 %cmp210 to i64
  %cond212 = select i1 %cmp210, i32 1, i32 0
  %171 = load i8, i8* %k1, align 1
  %conv213 = zext i8 %171 to i32
  %xor214 = xor i32 %conv213, %cond212
  %conv215 = trunc i32 %xor214 to i8
  store i8 %conv215, i8* %k1, align 1
  %172 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used216 = getelementptr inbounds %struct.DState, %struct.DState* %172, i32 0, i32 17
  %173 = load i32, i32* %nblock_used216, align 4
  %inc217 = add nsw i32 %173, 1
  store i32 %inc217, i32* %nblock_used216, align 4
  %174 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used218 = getelementptr inbounds %struct.DState, %struct.DState* %174, i32 0, i32 17
  %175 = load i32, i32* %nblock_used218, align 4
  %176 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nblock219 = getelementptr inbounds %struct.DState, %struct.DState* %176, i32 0, i32 51
  %177 = load i32, i32* %save_nblock219, align 8
  %add220 = add nsw i32 %177, 1
  %cmp221 = icmp eq i32 %175, %add220
  br i1 %cmp221, label %if.then223, label %if.end224

if.then223:                                       ; preds = %if.end206
  br label %while.body

if.end224:                                        ; preds = %if.end206
  %178 = load i8, i8* %k1, align 1
  %conv225 = zext i8 %178 to i32
  %179 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k0226 = getelementptr inbounds %struct.DState, %struct.DState* %179, i32 0, i32 15
  %180 = load i32, i32* %k0226, align 8
  %cmp227 = icmp ne i32 %conv225, %180
  br i1 %cmp227, label %if.then229, label %if.end232

if.then229:                                       ; preds = %if.end224
  %181 = load i8, i8* %k1, align 1
  %conv230 = zext i8 %181 to i32
  %182 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k0231 = getelementptr inbounds %struct.DState, %struct.DState* %182, i32 0, i32 15
  store i32 %conv230, i32* %k0231, align 8
  br label %while.body

if.end232:                                        ; preds = %if.end224
  %183 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos233 = getelementptr inbounds %struct.DState, %struct.DState* %183, i32 0, i32 14
  %184 = load i32, i32* %tPos233, align 4
  %185 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %cftab234 = getelementptr inbounds %struct.DState, %struct.DState* %185, i32 0, i32 18
  %arraydecay235 = getelementptr inbounds [257 x i32], [257 x i32]* %cftab234, i64 0, i64 0
  %call236 = call i32 @BZ2_indexIntoF(i32 %184, i32* %arraydecay235)
  %conv237 = trunc i32 %call236 to i8
  store i8 %conv237, i8* %k1, align 1
  %186 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll16238 = getelementptr inbounds %struct.DState, %struct.DState* %186, i32 0, i32 21
  %187 = load i16*, i16** %ll16238, align 8
  %188 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos239 = getelementptr inbounds %struct.DState, %struct.DState* %188, i32 0, i32 14
  %189 = load i32, i32* %tPos239, align 4
  %idxprom240 = zext i32 %189 to i64
  %arrayidx241 = getelementptr inbounds i16, i16* %187, i64 %idxprom240
  %190 = load i16, i16* %arrayidx241, align 2
  %conv242 = zext i16 %190 to i32
  %191 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll4243 = getelementptr inbounds %struct.DState, %struct.DState* %191, i32 0, i32 22
  %192 = load i8*, i8** %ll4243, align 8
  %193 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos244 = getelementptr inbounds %struct.DState, %struct.DState* %193, i32 0, i32 14
  %194 = load i32, i32* %tPos244, align 4
  %shr245 = lshr i32 %194, 1
  %idxprom246 = zext i32 %shr245 to i64
  %arrayidx247 = getelementptr inbounds i8, i8* %192, i64 %idxprom246
  %195 = load i8, i8* %arrayidx247, align 1
  %conv248 = zext i8 %195 to i32
  %196 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos249 = getelementptr inbounds %struct.DState, %struct.DState* %196, i32 0, i32 14
  %197 = load i32, i32* %tPos249, align 4
  %shl250 = shl i32 %197, 2
  %and251 = and i32 %shl250, 4
  %shr252 = lshr i32 %conv248, %and251
  %and253 = and i32 %shr252, 15
  %shl254 = shl i32 %and253, 16
  %or255 = or i32 %conv242, %shl254
  %198 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos256 = getelementptr inbounds %struct.DState, %struct.DState* %198, i32 0, i32 14
  store i32 %or255, i32* %tPos256, align 4
  %199 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo257 = getelementptr inbounds %struct.DState, %struct.DState* %199, i32 0, i32 5
  %200 = load i32, i32* %rNToGo257, align 8
  %cmp258 = icmp eq i32 %200, 0
  br i1 %cmp258, label %if.then260, label %if.end273

if.then260:                                       ; preds = %if.end232
  %201 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos261 = getelementptr inbounds %struct.DState, %struct.DState* %201, i32 0, i32 6
  %202 = load i32, i32* %rTPos261, align 4
  %idxprom262 = sext i32 %202 to i64
  %arrayidx263 = getelementptr inbounds [512 x i32], [512 x i32]* @BZ2_rNums, i64 0, i64 %idxprom262
  %203 = load i32, i32* %arrayidx263, align 4
  %204 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo264 = getelementptr inbounds %struct.DState, %struct.DState* %204, i32 0, i32 5
  store i32 %203, i32* %rNToGo264, align 8
  %205 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos265 = getelementptr inbounds %struct.DState, %struct.DState* %205, i32 0, i32 6
  %206 = load i32, i32* %rTPos265, align 4
  %inc266 = add nsw i32 %206, 1
  store i32 %inc266, i32* %rTPos265, align 4
  %207 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos267 = getelementptr inbounds %struct.DState, %struct.DState* %207, i32 0, i32 6
  %208 = load i32, i32* %rTPos267, align 4
  %cmp268 = icmp eq i32 %208, 512
  br i1 %cmp268, label %if.then270, label %if.end272

if.then270:                                       ; preds = %if.then260
  %209 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos271 = getelementptr inbounds %struct.DState, %struct.DState* %209, i32 0, i32 6
  store i32 0, i32* %rTPos271, align 4
  br label %if.end272

if.end272:                                        ; preds = %if.then270, %if.then260
  br label %if.end273

if.end273:                                        ; preds = %if.end272, %if.end232
  %210 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo274 = getelementptr inbounds %struct.DState, %struct.DState* %210, i32 0, i32 5
  %211 = load i32, i32* %rNToGo274, align 8
  %dec275 = add nsw i32 %211, -1
  store i32 %dec275, i32* %rNToGo274, align 8
  %212 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo276 = getelementptr inbounds %struct.DState, %struct.DState* %212, i32 0, i32 5
  %213 = load i32, i32* %rNToGo276, align 8
  %cmp277 = icmp eq i32 %213, 1
  %214 = zext i1 %cmp277 to i64
  %cond279 = select i1 %cmp277, i32 1, i32 0
  %215 = load i8, i8* %k1, align 1
  %conv280 = zext i8 %215 to i32
  %xor281 = xor i32 %conv280, %cond279
  %conv282 = trunc i32 %xor281 to i8
  store i8 %conv282, i8* %k1, align 1
  %216 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used283 = getelementptr inbounds %struct.DState, %struct.DState* %216, i32 0, i32 17
  %217 = load i32, i32* %nblock_used283, align 4
  %inc284 = add nsw i32 %217, 1
  store i32 %inc284, i32* %nblock_used283, align 4
  %218 = load i8, i8* %k1, align 1
  %conv285 = zext i8 %218 to i32
  %add286 = add nsw i32 %conv285, 4
  %219 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_len287 = getelementptr inbounds %struct.DState, %struct.DState* %219, i32 0, i32 3
  store i32 %add286, i32* %state_out_len287, align 8
  %220 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos288 = getelementptr inbounds %struct.DState, %struct.DState* %220, i32 0, i32 14
  %221 = load i32, i32* %tPos288, align 4
  %222 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %cftab289 = getelementptr inbounds %struct.DState, %struct.DState* %222, i32 0, i32 18
  %arraydecay290 = getelementptr inbounds [257 x i32], [257 x i32]* %cftab289, i64 0, i64 0
  %call291 = call i32 @BZ2_indexIntoF(i32 %221, i32* %arraydecay290)
  %223 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k0292 = getelementptr inbounds %struct.DState, %struct.DState* %223, i32 0, i32 15
  store i32 %call291, i32* %k0292, align 8
  %224 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll16293 = getelementptr inbounds %struct.DState, %struct.DState* %224, i32 0, i32 21
  %225 = load i16*, i16** %ll16293, align 8
  %226 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos294 = getelementptr inbounds %struct.DState, %struct.DState* %226, i32 0, i32 14
  %227 = load i32, i32* %tPos294, align 4
  %idxprom295 = zext i32 %227 to i64
  %arrayidx296 = getelementptr inbounds i16, i16* %225, i64 %idxprom295
  %228 = load i16, i16* %arrayidx296, align 2
  %conv297 = zext i16 %228 to i32
  %229 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll4298 = getelementptr inbounds %struct.DState, %struct.DState* %229, i32 0, i32 22
  %230 = load i8*, i8** %ll4298, align 8
  %231 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos299 = getelementptr inbounds %struct.DState, %struct.DState* %231, i32 0, i32 14
  %232 = load i32, i32* %tPos299, align 4
  %shr300 = lshr i32 %232, 1
  %idxprom301 = zext i32 %shr300 to i64
  %arrayidx302 = getelementptr inbounds i8, i8* %230, i64 %idxprom301
  %233 = load i8, i8* %arrayidx302, align 1
  %conv303 = zext i8 %233 to i32
  %234 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos304 = getelementptr inbounds %struct.DState, %struct.DState* %234, i32 0, i32 14
  %235 = load i32, i32* %tPos304, align 4
  %shl305 = shl i32 %235, 2
  %and306 = and i32 %shl305, 4
  %shr307 = lshr i32 %conv303, %and306
  %and308 = and i32 %shr307, 15
  %shl309 = shl i32 %and308, 16
  %or310 = or i32 %conv297, %shl309
  %236 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos311 = getelementptr inbounds %struct.DState, %struct.DState* %236, i32 0, i32 14
  store i32 %or310, i32* %tPos311, align 4
  %237 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo312 = getelementptr inbounds %struct.DState, %struct.DState* %237, i32 0, i32 5
  %238 = load i32, i32* %rNToGo312, align 8
  %cmp313 = icmp eq i32 %238, 0
  br i1 %cmp313, label %if.then315, label %if.end328

if.then315:                                       ; preds = %if.end273
  %239 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos316 = getelementptr inbounds %struct.DState, %struct.DState* %239, i32 0, i32 6
  %240 = load i32, i32* %rTPos316, align 4
  %idxprom317 = sext i32 %240 to i64
  %arrayidx318 = getelementptr inbounds [512 x i32], [512 x i32]* @BZ2_rNums, i64 0, i64 %idxprom317
  %241 = load i32, i32* %arrayidx318, align 4
  %242 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo319 = getelementptr inbounds %struct.DState, %struct.DState* %242, i32 0, i32 5
  store i32 %241, i32* %rNToGo319, align 8
  %243 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos320 = getelementptr inbounds %struct.DState, %struct.DState* %243, i32 0, i32 6
  %244 = load i32, i32* %rTPos320, align 4
  %inc321 = add nsw i32 %244, 1
  store i32 %inc321, i32* %rTPos320, align 4
  %245 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos322 = getelementptr inbounds %struct.DState, %struct.DState* %245, i32 0, i32 6
  %246 = load i32, i32* %rTPos322, align 4
  %cmp323 = icmp eq i32 %246, 512
  br i1 %cmp323, label %if.then325, label %if.end327

if.then325:                                       ; preds = %if.then315
  %247 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos326 = getelementptr inbounds %struct.DState, %struct.DState* %247, i32 0, i32 6
  store i32 0, i32* %rTPos326, align 4
  br label %if.end327

if.end327:                                        ; preds = %if.then325, %if.then315
  br label %if.end328

if.end328:                                        ; preds = %if.end327, %if.end273
  %248 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo329 = getelementptr inbounds %struct.DState, %struct.DState* %248, i32 0, i32 5
  %249 = load i32, i32* %rNToGo329, align 8
  %dec330 = add nsw i32 %249, -1
  store i32 %dec330, i32* %rNToGo329, align 8
  %250 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo331 = getelementptr inbounds %struct.DState, %struct.DState* %250, i32 0, i32 5
  %251 = load i32, i32* %rNToGo331, align 8
  %cmp332 = icmp eq i32 %251, 1
  %252 = zext i1 %cmp332 to i64
  %cond334 = select i1 %cmp332, i32 1, i32 0
  %253 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k0335 = getelementptr inbounds %struct.DState, %struct.DState* %253, i32 0, i32 15
  %254 = load i32, i32* %k0335, align 8
  %xor336 = xor i32 %254, %cond334
  store i32 %xor336, i32* %k0335, align 8
  %255 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used337 = getelementptr inbounds %struct.DState, %struct.DState* %255, i32 0, i32 17
  %256 = load i32, i32* %nblock_used337, align 4
  %inc338 = add nsw i32 %256, 1
  store i32 %inc338, i32* %nblock_used337, align 4
  br label %while.body

if.else:                                          ; preds = %entry
  br label %while.body339

while.body339:                                    ; preds = %if.else, %if.then437, %if.then443, %if.then479, %if.then485, %if.then521, %if.then527, %if.end530
  br label %while.body341

while.body341:                                    ; preds = %while.body339, %if.end386
  %257 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm342 = getelementptr inbounds %struct.DState, %struct.DState* %257, i32 0, i32 0
  %258 = load %struct.bz_stream*, %struct.bz_stream** %strm342, align 8
  %avail_out343 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %258, i32 0, i32 5
  %259 = load i32, i32* %avail_out343, align 8
  %cmp344 = icmp eq i32 %259, 0
  br i1 %cmp344, label %if.then346, label %if.end347

if.then346:                                       ; preds = %while.body341
  store i8 0, i8* %retval, align 1
  br label %return

if.end347:                                        ; preds = %while.body341
  %260 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_len348 = getelementptr inbounds %struct.DState, %struct.DState* %260, i32 0, i32 3
  %261 = load i32, i32* %state_out_len348, align 8
  %cmp349 = icmp eq i32 %261, 0
  br i1 %cmp349, label %if.then351, label %if.end352

if.then351:                                       ; preds = %if.end347
  br label %while.end387

if.end352:                                        ; preds = %if.end347
  %262 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_ch353 = getelementptr inbounds %struct.DState, %struct.DState* %262, i32 0, i32 2
  %263 = load i8, i8* %state_out_ch353, align 4
  %264 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm354 = getelementptr inbounds %struct.DState, %struct.DState* %264, i32 0, i32 0
  %265 = load %struct.bz_stream*, %struct.bz_stream** %strm354, align 8
  %next_out355 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %265, i32 0, i32 4
  %266 = load i8*, i8** %next_out355, align 8
  store i8 %263, i8* %266, align 1
  %267 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %calculatedBlockCRC356 = getelementptr inbounds %struct.DState, %struct.DState* %267, i32 0, i32 25
  %268 = load i32, i32* %calculatedBlockCRC356, align 8
  %shl357 = shl i32 %268, 8
  %269 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %calculatedBlockCRC358 = getelementptr inbounds %struct.DState, %struct.DState* %269, i32 0, i32 25
  %270 = load i32, i32* %calculatedBlockCRC358, align 8
  %shr359 = lshr i32 %270, 24
  %271 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_ch360 = getelementptr inbounds %struct.DState, %struct.DState* %271, i32 0, i32 2
  %272 = load i8, i8* %state_out_ch360, align 4
  %conv361 = zext i8 %272 to i32
  %xor362 = xor i32 %shr359, %conv361
  %idxprom363 = zext i32 %xor362 to i64
  %arrayidx364 = getelementptr inbounds [256 x i32], [256 x i32]* @BZ2_crc32Table, i64 0, i64 %idxprom363
  %273 = load i32, i32* %arrayidx364, align 4
  %xor365 = xor i32 %shl357, %273
  %274 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %calculatedBlockCRC366 = getelementptr inbounds %struct.DState, %struct.DState* %274, i32 0, i32 25
  store i32 %xor365, i32* %calculatedBlockCRC366, align 8
  %275 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_len367 = getelementptr inbounds %struct.DState, %struct.DState* %275, i32 0, i32 3
  %276 = load i32, i32* %state_out_len367, align 8
  %dec368 = add nsw i32 %276, -1
  store i32 %dec368, i32* %state_out_len367, align 8
  %277 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm369 = getelementptr inbounds %struct.DState, %struct.DState* %277, i32 0, i32 0
  %278 = load %struct.bz_stream*, %struct.bz_stream** %strm369, align 8
  %next_out370 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %278, i32 0, i32 4
  %279 = load i8*, i8** %next_out370, align 8
  %incdec.ptr371 = getelementptr inbounds i8, i8* %279, i32 1
  store i8* %incdec.ptr371, i8** %next_out370, align 8
  %280 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm372 = getelementptr inbounds %struct.DState, %struct.DState* %280, i32 0, i32 0
  %281 = load %struct.bz_stream*, %struct.bz_stream** %strm372, align 8
  %avail_out373 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %281, i32 0, i32 5
  %282 = load i32, i32* %avail_out373, align 8
  %dec374 = add i32 %282, -1
  store i32 %dec374, i32* %avail_out373, align 8
  %283 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm375 = getelementptr inbounds %struct.DState, %struct.DState* %283, i32 0, i32 0
  %284 = load %struct.bz_stream*, %struct.bz_stream** %strm375, align 8
  %total_out_lo32376 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %284, i32 0, i32 6
  %285 = load i32, i32* %total_out_lo32376, align 4
  %inc377 = add i32 %285, 1
  store i32 %inc377, i32* %total_out_lo32376, align 4
  %286 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm378 = getelementptr inbounds %struct.DState, %struct.DState* %286, i32 0, i32 0
  %287 = load %struct.bz_stream*, %struct.bz_stream** %strm378, align 8
  %total_out_lo32379 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %287, i32 0, i32 6
  %288 = load i32, i32* %total_out_lo32379, align 4
  %cmp380 = icmp eq i32 %288, 0
  br i1 %cmp380, label %if.then382, label %if.end386

if.then382:                                       ; preds = %if.end352
  %289 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm383 = getelementptr inbounds %struct.DState, %struct.DState* %289, i32 0, i32 0
  %290 = load %struct.bz_stream*, %struct.bz_stream** %strm383, align 8
  %total_out_hi32384 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %290, i32 0, i32 7
  %291 = load i32, i32* %total_out_hi32384, align 8
  %inc385 = add i32 %291, 1
  store i32 %inc385, i32* %total_out_hi32384, align 8
  br label %if.end386

if.end386:                                        ; preds = %if.then382, %if.end352
  br label %while.body341

while.end387:                                     ; preds = %if.then351
  %292 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used388 = getelementptr inbounds %struct.DState, %struct.DState* %292, i32 0, i32 17
  %293 = load i32, i32* %nblock_used388, align 4
  %294 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nblock389 = getelementptr inbounds %struct.DState, %struct.DState* %294, i32 0, i32 51
  %295 = load i32, i32* %save_nblock389, align 8
  %add390 = add nsw i32 %295, 1
  %cmp391 = icmp eq i32 %293, %add390
  br i1 %cmp391, label %if.then393, label %if.end394

if.then393:                                       ; preds = %while.end387
  store i8 0, i8* %retval, align 1
  br label %return

if.end394:                                        ; preds = %while.end387
  %296 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used395 = getelementptr inbounds %struct.DState, %struct.DState* %296, i32 0, i32 17
  %297 = load i32, i32* %nblock_used395, align 4
  %298 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nblock396 = getelementptr inbounds %struct.DState, %struct.DState* %298, i32 0, i32 51
  %299 = load i32, i32* %save_nblock396, align 8
  %add397 = add nsw i32 %299, 1
  %cmp398 = icmp sgt i32 %297, %add397
  br i1 %cmp398, label %if.then400, label %if.end401

if.then400:                                       ; preds = %if.end394
  store i8 1, i8* %retval, align 1
  br label %return

if.end401:                                        ; preds = %if.end394
  %300 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_len402 = getelementptr inbounds %struct.DState, %struct.DState* %300, i32 0, i32 3
  store i32 1, i32* %state_out_len402, align 8
  %301 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k0403 = getelementptr inbounds %struct.DState, %struct.DState* %301, i32 0, i32 15
  %302 = load i32, i32* %k0403, align 8
  %conv404 = trunc i32 %302 to i8
  %303 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_ch405 = getelementptr inbounds %struct.DState, %struct.DState* %303, i32 0, i32 2
  store i8 %conv404, i8* %state_out_ch405, align 4
  %304 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos406 = getelementptr inbounds %struct.DState, %struct.DState* %304, i32 0, i32 14
  %305 = load i32, i32* %tPos406, align 4
  %306 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %cftab407 = getelementptr inbounds %struct.DState, %struct.DState* %306, i32 0, i32 18
  %arraydecay408 = getelementptr inbounds [257 x i32], [257 x i32]* %cftab407, i64 0, i64 0
  %call409 = call i32 @BZ2_indexIntoF(i32 %305, i32* %arraydecay408)
  %conv410 = trunc i32 %call409 to i8
  store i8 %conv410, i8* %k1, align 1
  %307 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll16411 = getelementptr inbounds %struct.DState, %struct.DState* %307, i32 0, i32 21
  %308 = load i16*, i16** %ll16411, align 8
  %309 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos412 = getelementptr inbounds %struct.DState, %struct.DState* %309, i32 0, i32 14
  %310 = load i32, i32* %tPos412, align 4
  %idxprom413 = zext i32 %310 to i64
  %arrayidx414 = getelementptr inbounds i16, i16* %308, i64 %idxprom413
  %311 = load i16, i16* %arrayidx414, align 2
  %conv415 = zext i16 %311 to i32
  %312 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll4416 = getelementptr inbounds %struct.DState, %struct.DState* %312, i32 0, i32 22
  %313 = load i8*, i8** %ll4416, align 8
  %314 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos417 = getelementptr inbounds %struct.DState, %struct.DState* %314, i32 0, i32 14
  %315 = load i32, i32* %tPos417, align 4
  %shr418 = lshr i32 %315, 1
  %idxprom419 = zext i32 %shr418 to i64
  %arrayidx420 = getelementptr inbounds i8, i8* %313, i64 %idxprom419
  %316 = load i8, i8* %arrayidx420, align 1
  %conv421 = zext i8 %316 to i32
  %317 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos422 = getelementptr inbounds %struct.DState, %struct.DState* %317, i32 0, i32 14
  %318 = load i32, i32* %tPos422, align 4
  %shl423 = shl i32 %318, 2
  %and424 = and i32 %shl423, 4
  %shr425 = lshr i32 %conv421, %and424
  %and426 = and i32 %shr425, 15
  %shl427 = shl i32 %and426, 16
  %or428 = or i32 %conv415, %shl427
  %319 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos429 = getelementptr inbounds %struct.DState, %struct.DState* %319, i32 0, i32 14
  store i32 %or428, i32* %tPos429, align 4
  %320 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used430 = getelementptr inbounds %struct.DState, %struct.DState* %320, i32 0, i32 17
  %321 = load i32, i32* %nblock_used430, align 4
  %inc431 = add nsw i32 %321, 1
  store i32 %inc431, i32* %nblock_used430, align 4
  %322 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used432 = getelementptr inbounds %struct.DState, %struct.DState* %322, i32 0, i32 17
  %323 = load i32, i32* %nblock_used432, align 4
  %324 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nblock433 = getelementptr inbounds %struct.DState, %struct.DState* %324, i32 0, i32 51
  %325 = load i32, i32* %save_nblock433, align 8
  %add434 = add nsw i32 %325, 1
  %cmp435 = icmp eq i32 %323, %add434
  br i1 %cmp435, label %if.then437, label %if.end438

if.then437:                                       ; preds = %if.end401
  br label %while.body339

if.end438:                                        ; preds = %if.end401
  %326 = load i8, i8* %k1, align 1
  %conv439 = zext i8 %326 to i32
  %327 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k0440 = getelementptr inbounds %struct.DState, %struct.DState* %327, i32 0, i32 15
  %328 = load i32, i32* %k0440, align 8
  %cmp441 = icmp ne i32 %conv439, %328
  br i1 %cmp441, label %if.then443, label %if.end446

if.then443:                                       ; preds = %if.end438
  %329 = load i8, i8* %k1, align 1
  %conv444 = zext i8 %329 to i32
  %330 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k0445 = getelementptr inbounds %struct.DState, %struct.DState* %330, i32 0, i32 15
  store i32 %conv444, i32* %k0445, align 8
  br label %while.body339

if.end446:                                        ; preds = %if.end438
  %331 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_len447 = getelementptr inbounds %struct.DState, %struct.DState* %331, i32 0, i32 3
  store i32 2, i32* %state_out_len447, align 8
  %332 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos448 = getelementptr inbounds %struct.DState, %struct.DState* %332, i32 0, i32 14
  %333 = load i32, i32* %tPos448, align 4
  %334 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %cftab449 = getelementptr inbounds %struct.DState, %struct.DState* %334, i32 0, i32 18
  %arraydecay450 = getelementptr inbounds [257 x i32], [257 x i32]* %cftab449, i64 0, i64 0
  %call451 = call i32 @BZ2_indexIntoF(i32 %333, i32* %arraydecay450)
  %conv452 = trunc i32 %call451 to i8
  store i8 %conv452, i8* %k1, align 1
  %335 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll16453 = getelementptr inbounds %struct.DState, %struct.DState* %335, i32 0, i32 21
  %336 = load i16*, i16** %ll16453, align 8
  %337 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos454 = getelementptr inbounds %struct.DState, %struct.DState* %337, i32 0, i32 14
  %338 = load i32, i32* %tPos454, align 4
  %idxprom455 = zext i32 %338 to i64
  %arrayidx456 = getelementptr inbounds i16, i16* %336, i64 %idxprom455
  %339 = load i16, i16* %arrayidx456, align 2
  %conv457 = zext i16 %339 to i32
  %340 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll4458 = getelementptr inbounds %struct.DState, %struct.DState* %340, i32 0, i32 22
  %341 = load i8*, i8** %ll4458, align 8
  %342 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos459 = getelementptr inbounds %struct.DState, %struct.DState* %342, i32 0, i32 14
  %343 = load i32, i32* %tPos459, align 4
  %shr460 = lshr i32 %343, 1
  %idxprom461 = zext i32 %shr460 to i64
  %arrayidx462 = getelementptr inbounds i8, i8* %341, i64 %idxprom461
  %344 = load i8, i8* %arrayidx462, align 1
  %conv463 = zext i8 %344 to i32
  %345 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos464 = getelementptr inbounds %struct.DState, %struct.DState* %345, i32 0, i32 14
  %346 = load i32, i32* %tPos464, align 4
  %shl465 = shl i32 %346, 2
  %and466 = and i32 %shl465, 4
  %shr467 = lshr i32 %conv463, %and466
  %and468 = and i32 %shr467, 15
  %shl469 = shl i32 %and468, 16
  %or470 = or i32 %conv457, %shl469
  %347 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos471 = getelementptr inbounds %struct.DState, %struct.DState* %347, i32 0, i32 14
  store i32 %or470, i32* %tPos471, align 4
  %348 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used472 = getelementptr inbounds %struct.DState, %struct.DState* %348, i32 0, i32 17
  %349 = load i32, i32* %nblock_used472, align 4
  %inc473 = add nsw i32 %349, 1
  store i32 %inc473, i32* %nblock_used472, align 4
  %350 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used474 = getelementptr inbounds %struct.DState, %struct.DState* %350, i32 0, i32 17
  %351 = load i32, i32* %nblock_used474, align 4
  %352 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nblock475 = getelementptr inbounds %struct.DState, %struct.DState* %352, i32 0, i32 51
  %353 = load i32, i32* %save_nblock475, align 8
  %add476 = add nsw i32 %353, 1
  %cmp477 = icmp eq i32 %351, %add476
  br i1 %cmp477, label %if.then479, label %if.end480

if.then479:                                       ; preds = %if.end446
  br label %while.body339

if.end480:                                        ; preds = %if.end446
  %354 = load i8, i8* %k1, align 1
  %conv481 = zext i8 %354 to i32
  %355 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k0482 = getelementptr inbounds %struct.DState, %struct.DState* %355, i32 0, i32 15
  %356 = load i32, i32* %k0482, align 8
  %cmp483 = icmp ne i32 %conv481, %356
  br i1 %cmp483, label %if.then485, label %if.end488

if.then485:                                       ; preds = %if.end480
  %357 = load i8, i8* %k1, align 1
  %conv486 = zext i8 %357 to i32
  %358 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k0487 = getelementptr inbounds %struct.DState, %struct.DState* %358, i32 0, i32 15
  store i32 %conv486, i32* %k0487, align 8
  br label %while.body339

if.end488:                                        ; preds = %if.end480
  %359 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_len489 = getelementptr inbounds %struct.DState, %struct.DState* %359, i32 0, i32 3
  store i32 3, i32* %state_out_len489, align 8
  %360 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos490 = getelementptr inbounds %struct.DState, %struct.DState* %360, i32 0, i32 14
  %361 = load i32, i32* %tPos490, align 4
  %362 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %cftab491 = getelementptr inbounds %struct.DState, %struct.DState* %362, i32 0, i32 18
  %arraydecay492 = getelementptr inbounds [257 x i32], [257 x i32]* %cftab491, i64 0, i64 0
  %call493 = call i32 @BZ2_indexIntoF(i32 %361, i32* %arraydecay492)
  %conv494 = trunc i32 %call493 to i8
  store i8 %conv494, i8* %k1, align 1
  %363 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll16495 = getelementptr inbounds %struct.DState, %struct.DState* %363, i32 0, i32 21
  %364 = load i16*, i16** %ll16495, align 8
  %365 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos496 = getelementptr inbounds %struct.DState, %struct.DState* %365, i32 0, i32 14
  %366 = load i32, i32* %tPos496, align 4
  %idxprom497 = zext i32 %366 to i64
  %arrayidx498 = getelementptr inbounds i16, i16* %364, i64 %idxprom497
  %367 = load i16, i16* %arrayidx498, align 2
  %conv499 = zext i16 %367 to i32
  %368 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll4500 = getelementptr inbounds %struct.DState, %struct.DState* %368, i32 0, i32 22
  %369 = load i8*, i8** %ll4500, align 8
  %370 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos501 = getelementptr inbounds %struct.DState, %struct.DState* %370, i32 0, i32 14
  %371 = load i32, i32* %tPos501, align 4
  %shr502 = lshr i32 %371, 1
  %idxprom503 = zext i32 %shr502 to i64
  %arrayidx504 = getelementptr inbounds i8, i8* %369, i64 %idxprom503
  %372 = load i8, i8* %arrayidx504, align 1
  %conv505 = zext i8 %372 to i32
  %373 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos506 = getelementptr inbounds %struct.DState, %struct.DState* %373, i32 0, i32 14
  %374 = load i32, i32* %tPos506, align 4
  %shl507 = shl i32 %374, 2
  %and508 = and i32 %shl507, 4
  %shr509 = lshr i32 %conv505, %and508
  %and510 = and i32 %shr509, 15
  %shl511 = shl i32 %and510, 16
  %or512 = or i32 %conv499, %shl511
  %375 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos513 = getelementptr inbounds %struct.DState, %struct.DState* %375, i32 0, i32 14
  store i32 %or512, i32* %tPos513, align 4
  %376 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used514 = getelementptr inbounds %struct.DState, %struct.DState* %376, i32 0, i32 17
  %377 = load i32, i32* %nblock_used514, align 4
  %inc515 = add nsw i32 %377, 1
  store i32 %inc515, i32* %nblock_used514, align 4
  %378 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used516 = getelementptr inbounds %struct.DState, %struct.DState* %378, i32 0, i32 17
  %379 = load i32, i32* %nblock_used516, align 4
  %380 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nblock517 = getelementptr inbounds %struct.DState, %struct.DState* %380, i32 0, i32 51
  %381 = load i32, i32* %save_nblock517, align 8
  %add518 = add nsw i32 %381, 1
  %cmp519 = icmp eq i32 %379, %add518
  br i1 %cmp519, label %if.then521, label %if.end522

if.then521:                                       ; preds = %if.end488
  br label %while.body339

if.end522:                                        ; preds = %if.end488
  %382 = load i8, i8* %k1, align 1
  %conv523 = zext i8 %382 to i32
  %383 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k0524 = getelementptr inbounds %struct.DState, %struct.DState* %383, i32 0, i32 15
  %384 = load i32, i32* %k0524, align 8
  %cmp525 = icmp ne i32 %conv523, %384
  br i1 %cmp525, label %if.then527, label %if.end530

if.then527:                                       ; preds = %if.end522
  %385 = load i8, i8* %k1, align 1
  %conv528 = zext i8 %385 to i32
  %386 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k0529 = getelementptr inbounds %struct.DState, %struct.DState* %386, i32 0, i32 15
  store i32 %conv528, i32* %k0529, align 8
  br label %while.body339

if.end530:                                        ; preds = %if.end522
  %387 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos531 = getelementptr inbounds %struct.DState, %struct.DState* %387, i32 0, i32 14
  %388 = load i32, i32* %tPos531, align 4
  %389 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %cftab532 = getelementptr inbounds %struct.DState, %struct.DState* %389, i32 0, i32 18
  %arraydecay533 = getelementptr inbounds [257 x i32], [257 x i32]* %cftab532, i64 0, i64 0
  %call534 = call i32 @BZ2_indexIntoF(i32 %388, i32* %arraydecay533)
  %conv535 = trunc i32 %call534 to i8
  store i8 %conv535, i8* %k1, align 1
  %390 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll16536 = getelementptr inbounds %struct.DState, %struct.DState* %390, i32 0, i32 21
  %391 = load i16*, i16** %ll16536, align 8
  %392 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos537 = getelementptr inbounds %struct.DState, %struct.DState* %392, i32 0, i32 14
  %393 = load i32, i32* %tPos537, align 4
  %idxprom538 = zext i32 %393 to i64
  %arrayidx539 = getelementptr inbounds i16, i16* %391, i64 %idxprom538
  %394 = load i16, i16* %arrayidx539, align 2
  %conv540 = zext i16 %394 to i32
  %395 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll4541 = getelementptr inbounds %struct.DState, %struct.DState* %395, i32 0, i32 22
  %396 = load i8*, i8** %ll4541, align 8
  %397 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos542 = getelementptr inbounds %struct.DState, %struct.DState* %397, i32 0, i32 14
  %398 = load i32, i32* %tPos542, align 4
  %shr543 = lshr i32 %398, 1
  %idxprom544 = zext i32 %shr543 to i64
  %arrayidx545 = getelementptr inbounds i8, i8* %396, i64 %idxprom544
  %399 = load i8, i8* %arrayidx545, align 1
  %conv546 = zext i8 %399 to i32
  %400 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos547 = getelementptr inbounds %struct.DState, %struct.DState* %400, i32 0, i32 14
  %401 = load i32, i32* %tPos547, align 4
  %shl548 = shl i32 %401, 2
  %and549 = and i32 %shl548, 4
  %shr550 = lshr i32 %conv546, %and549
  %and551 = and i32 %shr550, 15
  %shl552 = shl i32 %and551, 16
  %or553 = or i32 %conv540, %shl552
  %402 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos554 = getelementptr inbounds %struct.DState, %struct.DState* %402, i32 0, i32 14
  store i32 %or553, i32* %tPos554, align 4
  %403 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used555 = getelementptr inbounds %struct.DState, %struct.DState* %403, i32 0, i32 17
  %404 = load i32, i32* %nblock_used555, align 4
  %inc556 = add nsw i32 %404, 1
  store i32 %inc556, i32* %nblock_used555, align 4
  %405 = load i8, i8* %k1, align 1
  %conv557 = zext i8 %405 to i32
  %add558 = add nsw i32 %conv557, 4
  %406 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_len559 = getelementptr inbounds %struct.DState, %struct.DState* %406, i32 0, i32 3
  store i32 %add558, i32* %state_out_len559, align 8
  %407 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos560 = getelementptr inbounds %struct.DState, %struct.DState* %407, i32 0, i32 14
  %408 = load i32, i32* %tPos560, align 4
  %409 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %cftab561 = getelementptr inbounds %struct.DState, %struct.DState* %409, i32 0, i32 18
  %arraydecay562 = getelementptr inbounds [257 x i32], [257 x i32]* %cftab561, i64 0, i64 0
  %call563 = call i32 @BZ2_indexIntoF(i32 %408, i32* %arraydecay562)
  %410 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k0564 = getelementptr inbounds %struct.DState, %struct.DState* %410, i32 0, i32 15
  store i32 %call563, i32* %k0564, align 8
  %411 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll16565 = getelementptr inbounds %struct.DState, %struct.DState* %411, i32 0, i32 21
  %412 = load i16*, i16** %ll16565, align 8
  %413 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos566 = getelementptr inbounds %struct.DState, %struct.DState* %413, i32 0, i32 14
  %414 = load i32, i32* %tPos566, align 4
  %idxprom567 = zext i32 %414 to i64
  %arrayidx568 = getelementptr inbounds i16, i16* %412, i64 %idxprom567
  %415 = load i16, i16* %arrayidx568, align 2
  %conv569 = zext i16 %415 to i32
  %416 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll4570 = getelementptr inbounds %struct.DState, %struct.DState* %416, i32 0, i32 22
  %417 = load i8*, i8** %ll4570, align 8
  %418 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos571 = getelementptr inbounds %struct.DState, %struct.DState* %418, i32 0, i32 14
  %419 = load i32, i32* %tPos571, align 4
  %shr572 = lshr i32 %419, 1
  %idxprom573 = zext i32 %shr572 to i64
  %arrayidx574 = getelementptr inbounds i8, i8* %417, i64 %idxprom573
  %420 = load i8, i8* %arrayidx574, align 1
  %conv575 = zext i8 %420 to i32
  %421 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos576 = getelementptr inbounds %struct.DState, %struct.DState* %421, i32 0, i32 14
  %422 = load i32, i32* %tPos576, align 4
  %shl577 = shl i32 %422, 2
  %and578 = and i32 %shl577, 4
  %shr579 = lshr i32 %conv575, %and578
  %and580 = and i32 %shr579, 15
  %shl581 = shl i32 %and580, 16
  %or582 = or i32 %conv569, %shl581
  %423 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos583 = getelementptr inbounds %struct.DState, %struct.DState* %423, i32 0, i32 14
  store i32 %or582, i32* %tPos583, align 4
  %424 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used584 = getelementptr inbounds %struct.DState, %struct.DState* %424, i32 0, i32 17
  %425 = load i32, i32* %nblock_used584, align 4
  %inc585 = add nsw i32 %425, 1
  store i32 %inc585, i32* %nblock_used584, align 4
  br label %while.body339

return:                                           ; preds = %if.then400, %if.then393, %if.then346, %if.then36, %if.then29, %if.then3
  %426 = load i8, i8* %retval, align 1
  ret i8 %426
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @unRLE_obuf_to_output_FAST(%struct.DState* %s) #0 {
entry:
  %retval = alloca i8, align 1
  %s.addr = alloca %struct.DState*, align 8
  %k1 = alloca i8, align 1
  %c_calculatedBlockCRC = alloca i32, align 4
  %c_state_out_ch = alloca i8, align 1
  %c_state_out_len = alloca i32, align 4
  %c_nblock_used = alloca i32, align 4
  %c_k0 = alloca i32, align 4
  %c_tt = alloca i32*, align 8
  %c_tPos = alloca i32, align 4
  %cs_next_out = alloca i8*, align 8
  %cs_avail_out = alloca i32, align 4
  %avail_out_INIT = alloca i32, align 4
  %s_save_nblockPP = alloca i32, align 4
  %total_out_lo32_old = alloca i32, align 4
  store %struct.DState* %s, %struct.DState** %s.addr, align 8
  %0 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %blockRandomised = getelementptr inbounds %struct.DState, %struct.DState* %0, i32 0, i32 4
  %1 = load i8, i8* %blockRandomised, align 4
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.then, %if.then78, %if.then84, %if.then132, %if.then138, %if.then186, %if.then192, %if.end265
  br label %while.body2

while.body2:                                      ; preds = %while.body, %if.end26
  %2 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm = getelementptr inbounds %struct.DState, %struct.DState* %2, i32 0, i32 0
  %3 = load %struct.bz_stream*, %struct.bz_stream** %strm, align 8
  %avail_out = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %3, i32 0, i32 5
  %4 = load i32, i32* %avail_out, align 8
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then3, label %if.end

if.then3:                                         ; preds = %while.body2
  store i8 0, i8* %retval, align 1
  br label %return

if.end:                                           ; preds = %while.body2
  %5 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_len = getelementptr inbounds %struct.DState, %struct.DState* %5, i32 0, i32 3
  %6 = load i32, i32* %state_out_len, align 8
  %cmp4 = icmp eq i32 %6, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  br label %while.end

if.end6:                                          ; preds = %if.end
  %7 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_ch = getelementptr inbounds %struct.DState, %struct.DState* %7, i32 0, i32 2
  %8 = load i8, i8* %state_out_ch, align 4
  %9 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm7 = getelementptr inbounds %struct.DState, %struct.DState* %9, i32 0, i32 0
  %10 = load %struct.bz_stream*, %struct.bz_stream** %strm7, align 8
  %next_out = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %10, i32 0, i32 4
  %11 = load i8*, i8** %next_out, align 8
  store i8 %8, i8* %11, align 1
  %12 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %calculatedBlockCRC = getelementptr inbounds %struct.DState, %struct.DState* %12, i32 0, i32 25
  %13 = load i32, i32* %calculatedBlockCRC, align 8
  %shl = shl i32 %13, 8
  %14 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %calculatedBlockCRC8 = getelementptr inbounds %struct.DState, %struct.DState* %14, i32 0, i32 25
  %15 = load i32, i32* %calculatedBlockCRC8, align 8
  %shr = lshr i32 %15, 24
  %16 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_ch9 = getelementptr inbounds %struct.DState, %struct.DState* %16, i32 0, i32 2
  %17 = load i8, i8* %state_out_ch9, align 4
  %conv = zext i8 %17 to i32
  %xor = xor i32 %shr, %conv
  %idxprom = zext i32 %xor to i64
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* @BZ2_crc32Table, i64 0, i64 %idxprom
  %18 = load i32, i32* %arrayidx, align 4
  %xor10 = xor i32 %shl, %18
  %19 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %calculatedBlockCRC11 = getelementptr inbounds %struct.DState, %struct.DState* %19, i32 0, i32 25
  store i32 %xor10, i32* %calculatedBlockCRC11, align 8
  %20 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_len12 = getelementptr inbounds %struct.DState, %struct.DState* %20, i32 0, i32 3
  %21 = load i32, i32* %state_out_len12, align 8
  %dec = add nsw i32 %21, -1
  store i32 %dec, i32* %state_out_len12, align 8
  %22 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm13 = getelementptr inbounds %struct.DState, %struct.DState* %22, i32 0, i32 0
  %23 = load %struct.bz_stream*, %struct.bz_stream** %strm13, align 8
  %next_out14 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %23, i32 0, i32 4
  %24 = load i8*, i8** %next_out14, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr, i8** %next_out14, align 8
  %25 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm15 = getelementptr inbounds %struct.DState, %struct.DState* %25, i32 0, i32 0
  %26 = load %struct.bz_stream*, %struct.bz_stream** %strm15, align 8
  %avail_out16 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %26, i32 0, i32 5
  %27 = load i32, i32* %avail_out16, align 8
  %dec17 = add i32 %27, -1
  store i32 %dec17, i32* %avail_out16, align 8
  %28 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm18 = getelementptr inbounds %struct.DState, %struct.DState* %28, i32 0, i32 0
  %29 = load %struct.bz_stream*, %struct.bz_stream** %strm18, align 8
  %total_out_lo32 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %29, i32 0, i32 6
  %30 = load i32, i32* %total_out_lo32, align 4
  %inc = add i32 %30, 1
  store i32 %inc, i32* %total_out_lo32, align 4
  %31 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm19 = getelementptr inbounds %struct.DState, %struct.DState* %31, i32 0, i32 0
  %32 = load %struct.bz_stream*, %struct.bz_stream** %strm19, align 8
  %total_out_lo3220 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %32, i32 0, i32 6
  %33 = load i32, i32* %total_out_lo3220, align 4
  %cmp21 = icmp eq i32 %33, 0
  br i1 %cmp21, label %if.then23, label %if.end26

if.then23:                                        ; preds = %if.end6
  %34 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm24 = getelementptr inbounds %struct.DState, %struct.DState* %34, i32 0, i32 0
  %35 = load %struct.bz_stream*, %struct.bz_stream** %strm24, align 8
  %total_out_hi32 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %35, i32 0, i32 7
  %36 = load i32, i32* %total_out_hi32, align 8
  %inc25 = add i32 %36, 1
  store i32 %inc25, i32* %total_out_hi32, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.end6
  br label %while.body2

while.end:                                        ; preds = %if.then5
  %37 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used = getelementptr inbounds %struct.DState, %struct.DState* %37, i32 0, i32 17
  %38 = load i32, i32* %nblock_used, align 4
  %39 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nblock = getelementptr inbounds %struct.DState, %struct.DState* %39, i32 0, i32 51
  %40 = load i32, i32* %save_nblock, align 8
  %add = add nsw i32 %40, 1
  %cmp27 = icmp eq i32 %38, %add
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %while.end
  store i8 0, i8* %retval, align 1
  br label %return

if.end30:                                         ; preds = %while.end
  %41 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used31 = getelementptr inbounds %struct.DState, %struct.DState* %41, i32 0, i32 17
  %42 = load i32, i32* %nblock_used31, align 4
  %43 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nblock32 = getelementptr inbounds %struct.DState, %struct.DState* %43, i32 0, i32 51
  %44 = load i32, i32* %save_nblock32, align 8
  %add33 = add nsw i32 %44, 1
  %cmp34 = icmp sgt i32 %42, %add33
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end30
  store i8 1, i8* %retval, align 1
  br label %return

if.end37:                                         ; preds = %if.end30
  %45 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_len38 = getelementptr inbounds %struct.DState, %struct.DState* %45, i32 0, i32 3
  store i32 1, i32* %state_out_len38, align 8
  %46 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k0 = getelementptr inbounds %struct.DState, %struct.DState* %46, i32 0, i32 15
  %47 = load i32, i32* %k0, align 8
  %conv39 = trunc i32 %47 to i8
  %48 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_ch40 = getelementptr inbounds %struct.DState, %struct.DState* %48, i32 0, i32 2
  store i8 %conv39, i8* %state_out_ch40, align 4
  %49 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tt = getelementptr inbounds %struct.DState, %struct.DState* %49, i32 0, i32 20
  %50 = load i32*, i32** %tt, align 8
  %51 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos = getelementptr inbounds %struct.DState, %struct.DState* %51, i32 0, i32 14
  %52 = load i32, i32* %tPos, align 4
  %idxprom41 = zext i32 %52 to i64
  %arrayidx42 = getelementptr inbounds i32, i32* %50, i64 %idxprom41
  %53 = load i32, i32* %arrayidx42, align 4
  %54 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos43 = getelementptr inbounds %struct.DState, %struct.DState* %54, i32 0, i32 14
  store i32 %53, i32* %tPos43, align 4
  %55 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos44 = getelementptr inbounds %struct.DState, %struct.DState* %55, i32 0, i32 14
  %56 = load i32, i32* %tPos44, align 4
  %and = and i32 %56, 255
  %conv45 = trunc i32 %and to i8
  store i8 %conv45, i8* %k1, align 1
  %57 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos46 = getelementptr inbounds %struct.DState, %struct.DState* %57, i32 0, i32 14
  %58 = load i32, i32* %tPos46, align 4
  %shr47 = lshr i32 %58, 8
  store i32 %shr47, i32* %tPos46, align 4
  %59 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo = getelementptr inbounds %struct.DState, %struct.DState* %59, i32 0, i32 5
  %60 = load i32, i32* %rNToGo, align 8
  %cmp48 = icmp eq i32 %60, 0
  br i1 %cmp48, label %if.then50, label %if.end62

if.then50:                                        ; preds = %if.end37
  %61 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos = getelementptr inbounds %struct.DState, %struct.DState* %61, i32 0, i32 6
  %62 = load i32, i32* %rTPos, align 4
  %idxprom51 = sext i32 %62 to i64
  %arrayidx52 = getelementptr inbounds [512 x i32], [512 x i32]* @BZ2_rNums, i64 0, i64 %idxprom51
  %63 = load i32, i32* %arrayidx52, align 4
  %64 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo53 = getelementptr inbounds %struct.DState, %struct.DState* %64, i32 0, i32 5
  store i32 %63, i32* %rNToGo53, align 8
  %65 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos54 = getelementptr inbounds %struct.DState, %struct.DState* %65, i32 0, i32 6
  %66 = load i32, i32* %rTPos54, align 4
  %inc55 = add nsw i32 %66, 1
  store i32 %inc55, i32* %rTPos54, align 4
  %67 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos56 = getelementptr inbounds %struct.DState, %struct.DState* %67, i32 0, i32 6
  %68 = load i32, i32* %rTPos56, align 4
  %cmp57 = icmp eq i32 %68, 512
  br i1 %cmp57, label %if.then59, label %if.end61

if.then59:                                        ; preds = %if.then50
  %69 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos60 = getelementptr inbounds %struct.DState, %struct.DState* %69, i32 0, i32 6
  store i32 0, i32* %rTPos60, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %if.then50
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %if.end37
  %70 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo63 = getelementptr inbounds %struct.DState, %struct.DState* %70, i32 0, i32 5
  %71 = load i32, i32* %rNToGo63, align 8
  %dec64 = add nsw i32 %71, -1
  store i32 %dec64, i32* %rNToGo63, align 8
  %72 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo65 = getelementptr inbounds %struct.DState, %struct.DState* %72, i32 0, i32 5
  %73 = load i32, i32* %rNToGo65, align 8
  %cmp66 = icmp eq i32 %73, 1
  %74 = zext i1 %cmp66 to i64
  %cond = select i1 %cmp66, i32 1, i32 0
  %75 = load i8, i8* %k1, align 1
  %conv68 = zext i8 %75 to i32
  %xor69 = xor i32 %conv68, %cond
  %conv70 = trunc i32 %xor69 to i8
  store i8 %conv70, i8* %k1, align 1
  %76 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used71 = getelementptr inbounds %struct.DState, %struct.DState* %76, i32 0, i32 17
  %77 = load i32, i32* %nblock_used71, align 4
  %inc72 = add nsw i32 %77, 1
  store i32 %inc72, i32* %nblock_used71, align 4
  %78 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used73 = getelementptr inbounds %struct.DState, %struct.DState* %78, i32 0, i32 17
  %79 = load i32, i32* %nblock_used73, align 4
  %80 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nblock74 = getelementptr inbounds %struct.DState, %struct.DState* %80, i32 0, i32 51
  %81 = load i32, i32* %save_nblock74, align 8
  %add75 = add nsw i32 %81, 1
  %cmp76 = icmp eq i32 %79, %add75
  br i1 %cmp76, label %if.then78, label %if.end79

if.then78:                                        ; preds = %if.end62
  br label %while.body

if.end79:                                         ; preds = %if.end62
  %82 = load i8, i8* %k1, align 1
  %conv80 = zext i8 %82 to i32
  %83 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k081 = getelementptr inbounds %struct.DState, %struct.DState* %83, i32 0, i32 15
  %84 = load i32, i32* %k081, align 8
  %cmp82 = icmp ne i32 %conv80, %84
  br i1 %cmp82, label %if.then84, label %if.end87

if.then84:                                        ; preds = %if.end79
  %85 = load i8, i8* %k1, align 1
  %conv85 = zext i8 %85 to i32
  %86 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k086 = getelementptr inbounds %struct.DState, %struct.DState* %86, i32 0, i32 15
  store i32 %conv85, i32* %k086, align 8
  br label %while.body

if.end87:                                         ; preds = %if.end79
  %87 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_len88 = getelementptr inbounds %struct.DState, %struct.DState* %87, i32 0, i32 3
  store i32 2, i32* %state_out_len88, align 8
  %88 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tt89 = getelementptr inbounds %struct.DState, %struct.DState* %88, i32 0, i32 20
  %89 = load i32*, i32** %tt89, align 8
  %90 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos90 = getelementptr inbounds %struct.DState, %struct.DState* %90, i32 0, i32 14
  %91 = load i32, i32* %tPos90, align 4
  %idxprom91 = zext i32 %91 to i64
  %arrayidx92 = getelementptr inbounds i32, i32* %89, i64 %idxprom91
  %92 = load i32, i32* %arrayidx92, align 4
  %93 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos93 = getelementptr inbounds %struct.DState, %struct.DState* %93, i32 0, i32 14
  store i32 %92, i32* %tPos93, align 4
  %94 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos94 = getelementptr inbounds %struct.DState, %struct.DState* %94, i32 0, i32 14
  %95 = load i32, i32* %tPos94, align 4
  %and95 = and i32 %95, 255
  %conv96 = trunc i32 %and95 to i8
  store i8 %conv96, i8* %k1, align 1
  %96 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos97 = getelementptr inbounds %struct.DState, %struct.DState* %96, i32 0, i32 14
  %97 = load i32, i32* %tPos97, align 4
  %shr98 = lshr i32 %97, 8
  store i32 %shr98, i32* %tPos97, align 4
  %98 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo99 = getelementptr inbounds %struct.DState, %struct.DState* %98, i32 0, i32 5
  %99 = load i32, i32* %rNToGo99, align 8
  %cmp100 = icmp eq i32 %99, 0
  br i1 %cmp100, label %if.then102, label %if.end115

if.then102:                                       ; preds = %if.end87
  %100 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos103 = getelementptr inbounds %struct.DState, %struct.DState* %100, i32 0, i32 6
  %101 = load i32, i32* %rTPos103, align 4
  %idxprom104 = sext i32 %101 to i64
  %arrayidx105 = getelementptr inbounds [512 x i32], [512 x i32]* @BZ2_rNums, i64 0, i64 %idxprom104
  %102 = load i32, i32* %arrayidx105, align 4
  %103 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo106 = getelementptr inbounds %struct.DState, %struct.DState* %103, i32 0, i32 5
  store i32 %102, i32* %rNToGo106, align 8
  %104 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos107 = getelementptr inbounds %struct.DState, %struct.DState* %104, i32 0, i32 6
  %105 = load i32, i32* %rTPos107, align 4
  %inc108 = add nsw i32 %105, 1
  store i32 %inc108, i32* %rTPos107, align 4
  %106 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos109 = getelementptr inbounds %struct.DState, %struct.DState* %106, i32 0, i32 6
  %107 = load i32, i32* %rTPos109, align 4
  %cmp110 = icmp eq i32 %107, 512
  br i1 %cmp110, label %if.then112, label %if.end114

if.then112:                                       ; preds = %if.then102
  %108 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos113 = getelementptr inbounds %struct.DState, %struct.DState* %108, i32 0, i32 6
  store i32 0, i32* %rTPos113, align 4
  br label %if.end114

if.end114:                                        ; preds = %if.then112, %if.then102
  br label %if.end115

if.end115:                                        ; preds = %if.end114, %if.end87
  %109 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo116 = getelementptr inbounds %struct.DState, %struct.DState* %109, i32 0, i32 5
  %110 = load i32, i32* %rNToGo116, align 8
  %dec117 = add nsw i32 %110, -1
  store i32 %dec117, i32* %rNToGo116, align 8
  %111 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo118 = getelementptr inbounds %struct.DState, %struct.DState* %111, i32 0, i32 5
  %112 = load i32, i32* %rNToGo118, align 8
  %cmp119 = icmp eq i32 %112, 1
  %113 = zext i1 %cmp119 to i64
  %cond121 = select i1 %cmp119, i32 1, i32 0
  %114 = load i8, i8* %k1, align 1
  %conv122 = zext i8 %114 to i32
  %xor123 = xor i32 %conv122, %cond121
  %conv124 = trunc i32 %xor123 to i8
  store i8 %conv124, i8* %k1, align 1
  %115 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used125 = getelementptr inbounds %struct.DState, %struct.DState* %115, i32 0, i32 17
  %116 = load i32, i32* %nblock_used125, align 4
  %inc126 = add nsw i32 %116, 1
  store i32 %inc126, i32* %nblock_used125, align 4
  %117 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used127 = getelementptr inbounds %struct.DState, %struct.DState* %117, i32 0, i32 17
  %118 = load i32, i32* %nblock_used127, align 4
  %119 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nblock128 = getelementptr inbounds %struct.DState, %struct.DState* %119, i32 0, i32 51
  %120 = load i32, i32* %save_nblock128, align 8
  %add129 = add nsw i32 %120, 1
  %cmp130 = icmp eq i32 %118, %add129
  br i1 %cmp130, label %if.then132, label %if.end133

if.then132:                                       ; preds = %if.end115
  br label %while.body

if.end133:                                        ; preds = %if.end115
  %121 = load i8, i8* %k1, align 1
  %conv134 = zext i8 %121 to i32
  %122 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k0135 = getelementptr inbounds %struct.DState, %struct.DState* %122, i32 0, i32 15
  %123 = load i32, i32* %k0135, align 8
  %cmp136 = icmp ne i32 %conv134, %123
  br i1 %cmp136, label %if.then138, label %if.end141

if.then138:                                       ; preds = %if.end133
  %124 = load i8, i8* %k1, align 1
  %conv139 = zext i8 %124 to i32
  %125 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k0140 = getelementptr inbounds %struct.DState, %struct.DState* %125, i32 0, i32 15
  store i32 %conv139, i32* %k0140, align 8
  br label %while.body

if.end141:                                        ; preds = %if.end133
  %126 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_len142 = getelementptr inbounds %struct.DState, %struct.DState* %126, i32 0, i32 3
  store i32 3, i32* %state_out_len142, align 8
  %127 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tt143 = getelementptr inbounds %struct.DState, %struct.DState* %127, i32 0, i32 20
  %128 = load i32*, i32** %tt143, align 8
  %129 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos144 = getelementptr inbounds %struct.DState, %struct.DState* %129, i32 0, i32 14
  %130 = load i32, i32* %tPos144, align 4
  %idxprom145 = zext i32 %130 to i64
  %arrayidx146 = getelementptr inbounds i32, i32* %128, i64 %idxprom145
  %131 = load i32, i32* %arrayidx146, align 4
  %132 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos147 = getelementptr inbounds %struct.DState, %struct.DState* %132, i32 0, i32 14
  store i32 %131, i32* %tPos147, align 4
  %133 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos148 = getelementptr inbounds %struct.DState, %struct.DState* %133, i32 0, i32 14
  %134 = load i32, i32* %tPos148, align 4
  %and149 = and i32 %134, 255
  %conv150 = trunc i32 %and149 to i8
  store i8 %conv150, i8* %k1, align 1
  %135 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos151 = getelementptr inbounds %struct.DState, %struct.DState* %135, i32 0, i32 14
  %136 = load i32, i32* %tPos151, align 4
  %shr152 = lshr i32 %136, 8
  store i32 %shr152, i32* %tPos151, align 4
  %137 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo153 = getelementptr inbounds %struct.DState, %struct.DState* %137, i32 0, i32 5
  %138 = load i32, i32* %rNToGo153, align 8
  %cmp154 = icmp eq i32 %138, 0
  br i1 %cmp154, label %if.then156, label %if.end169

if.then156:                                       ; preds = %if.end141
  %139 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos157 = getelementptr inbounds %struct.DState, %struct.DState* %139, i32 0, i32 6
  %140 = load i32, i32* %rTPos157, align 4
  %idxprom158 = sext i32 %140 to i64
  %arrayidx159 = getelementptr inbounds [512 x i32], [512 x i32]* @BZ2_rNums, i64 0, i64 %idxprom158
  %141 = load i32, i32* %arrayidx159, align 4
  %142 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo160 = getelementptr inbounds %struct.DState, %struct.DState* %142, i32 0, i32 5
  store i32 %141, i32* %rNToGo160, align 8
  %143 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos161 = getelementptr inbounds %struct.DState, %struct.DState* %143, i32 0, i32 6
  %144 = load i32, i32* %rTPos161, align 4
  %inc162 = add nsw i32 %144, 1
  store i32 %inc162, i32* %rTPos161, align 4
  %145 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos163 = getelementptr inbounds %struct.DState, %struct.DState* %145, i32 0, i32 6
  %146 = load i32, i32* %rTPos163, align 4
  %cmp164 = icmp eq i32 %146, 512
  br i1 %cmp164, label %if.then166, label %if.end168

if.then166:                                       ; preds = %if.then156
  %147 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos167 = getelementptr inbounds %struct.DState, %struct.DState* %147, i32 0, i32 6
  store i32 0, i32* %rTPos167, align 4
  br label %if.end168

if.end168:                                        ; preds = %if.then166, %if.then156
  br label %if.end169

if.end169:                                        ; preds = %if.end168, %if.end141
  %148 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo170 = getelementptr inbounds %struct.DState, %struct.DState* %148, i32 0, i32 5
  %149 = load i32, i32* %rNToGo170, align 8
  %dec171 = add nsw i32 %149, -1
  store i32 %dec171, i32* %rNToGo170, align 8
  %150 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo172 = getelementptr inbounds %struct.DState, %struct.DState* %150, i32 0, i32 5
  %151 = load i32, i32* %rNToGo172, align 8
  %cmp173 = icmp eq i32 %151, 1
  %152 = zext i1 %cmp173 to i64
  %cond175 = select i1 %cmp173, i32 1, i32 0
  %153 = load i8, i8* %k1, align 1
  %conv176 = zext i8 %153 to i32
  %xor177 = xor i32 %conv176, %cond175
  %conv178 = trunc i32 %xor177 to i8
  store i8 %conv178, i8* %k1, align 1
  %154 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used179 = getelementptr inbounds %struct.DState, %struct.DState* %154, i32 0, i32 17
  %155 = load i32, i32* %nblock_used179, align 4
  %inc180 = add nsw i32 %155, 1
  store i32 %inc180, i32* %nblock_used179, align 4
  %156 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used181 = getelementptr inbounds %struct.DState, %struct.DState* %156, i32 0, i32 17
  %157 = load i32, i32* %nblock_used181, align 4
  %158 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nblock182 = getelementptr inbounds %struct.DState, %struct.DState* %158, i32 0, i32 51
  %159 = load i32, i32* %save_nblock182, align 8
  %add183 = add nsw i32 %159, 1
  %cmp184 = icmp eq i32 %157, %add183
  br i1 %cmp184, label %if.then186, label %if.end187

if.then186:                                       ; preds = %if.end169
  br label %while.body

if.end187:                                        ; preds = %if.end169
  %160 = load i8, i8* %k1, align 1
  %conv188 = zext i8 %160 to i32
  %161 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k0189 = getelementptr inbounds %struct.DState, %struct.DState* %161, i32 0, i32 15
  %162 = load i32, i32* %k0189, align 8
  %cmp190 = icmp ne i32 %conv188, %162
  br i1 %cmp190, label %if.then192, label %if.end195

if.then192:                                       ; preds = %if.end187
  %163 = load i8, i8* %k1, align 1
  %conv193 = zext i8 %163 to i32
  %164 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k0194 = getelementptr inbounds %struct.DState, %struct.DState* %164, i32 0, i32 15
  store i32 %conv193, i32* %k0194, align 8
  br label %while.body

if.end195:                                        ; preds = %if.end187
  %165 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tt196 = getelementptr inbounds %struct.DState, %struct.DState* %165, i32 0, i32 20
  %166 = load i32*, i32** %tt196, align 8
  %167 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos197 = getelementptr inbounds %struct.DState, %struct.DState* %167, i32 0, i32 14
  %168 = load i32, i32* %tPos197, align 4
  %idxprom198 = zext i32 %168 to i64
  %arrayidx199 = getelementptr inbounds i32, i32* %166, i64 %idxprom198
  %169 = load i32, i32* %arrayidx199, align 4
  %170 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos200 = getelementptr inbounds %struct.DState, %struct.DState* %170, i32 0, i32 14
  store i32 %169, i32* %tPos200, align 4
  %171 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos201 = getelementptr inbounds %struct.DState, %struct.DState* %171, i32 0, i32 14
  %172 = load i32, i32* %tPos201, align 4
  %and202 = and i32 %172, 255
  %conv203 = trunc i32 %and202 to i8
  store i8 %conv203, i8* %k1, align 1
  %173 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos204 = getelementptr inbounds %struct.DState, %struct.DState* %173, i32 0, i32 14
  %174 = load i32, i32* %tPos204, align 4
  %shr205 = lshr i32 %174, 8
  store i32 %shr205, i32* %tPos204, align 4
  %175 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo206 = getelementptr inbounds %struct.DState, %struct.DState* %175, i32 0, i32 5
  %176 = load i32, i32* %rNToGo206, align 8
  %cmp207 = icmp eq i32 %176, 0
  br i1 %cmp207, label %if.then209, label %if.end222

if.then209:                                       ; preds = %if.end195
  %177 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos210 = getelementptr inbounds %struct.DState, %struct.DState* %177, i32 0, i32 6
  %178 = load i32, i32* %rTPos210, align 4
  %idxprom211 = sext i32 %178 to i64
  %arrayidx212 = getelementptr inbounds [512 x i32], [512 x i32]* @BZ2_rNums, i64 0, i64 %idxprom211
  %179 = load i32, i32* %arrayidx212, align 4
  %180 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo213 = getelementptr inbounds %struct.DState, %struct.DState* %180, i32 0, i32 5
  store i32 %179, i32* %rNToGo213, align 8
  %181 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos214 = getelementptr inbounds %struct.DState, %struct.DState* %181, i32 0, i32 6
  %182 = load i32, i32* %rTPos214, align 4
  %inc215 = add nsw i32 %182, 1
  store i32 %inc215, i32* %rTPos214, align 4
  %183 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos216 = getelementptr inbounds %struct.DState, %struct.DState* %183, i32 0, i32 6
  %184 = load i32, i32* %rTPos216, align 4
  %cmp217 = icmp eq i32 %184, 512
  br i1 %cmp217, label %if.then219, label %if.end221

if.then219:                                       ; preds = %if.then209
  %185 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos220 = getelementptr inbounds %struct.DState, %struct.DState* %185, i32 0, i32 6
  store i32 0, i32* %rTPos220, align 4
  br label %if.end221

if.end221:                                        ; preds = %if.then219, %if.then209
  br label %if.end222

if.end222:                                        ; preds = %if.end221, %if.end195
  %186 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo223 = getelementptr inbounds %struct.DState, %struct.DState* %186, i32 0, i32 5
  %187 = load i32, i32* %rNToGo223, align 8
  %dec224 = add nsw i32 %187, -1
  store i32 %dec224, i32* %rNToGo223, align 8
  %188 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo225 = getelementptr inbounds %struct.DState, %struct.DState* %188, i32 0, i32 5
  %189 = load i32, i32* %rNToGo225, align 8
  %cmp226 = icmp eq i32 %189, 1
  %190 = zext i1 %cmp226 to i64
  %cond228 = select i1 %cmp226, i32 1, i32 0
  %191 = load i8, i8* %k1, align 1
  %conv229 = zext i8 %191 to i32
  %xor230 = xor i32 %conv229, %cond228
  %conv231 = trunc i32 %xor230 to i8
  store i8 %conv231, i8* %k1, align 1
  %192 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used232 = getelementptr inbounds %struct.DState, %struct.DState* %192, i32 0, i32 17
  %193 = load i32, i32* %nblock_used232, align 4
  %inc233 = add nsw i32 %193, 1
  store i32 %inc233, i32* %nblock_used232, align 4
  %194 = load i8, i8* %k1, align 1
  %conv234 = zext i8 %194 to i32
  %add235 = add nsw i32 %conv234, 4
  %195 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_len236 = getelementptr inbounds %struct.DState, %struct.DState* %195, i32 0, i32 3
  store i32 %add235, i32* %state_out_len236, align 8
  %196 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tt237 = getelementptr inbounds %struct.DState, %struct.DState* %196, i32 0, i32 20
  %197 = load i32*, i32** %tt237, align 8
  %198 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos238 = getelementptr inbounds %struct.DState, %struct.DState* %198, i32 0, i32 14
  %199 = load i32, i32* %tPos238, align 4
  %idxprom239 = zext i32 %199 to i64
  %arrayidx240 = getelementptr inbounds i32, i32* %197, i64 %idxprom239
  %200 = load i32, i32* %arrayidx240, align 4
  %201 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos241 = getelementptr inbounds %struct.DState, %struct.DState* %201, i32 0, i32 14
  store i32 %200, i32* %tPos241, align 4
  %202 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos242 = getelementptr inbounds %struct.DState, %struct.DState* %202, i32 0, i32 14
  %203 = load i32, i32* %tPos242, align 4
  %and243 = and i32 %203, 255
  %conv244 = trunc i32 %and243 to i8
  %conv245 = zext i8 %conv244 to i32
  %204 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k0246 = getelementptr inbounds %struct.DState, %struct.DState* %204, i32 0, i32 15
  store i32 %conv245, i32* %k0246, align 8
  %205 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos247 = getelementptr inbounds %struct.DState, %struct.DState* %205, i32 0, i32 14
  %206 = load i32, i32* %tPos247, align 4
  %shr248 = lshr i32 %206, 8
  store i32 %shr248, i32* %tPos247, align 4
  %207 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo249 = getelementptr inbounds %struct.DState, %struct.DState* %207, i32 0, i32 5
  %208 = load i32, i32* %rNToGo249, align 8
  %cmp250 = icmp eq i32 %208, 0
  br i1 %cmp250, label %if.then252, label %if.end265

if.then252:                                       ; preds = %if.end222
  %209 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos253 = getelementptr inbounds %struct.DState, %struct.DState* %209, i32 0, i32 6
  %210 = load i32, i32* %rTPos253, align 4
  %idxprom254 = sext i32 %210 to i64
  %arrayidx255 = getelementptr inbounds [512 x i32], [512 x i32]* @BZ2_rNums, i64 0, i64 %idxprom254
  %211 = load i32, i32* %arrayidx255, align 4
  %212 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo256 = getelementptr inbounds %struct.DState, %struct.DState* %212, i32 0, i32 5
  store i32 %211, i32* %rNToGo256, align 8
  %213 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos257 = getelementptr inbounds %struct.DState, %struct.DState* %213, i32 0, i32 6
  %214 = load i32, i32* %rTPos257, align 4
  %inc258 = add nsw i32 %214, 1
  store i32 %inc258, i32* %rTPos257, align 4
  %215 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos259 = getelementptr inbounds %struct.DState, %struct.DState* %215, i32 0, i32 6
  %216 = load i32, i32* %rTPos259, align 4
  %cmp260 = icmp eq i32 %216, 512
  br i1 %cmp260, label %if.then262, label %if.end264

if.then262:                                       ; preds = %if.then252
  %217 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos263 = getelementptr inbounds %struct.DState, %struct.DState* %217, i32 0, i32 6
  store i32 0, i32* %rTPos263, align 4
  br label %if.end264

if.end264:                                        ; preds = %if.then262, %if.then252
  br label %if.end265

if.end265:                                        ; preds = %if.end264, %if.end222
  %218 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo266 = getelementptr inbounds %struct.DState, %struct.DState* %218, i32 0, i32 5
  %219 = load i32, i32* %rNToGo266, align 8
  %dec267 = add nsw i32 %219, -1
  store i32 %dec267, i32* %rNToGo266, align 8
  %220 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo268 = getelementptr inbounds %struct.DState, %struct.DState* %220, i32 0, i32 5
  %221 = load i32, i32* %rNToGo268, align 8
  %cmp269 = icmp eq i32 %221, 1
  %222 = zext i1 %cmp269 to i64
  %cond271 = select i1 %cmp269, i32 1, i32 0
  %223 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k0272 = getelementptr inbounds %struct.DState, %struct.DState* %223, i32 0, i32 15
  %224 = load i32, i32* %k0272, align 8
  %xor273 = xor i32 %224, %cond271
  store i32 %xor273, i32* %k0272, align 8
  %225 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used274 = getelementptr inbounds %struct.DState, %struct.DState* %225, i32 0, i32 17
  %226 = load i32, i32* %nblock_used274, align 4
  %inc275 = add nsw i32 %226, 1
  store i32 %inc275, i32* %nblock_used274, align 4
  br label %while.body

if.else:                                          ; preds = %entry
  %227 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %calculatedBlockCRC276 = getelementptr inbounds %struct.DState, %struct.DState* %227, i32 0, i32 25
  %228 = load i32, i32* %calculatedBlockCRC276, align 8
  store i32 %228, i32* %c_calculatedBlockCRC, align 4
  %229 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_ch277 = getelementptr inbounds %struct.DState, %struct.DState* %229, i32 0, i32 2
  %230 = load i8, i8* %state_out_ch277, align 4
  store i8 %230, i8* %c_state_out_ch, align 1
  %231 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_len278 = getelementptr inbounds %struct.DState, %struct.DState* %231, i32 0, i32 3
  %232 = load i32, i32* %state_out_len278, align 8
  store i32 %232, i32* %c_state_out_len, align 4
  %233 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used279 = getelementptr inbounds %struct.DState, %struct.DState* %233, i32 0, i32 17
  %234 = load i32, i32* %nblock_used279, align 4
  store i32 %234, i32* %c_nblock_used, align 4
  %235 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k0280 = getelementptr inbounds %struct.DState, %struct.DState* %235, i32 0, i32 15
  %236 = load i32, i32* %k0280, align 8
  store i32 %236, i32* %c_k0, align 4
  %237 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tt281 = getelementptr inbounds %struct.DState, %struct.DState* %237, i32 0, i32 20
  %238 = load i32*, i32** %tt281, align 8
  store i32* %238, i32** %c_tt, align 8
  %239 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos282 = getelementptr inbounds %struct.DState, %struct.DState* %239, i32 0, i32 14
  %240 = load i32, i32* %tPos282, align 4
  store i32 %240, i32* %c_tPos, align 4
  %241 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm283 = getelementptr inbounds %struct.DState, %struct.DState* %241, i32 0, i32 0
  %242 = load %struct.bz_stream*, %struct.bz_stream** %strm283, align 8
  %next_out284 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %242, i32 0, i32 4
  %243 = load i8*, i8** %next_out284, align 8
  store i8* %243, i8** %cs_next_out, align 8
  %244 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm285 = getelementptr inbounds %struct.DState, %struct.DState* %244, i32 0, i32 0
  %245 = load %struct.bz_stream*, %struct.bz_stream** %strm285, align 8
  %avail_out286 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %245, i32 0, i32 5
  %246 = load i32, i32* %avail_out286, align 8
  store i32 %246, i32* %cs_avail_out, align 4
  %247 = load i32, i32* %cs_avail_out, align 4
  store i32 %247, i32* %avail_out_INIT, align 4
  %248 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nblock287 = getelementptr inbounds %struct.DState, %struct.DState* %248, i32 0, i32 51
  %249 = load i32, i32* %save_nblock287, align 8
  %add288 = add nsw i32 %249, 1
  store i32 %add288, i32* %s_save_nblockPP, align 4
  br label %while.body289

while.body289:                                    ; preds = %if.else, %if.then361, %if.then366, %if.then377, %if.then382, %if.end384
  %250 = load i32, i32* %c_state_out_len, align 4
  %cmp290 = icmp sgt i32 %250, 0
  br i1 %cmp290, label %if.then292, label %if.end327

if.then292:                                       ; preds = %while.body289
  br label %while.body294

while.body294:                                    ; preds = %if.then292, %if.end302
  %251 = load i32, i32* %cs_avail_out, align 4
  %cmp295 = icmp eq i32 %251, 0
  br i1 %cmp295, label %if.then297, label %if.end298

if.then297:                                       ; preds = %while.body294
  br label %return_notr

if.end298:                                        ; preds = %while.body294
  %252 = load i32, i32* %c_state_out_len, align 4
  %cmp299 = icmp eq i32 %252, 1
  br i1 %cmp299, label %if.then301, label %if.end302

if.then301:                                       ; preds = %if.end298
  br label %while.end313

if.end302:                                        ; preds = %if.end298
  %253 = load i8, i8* %c_state_out_ch, align 1
  %254 = load i8*, i8** %cs_next_out, align 8
  store i8 %253, i8* %254, align 1
  %255 = load i32, i32* %c_calculatedBlockCRC, align 4
  %shl303 = shl i32 %255, 8
  %256 = load i32, i32* %c_calculatedBlockCRC, align 4
  %shr304 = lshr i32 %256, 24
  %257 = load i8, i8* %c_state_out_ch, align 1
  %conv305 = zext i8 %257 to i32
  %xor306 = xor i32 %shr304, %conv305
  %idxprom307 = zext i32 %xor306 to i64
  %arrayidx308 = getelementptr inbounds [256 x i32], [256 x i32]* @BZ2_crc32Table, i64 0, i64 %idxprom307
  %258 = load i32, i32* %arrayidx308, align 4
  %xor309 = xor i32 %shl303, %258
  store i32 %xor309, i32* %c_calculatedBlockCRC, align 4
  %259 = load i32, i32* %c_state_out_len, align 4
  %dec310 = add nsw i32 %259, -1
  store i32 %dec310, i32* %c_state_out_len, align 4
  %260 = load i8*, i8** %cs_next_out, align 8
  %incdec.ptr311 = getelementptr inbounds i8, i8* %260, i32 1
  store i8* %incdec.ptr311, i8** %cs_next_out, align 8
  %261 = load i32, i32* %cs_avail_out, align 4
  %dec312 = add i32 %261, -1
  store i32 %dec312, i32* %cs_avail_out, align 4
  br label %while.body294

while.end313:                                     ; preds = %if.then301
  br label %s_state_out_len_eq_one

s_state_out_len_eq_one:                           ; preds = %if.then351, %if.then346, %while.end313
  %262 = load i32, i32* %cs_avail_out, align 4
  %cmp314 = icmp eq i32 %262, 0
  br i1 %cmp314, label %if.then316, label %if.end317

if.then316:                                       ; preds = %s_state_out_len_eq_one
  store i32 1, i32* %c_state_out_len, align 4
  br label %return_notr

if.end317:                                        ; preds = %s_state_out_len_eq_one
  %263 = load i8, i8* %c_state_out_ch, align 1
  %264 = load i8*, i8** %cs_next_out, align 8
  store i8 %263, i8* %264, align 1
  %265 = load i32, i32* %c_calculatedBlockCRC, align 4
  %shl318 = shl i32 %265, 8
  %266 = load i32, i32* %c_calculatedBlockCRC, align 4
  %shr319 = lshr i32 %266, 24
  %267 = load i8, i8* %c_state_out_ch, align 1
  %conv320 = zext i8 %267 to i32
  %xor321 = xor i32 %shr319, %conv320
  %idxprom322 = zext i32 %xor321 to i64
  %arrayidx323 = getelementptr inbounds [256 x i32], [256 x i32]* @BZ2_crc32Table, i64 0, i64 %idxprom322
  %268 = load i32, i32* %arrayidx323, align 4
  %xor324 = xor i32 %shl318, %268
  store i32 %xor324, i32* %c_calculatedBlockCRC, align 4
  %269 = load i8*, i8** %cs_next_out, align 8
  %incdec.ptr325 = getelementptr inbounds i8, i8* %269, i32 1
  store i8* %incdec.ptr325, i8** %cs_next_out, align 8
  %270 = load i32, i32* %cs_avail_out, align 4
  %dec326 = add i32 %270, -1
  store i32 %dec326, i32* %cs_avail_out, align 4
  br label %if.end327

if.end327:                                        ; preds = %if.end317, %while.body289
  %271 = load i32, i32* %c_nblock_used, align 4
  %272 = load i32, i32* %s_save_nblockPP, align 4
  %cmp328 = icmp sgt i32 %271, %272
  br i1 %cmp328, label %if.then330, label %if.end331

if.then330:                                       ; preds = %if.end327
  store i8 1, i8* %retval, align 1
  br label %return

if.end331:                                        ; preds = %if.end327
  %273 = load i32, i32* %c_nblock_used, align 4
  %274 = load i32, i32* %s_save_nblockPP, align 4
  %cmp332 = icmp eq i32 %273, %274
  br i1 %cmp332, label %if.then334, label %if.end335

if.then334:                                       ; preds = %if.end331
  store i32 0, i32* %c_state_out_len, align 4
  br label %return_notr

if.end335:                                        ; preds = %if.end331
  %275 = load i32, i32* %c_k0, align 4
  %conv336 = trunc i32 %275 to i8
  store i8 %conv336, i8* %c_state_out_ch, align 1
  %276 = load i32*, i32** %c_tt, align 8
  %277 = load i32, i32* %c_tPos, align 4
  %idxprom337 = zext i32 %277 to i64
  %arrayidx338 = getelementptr inbounds i32, i32* %276, i64 %idxprom337
  %278 = load i32, i32* %arrayidx338, align 4
  store i32 %278, i32* %c_tPos, align 4
  %279 = load i32, i32* %c_tPos, align 4
  %and339 = and i32 %279, 255
  %conv340 = trunc i32 %and339 to i8
  store i8 %conv340, i8* %k1, align 1
  %280 = load i32, i32* %c_tPos, align 4
  %shr341 = lshr i32 %280, 8
  store i32 %shr341, i32* %c_tPos, align 4
  %281 = load i32, i32* %c_nblock_used, align 4
  %inc342 = add nsw i32 %281, 1
  store i32 %inc342, i32* %c_nblock_used, align 4
  %282 = load i8, i8* %k1, align 1
  %conv343 = zext i8 %282 to i32
  %283 = load i32, i32* %c_k0, align 4
  %cmp344 = icmp ne i32 %conv343, %283
  br i1 %cmp344, label %if.then346, label %if.end348

if.then346:                                       ; preds = %if.end335
  %284 = load i8, i8* %k1, align 1
  %conv347 = zext i8 %284 to i32
  store i32 %conv347, i32* %c_k0, align 4
  br label %s_state_out_len_eq_one

if.end348:                                        ; preds = %if.end335
  %285 = load i32, i32* %c_nblock_used, align 4
  %286 = load i32, i32* %s_save_nblockPP, align 4
  %cmp349 = icmp eq i32 %285, %286
  br i1 %cmp349, label %if.then351, label %if.end352

if.then351:                                       ; preds = %if.end348
  br label %s_state_out_len_eq_one

if.end352:                                        ; preds = %if.end348
  store i32 2, i32* %c_state_out_len, align 4
  %287 = load i32*, i32** %c_tt, align 8
  %288 = load i32, i32* %c_tPos, align 4
  %idxprom353 = zext i32 %288 to i64
  %arrayidx354 = getelementptr inbounds i32, i32* %287, i64 %idxprom353
  %289 = load i32, i32* %arrayidx354, align 4
  store i32 %289, i32* %c_tPos, align 4
  %290 = load i32, i32* %c_tPos, align 4
  %and355 = and i32 %290, 255
  %conv356 = trunc i32 %and355 to i8
  store i8 %conv356, i8* %k1, align 1
  %291 = load i32, i32* %c_tPos, align 4
  %shr357 = lshr i32 %291, 8
  store i32 %shr357, i32* %c_tPos, align 4
  %292 = load i32, i32* %c_nblock_used, align 4
  %inc358 = add nsw i32 %292, 1
  store i32 %inc358, i32* %c_nblock_used, align 4
  %293 = load i32, i32* %c_nblock_used, align 4
  %294 = load i32, i32* %s_save_nblockPP, align 4
  %cmp359 = icmp eq i32 %293, %294
  br i1 %cmp359, label %if.then361, label %if.end362

if.then361:                                       ; preds = %if.end352
  br label %while.body289

if.end362:                                        ; preds = %if.end352
  %295 = load i8, i8* %k1, align 1
  %conv363 = zext i8 %295 to i32
  %296 = load i32, i32* %c_k0, align 4
  %cmp364 = icmp ne i32 %conv363, %296
  br i1 %cmp364, label %if.then366, label %if.end368

if.then366:                                       ; preds = %if.end362
  %297 = load i8, i8* %k1, align 1
  %conv367 = zext i8 %297 to i32
  store i32 %conv367, i32* %c_k0, align 4
  br label %while.body289

if.end368:                                        ; preds = %if.end362
  store i32 3, i32* %c_state_out_len, align 4
  %298 = load i32*, i32** %c_tt, align 8
  %299 = load i32, i32* %c_tPos, align 4
  %idxprom369 = zext i32 %299 to i64
  %arrayidx370 = getelementptr inbounds i32, i32* %298, i64 %idxprom369
  %300 = load i32, i32* %arrayidx370, align 4
  store i32 %300, i32* %c_tPos, align 4
  %301 = load i32, i32* %c_tPos, align 4
  %and371 = and i32 %301, 255
  %conv372 = trunc i32 %and371 to i8
  store i8 %conv372, i8* %k1, align 1
  %302 = load i32, i32* %c_tPos, align 4
  %shr373 = lshr i32 %302, 8
  store i32 %shr373, i32* %c_tPos, align 4
  %303 = load i32, i32* %c_nblock_used, align 4
  %inc374 = add nsw i32 %303, 1
  store i32 %inc374, i32* %c_nblock_used, align 4
  %304 = load i32, i32* %c_nblock_used, align 4
  %305 = load i32, i32* %s_save_nblockPP, align 4
  %cmp375 = icmp eq i32 %304, %305
  br i1 %cmp375, label %if.then377, label %if.end378

if.then377:                                       ; preds = %if.end368
  br label %while.body289

if.end378:                                        ; preds = %if.end368
  %306 = load i8, i8* %k1, align 1
  %conv379 = zext i8 %306 to i32
  %307 = load i32, i32* %c_k0, align 4
  %cmp380 = icmp ne i32 %conv379, %307
  br i1 %cmp380, label %if.then382, label %if.end384

if.then382:                                       ; preds = %if.end378
  %308 = load i8, i8* %k1, align 1
  %conv383 = zext i8 %308 to i32
  store i32 %conv383, i32* %c_k0, align 4
  br label %while.body289

if.end384:                                        ; preds = %if.end378
  %309 = load i32*, i32** %c_tt, align 8
  %310 = load i32, i32* %c_tPos, align 4
  %idxprom385 = zext i32 %310 to i64
  %arrayidx386 = getelementptr inbounds i32, i32* %309, i64 %idxprom385
  %311 = load i32, i32* %arrayidx386, align 4
  store i32 %311, i32* %c_tPos, align 4
  %312 = load i32, i32* %c_tPos, align 4
  %and387 = and i32 %312, 255
  %conv388 = trunc i32 %and387 to i8
  store i8 %conv388, i8* %k1, align 1
  %313 = load i32, i32* %c_tPos, align 4
  %shr389 = lshr i32 %313, 8
  store i32 %shr389, i32* %c_tPos, align 4
  %314 = load i32, i32* %c_nblock_used, align 4
  %inc390 = add nsw i32 %314, 1
  store i32 %inc390, i32* %c_nblock_used, align 4
  %315 = load i8, i8* %k1, align 1
  %conv391 = zext i8 %315 to i32
  %add392 = add nsw i32 %conv391, 4
  store i32 %add392, i32* %c_state_out_len, align 4
  %316 = load i32*, i32** %c_tt, align 8
  %317 = load i32, i32* %c_tPos, align 4
  %idxprom393 = zext i32 %317 to i64
  %arrayidx394 = getelementptr inbounds i32, i32* %316, i64 %idxprom393
  %318 = load i32, i32* %arrayidx394, align 4
  store i32 %318, i32* %c_tPos, align 4
  %319 = load i32, i32* %c_tPos, align 4
  %and395 = and i32 %319, 255
  %conv396 = trunc i32 %and395 to i8
  %conv397 = zext i8 %conv396 to i32
  store i32 %conv397, i32* %c_k0, align 4
  %320 = load i32, i32* %c_tPos, align 4
  %shr398 = lshr i32 %320, 8
  store i32 %shr398, i32* %c_tPos, align 4
  %321 = load i32, i32* %c_nblock_used, align 4
  %inc399 = add nsw i32 %321, 1
  store i32 %inc399, i32* %c_nblock_used, align 4
  br label %while.body289

return_notr:                                      ; preds = %if.then334, %if.then316, %if.then297
  %322 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm400 = getelementptr inbounds %struct.DState, %struct.DState* %322, i32 0, i32 0
  %323 = load %struct.bz_stream*, %struct.bz_stream** %strm400, align 8
  %total_out_lo32401 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %323, i32 0, i32 6
  %324 = load i32, i32* %total_out_lo32401, align 4
  store i32 %324, i32* %total_out_lo32_old, align 4
  %325 = load i32, i32* %avail_out_INIT, align 4
  %326 = load i32, i32* %cs_avail_out, align 4
  %sub = sub i32 %325, %326
  %327 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm402 = getelementptr inbounds %struct.DState, %struct.DState* %327, i32 0, i32 0
  %328 = load %struct.bz_stream*, %struct.bz_stream** %strm402, align 8
  %total_out_lo32403 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %328, i32 0, i32 6
  %329 = load i32, i32* %total_out_lo32403, align 4
  %add404 = add i32 %329, %sub
  store i32 %add404, i32* %total_out_lo32403, align 4
  %330 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm405 = getelementptr inbounds %struct.DState, %struct.DState* %330, i32 0, i32 0
  %331 = load %struct.bz_stream*, %struct.bz_stream** %strm405, align 8
  %total_out_lo32406 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %331, i32 0, i32 6
  %332 = load i32, i32* %total_out_lo32406, align 4
  %333 = load i32, i32* %total_out_lo32_old, align 4
  %cmp407 = icmp ult i32 %332, %333
  br i1 %cmp407, label %if.then409, label %if.end413

if.then409:                                       ; preds = %return_notr
  %334 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm410 = getelementptr inbounds %struct.DState, %struct.DState* %334, i32 0, i32 0
  %335 = load %struct.bz_stream*, %struct.bz_stream** %strm410, align 8
  %total_out_hi32411 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %335, i32 0, i32 7
  %336 = load i32, i32* %total_out_hi32411, align 8
  %inc412 = add i32 %336, 1
  store i32 %inc412, i32* %total_out_hi32411, align 8
  br label %if.end413

if.end413:                                        ; preds = %if.then409, %return_notr
  %337 = load i32, i32* %c_calculatedBlockCRC, align 4
  %338 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %calculatedBlockCRC414 = getelementptr inbounds %struct.DState, %struct.DState* %338, i32 0, i32 25
  store i32 %337, i32* %calculatedBlockCRC414, align 8
  %339 = load i8, i8* %c_state_out_ch, align 1
  %340 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_ch415 = getelementptr inbounds %struct.DState, %struct.DState* %340, i32 0, i32 2
  store i8 %339, i8* %state_out_ch415, align 4
  %341 = load i32, i32* %c_state_out_len, align 4
  %342 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_len416 = getelementptr inbounds %struct.DState, %struct.DState* %342, i32 0, i32 3
  store i32 %341, i32* %state_out_len416, align 8
  %343 = load i32, i32* %c_nblock_used, align 4
  %344 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used417 = getelementptr inbounds %struct.DState, %struct.DState* %344, i32 0, i32 17
  store i32 %343, i32* %nblock_used417, align 4
  %345 = load i32, i32* %c_k0, align 4
  %346 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k0418 = getelementptr inbounds %struct.DState, %struct.DState* %346, i32 0, i32 15
  store i32 %345, i32* %k0418, align 8
  %347 = load i32*, i32** %c_tt, align 8
  %348 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tt419 = getelementptr inbounds %struct.DState, %struct.DState* %348, i32 0, i32 20
  store i32* %347, i32** %tt419, align 8
  %349 = load i32, i32* %c_tPos, align 4
  %350 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos420 = getelementptr inbounds %struct.DState, %struct.DState* %350, i32 0, i32 14
  store i32 %349, i32* %tPos420, align 4
  %351 = load i8*, i8** %cs_next_out, align 8
  %352 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm421 = getelementptr inbounds %struct.DState, %struct.DState* %352, i32 0, i32 0
  %353 = load %struct.bz_stream*, %struct.bz_stream** %strm421, align 8
  %next_out422 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %353, i32 0, i32 4
  store i8* %351, i8** %next_out422, align 8
  %354 = load i32, i32* %cs_avail_out, align 4
  %355 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm423 = getelementptr inbounds %struct.DState, %struct.DState* %355, i32 0, i32 0
  %356 = load %struct.bz_stream*, %struct.bz_stream** %strm423, align 8
  %avail_out424 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %356, i32 0, i32 5
  store i32 %354, i32* %avail_out424, align 8
  br label %if.end425

if.end425:                                        ; preds = %if.end413
  store i8 0, i8* %retval, align 1
  br label %return

return:                                           ; preds = %if.end425, %if.then330, %if.then36, %if.then29, %if.then3
  %357 = load i8, i8* %retval, align 1
  ret i8 %357
}

declare dso_local i32 @BZ2_decompress(%struct.DState*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BZ2_bzDecompressEnd(%struct.bz_stream* %strm) #0 {
entry:
  %retval = alloca i32, align 4
  %strm.addr = alloca %struct.bz_stream*, align 8
  %s = alloca %struct.DState*, align 8
  store %struct.bz_stream* %strm, %struct.bz_stream** %strm.addr, align 8
  %0 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %cmp = icmp eq %struct.bz_stream* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -2, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %state = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1, i32 0, i32 8
  %2 = load i8*, i8** %state, align 8
  %3 = bitcast i8* %2 to %struct.DState*
  store %struct.DState* %3, %struct.DState** %s, align 8
  %4 = load %struct.DState*, %struct.DState** %s, align 8
  %cmp1 = icmp eq %struct.DState* %4, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 -2, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %5 = load %struct.DState*, %struct.DState** %s, align 8
  %strm4 = getelementptr inbounds %struct.DState, %struct.DState* %5, i32 0, i32 0
  %6 = load %struct.bz_stream*, %struct.bz_stream** %strm4, align 8
  %7 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %cmp5 = icmp ne %struct.bz_stream* %6, %7
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  store i32 -2, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end3
  %8 = load %struct.DState*, %struct.DState** %s, align 8
  %tt = getelementptr inbounds %struct.DState, %struct.DState* %8, i32 0, i32 20
  %9 = load i32*, i32** %tt, align 8
  %cmp8 = icmp ne i32* %9, null
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end7
  %10 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %bzfree = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %10, i32 0, i32 10
  %11 = load void (i8*, i8*)*, void (i8*, i8*)** %bzfree, align 8
  %12 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %opaque = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %12, i32 0, i32 11
  %13 = load i8*, i8** %opaque, align 8
  %14 = load %struct.DState*, %struct.DState** %s, align 8
  %tt10 = getelementptr inbounds %struct.DState, %struct.DState* %14, i32 0, i32 20
  %15 = load i32*, i32** %tt10, align 8
  %16 = bitcast i32* %15 to i8*
  call void %11(i8* %13, i8* %16)
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end7
  %17 = load %struct.DState*, %struct.DState** %s, align 8
  %ll16 = getelementptr inbounds %struct.DState, %struct.DState* %17, i32 0, i32 21
  %18 = load i16*, i16** %ll16, align 8
  %cmp12 = icmp ne i16* %18, null
  br i1 %cmp12, label %if.then13, label %if.end17

if.then13:                                        ; preds = %if.end11
  %19 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %bzfree14 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %19, i32 0, i32 10
  %20 = load void (i8*, i8*)*, void (i8*, i8*)** %bzfree14, align 8
  %21 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %opaque15 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %21, i32 0, i32 11
  %22 = load i8*, i8** %opaque15, align 8
  %23 = load %struct.DState*, %struct.DState** %s, align 8
  %ll1616 = getelementptr inbounds %struct.DState, %struct.DState* %23, i32 0, i32 21
  %24 = load i16*, i16** %ll1616, align 8
  %25 = bitcast i16* %24 to i8*
  call void %20(i8* %22, i8* %25)
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %if.end11
  %26 = load %struct.DState*, %struct.DState** %s, align 8
  %ll4 = getelementptr inbounds %struct.DState, %struct.DState* %26, i32 0, i32 22
  %27 = load i8*, i8** %ll4, align 8
  %cmp18 = icmp ne i8* %27, null
  br i1 %cmp18, label %if.then19, label %if.end23

if.then19:                                        ; preds = %if.end17
  %28 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %bzfree20 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %28, i32 0, i32 10
  %29 = load void (i8*, i8*)*, void (i8*, i8*)** %bzfree20, align 8
  %30 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %opaque21 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %30, i32 0, i32 11
  %31 = load i8*, i8** %opaque21, align 8
  %32 = load %struct.DState*, %struct.DState** %s, align 8
  %ll422 = getelementptr inbounds %struct.DState, %struct.DState* %32, i32 0, i32 22
  %33 = load i8*, i8** %ll422, align 8
  call void %29(i8* %31, i8* %33)
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %if.end17
  %34 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %bzfree24 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %34, i32 0, i32 10
  %35 = load void (i8*, i8*)*, void (i8*, i8*)** %bzfree24, align 8
  %36 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %opaque25 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %36, i32 0, i32 11
  %37 = load i8*, i8** %opaque25, align 8
  %38 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %state26 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %38, i32 0, i32 8
  %39 = load i8*, i8** %state26, align 8
  call void %35(i8* %37, i8* %39)
  %40 = load %struct.bz_stream*, %struct.bz_stream** %strm.addr, align 8
  %state27 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %40, i32 0, i32 8
  store i8* null, i8** %state27, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end23, %if.then6, %if.then2, %if.then
  %41 = load i32, i32* %retval, align 4
  ret i32 %41
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @BZ2_bzWriteOpen(i32* %bzerror, %struct._IO_FILE* %f, i32 %blockSize100k, i32 %verbosity, i32 %workFactor) #0 {
entry:
  %retval = alloca i8*, align 8
  %bzerror.addr = alloca i32*, align 8
  %f.addr = alloca %struct._IO_FILE*, align 8
  %blockSize100k.addr = alloca i32, align 4
  %verbosity.addr = alloca i32, align 4
  %workFactor.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %bzf = alloca %struct.bzFile*, align 8
  store i32* %bzerror, i32** %bzerror.addr, align 8
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8
  store i32 %blockSize100k, i32* %blockSize100k.addr, align 4
  store i32 %verbosity, i32* %verbosity.addr, align 4
  store i32 %workFactor, i32* %workFactor.addr, align 4
  store %struct.bzFile* null, %struct.bzFile** %bzf, align 8
  %0 = load i32*, i32** %bzerror.addr, align 8
  %cmp = icmp ne i32* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %bzerror.addr, align 8
  store i32 0, i32* %1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp1 = icmp ne %struct.bzFile* %2, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %3 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr = getelementptr inbounds %struct.bzFile, %struct.bzFile* %3, i32 0, i32 5
  store i32 0, i32* %lastErr, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %cmp4 = icmp eq %struct._IO_FILE* %4, null
  br i1 %cmp4, label %if.then16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end3
  %5 = load i32, i32* %blockSize100k.addr, align 4
  %cmp5 = icmp slt i32 %5, 1
  br i1 %cmp5, label %if.then16, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %6 = load i32, i32* %blockSize100k.addr, align 4
  %cmp7 = icmp sgt i32 %6, 9
  br i1 %cmp7, label %if.then16, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false6
  %7 = load i32, i32* %workFactor.addr, align 4
  %cmp9 = icmp slt i32 %7, 0
  br i1 %cmp9, label %if.then16, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false8
  %8 = load i32, i32* %workFactor.addr, align 4
  %cmp11 = icmp sgt i32 %8, 250
  br i1 %cmp11, label %if.then16, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false10
  %9 = load i32, i32* %verbosity.addr, align 4
  %cmp13 = icmp slt i32 %9, 0
  br i1 %cmp13, label %if.then16, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false12
  %10 = load i32, i32* %verbosity.addr, align 4
  %cmp15 = icmp sgt i32 %10, 4
  br i1 %cmp15, label %if.then16, label %if.end24

if.then16:                                        ; preds = %lor.lhs.false14, %lor.lhs.false12, %lor.lhs.false10, %lor.lhs.false8, %lor.lhs.false6, %lor.lhs.false, %if.end3
  %11 = load i32*, i32** %bzerror.addr, align 8
  %cmp17 = icmp ne i32* %11, null
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.then16
  %12 = load i32*, i32** %bzerror.addr, align 8
  store i32 -2, i32* %12, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.then16
  %13 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp20 = icmp ne %struct.bzFile* %13, null
  br i1 %cmp20, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end19
  %14 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr22 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %14, i32 0, i32 5
  store i32 -2, i32* %lastErr22, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end19
  store i8* null, i8** %retval, align 8
  br label %return

if.end24:                                         ; preds = %lor.lhs.false14
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call = call i32 @ferror(%struct._IO_FILE* %15) #8
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then25, label %if.end33

if.then25:                                        ; preds = %if.end24
  %16 = load i32*, i32** %bzerror.addr, align 8
  %cmp26 = icmp ne i32* %16, null
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.then25
  %17 = load i32*, i32** %bzerror.addr, align 8
  store i32 -6, i32* %17, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.then25
  %18 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp29 = icmp ne %struct.bzFile* %18, null
  br i1 %cmp29, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.end28
  %19 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr31 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %19, i32 0, i32 5
  store i32 -6, i32* %lastErr31, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end28
  store i8* null, i8** %retval, align 8
  br label %return

if.end33:                                         ; preds = %if.end24
  %call34 = call noalias i8* @malloc(i64 5104) #8
  %20 = bitcast i8* %call34 to %struct.bzFile*
  store %struct.bzFile* %20, %struct.bzFile** %bzf, align 8
  %21 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp35 = icmp eq %struct.bzFile* %21, null
  br i1 %cmp35, label %if.then36, label %if.end44

if.then36:                                        ; preds = %if.end33
  %22 = load i32*, i32** %bzerror.addr, align 8
  %cmp37 = icmp ne i32* %22, null
  br i1 %cmp37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.then36
  %23 = load i32*, i32** %bzerror.addr, align 8
  store i32 -3, i32* %23, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.then36
  %24 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp40 = icmp ne %struct.bzFile* %24, null
  br i1 %cmp40, label %if.then41, label %if.end43

if.then41:                                        ; preds = %if.end39
  %25 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr42 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %25, i32 0, i32 5
  store i32 -3, i32* %lastErr42, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.end39
  store i8* null, i8** %retval, align 8
  br label %return

if.end44:                                         ; preds = %if.end33
  %26 = load i32*, i32** %bzerror.addr, align 8
  %cmp45 = icmp ne i32* %26, null
  br i1 %cmp45, label %if.then46, label %if.end47

if.then46:                                        ; preds = %if.end44
  %27 = load i32*, i32** %bzerror.addr, align 8
  store i32 0, i32* %27, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %if.end44
  %28 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp48 = icmp ne %struct.bzFile* %28, null
  br i1 %cmp48, label %if.then49, label %if.end51

if.then49:                                        ; preds = %if.end47
  %29 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr50 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %29, i32 0, i32 5
  store i32 0, i32* %lastErr50, align 8
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %if.end47
  %30 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %initialisedOk = getelementptr inbounds %struct.bzFile, %struct.bzFile* %30, i32 0, i32 6
  store i8 0, i8* %initialisedOk, align 4
  %31 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %bufN = getelementptr inbounds %struct.bzFile, %struct.bzFile* %31, i32 0, i32 2
  store i32 0, i32* %bufN, align 8
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %33 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %handle = getelementptr inbounds %struct.bzFile, %struct.bzFile* %33, i32 0, i32 0
  store %struct._IO_FILE* %32, %struct._IO_FILE** %handle, align 8
  %34 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %writing = getelementptr inbounds %struct.bzFile, %struct.bzFile* %34, i32 0, i32 3
  store i8 1, i8* %writing, align 4
  %35 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm = getelementptr inbounds %struct.bzFile, %struct.bzFile* %35, i32 0, i32 4
  %bzalloc = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm, i32 0, i32 9
  store i8* (i8*, i32, i32)* null, i8* (i8*, i32, i32)** %bzalloc, align 8
  %36 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm52 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %36, i32 0, i32 4
  %bzfree = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm52, i32 0, i32 10
  store void (i8*, i8*)* null, void (i8*, i8*)** %bzfree, align 8
  %37 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm53 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %37, i32 0, i32 4
  %opaque = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm53, i32 0, i32 11
  store i8* null, i8** %opaque, align 8
  %38 = load i32, i32* %workFactor.addr, align 4
  %cmp54 = icmp eq i32 %38, 0
  br i1 %cmp54, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.end51
  store i32 30, i32* %workFactor.addr, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %if.end51
  %39 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm57 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %39, i32 0, i32 4
  %40 = load i32, i32* %blockSize100k.addr, align 4
  %41 = load i32, i32* %verbosity.addr, align 4
  %42 = load i32, i32* %workFactor.addr, align 4
  %call58 = call i32 @BZ2_bzCompressInit(%struct.bz_stream* %strm57, i32 %40, i32 %41, i32 %42)
  store i32 %call58, i32* %ret, align 4
  %43 = load i32, i32* %ret, align 4
  %cmp59 = icmp ne i32 %43, 0
  br i1 %cmp59, label %if.then60, label %if.end68

if.then60:                                        ; preds = %if.end56
  %44 = load i32*, i32** %bzerror.addr, align 8
  %cmp61 = icmp ne i32* %44, null
  br i1 %cmp61, label %if.then62, label %if.end63

if.then62:                                        ; preds = %if.then60
  %45 = load i32, i32* %ret, align 4
  %46 = load i32*, i32** %bzerror.addr, align 8
  store i32 %45, i32* %46, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %if.then60
  %47 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp64 = icmp ne %struct.bzFile* %47, null
  br i1 %cmp64, label %if.then65, label %if.end67

if.then65:                                        ; preds = %if.end63
  %48 = load i32, i32* %ret, align 4
  %49 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr66 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %49, i32 0, i32 5
  store i32 %48, i32* %lastErr66, align 8
  br label %if.end67

if.end67:                                         ; preds = %if.then65, %if.end63
  %50 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %51 = bitcast %struct.bzFile* %50 to i8*
  call void @free(i8* %51) #8
  store i8* null, i8** %retval, align 8
  br label %return

if.end68:                                         ; preds = %if.end56
  %52 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm69 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %52, i32 0, i32 4
  %avail_in = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm69, i32 0, i32 1
  store i32 0, i32* %avail_in, align 8
  %53 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %initialisedOk70 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %53, i32 0, i32 6
  store i8 1, i8* %initialisedOk70, align 4
  %54 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %55 = bitcast %struct.bzFile* %54 to i8*
  store i8* %55, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end68, %if.end67, %if.end43, %if.end32, %if.end23
  %56 = load i8*, i8** %retval, align 8
  ret i8* %56
}

; Function Attrs: nounwind
declare dso_local i32 @ferror(%struct._IO_FILE*) #3

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #3

; Function Attrs: nounwind
declare dso_local void @free(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BZ2_bzWrite(i32* %bzerror, i8* %b, i8* %buf, i32 %len) #0 {
entry:
  %bzerror.addr = alloca i32*, align 8
  %b.addr = alloca i8*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %n = alloca i32, align 4
  %n2 = alloca i32, align 4
  %ret = alloca i32, align 4
  %bzf = alloca %struct.bzFile*, align 8
  store i32* %bzerror, i32** %bzerror.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  %0 = load i8*, i8** %b.addr, align 8
  %1 = bitcast i8* %0 to %struct.bzFile*
  store %struct.bzFile* %1, %struct.bzFile** %bzf, align 8
  %2 = load i32*, i32** %bzerror.addr, align 8
  %cmp = icmp ne i32* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32*, i32** %bzerror.addr, align 8
  store i32 0, i32* %3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp1 = icmp ne %struct.bzFile* %4, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %5 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr = getelementptr inbounds %struct.bzFile, %struct.bzFile* %5, i32 0, i32 5
  store i32 0, i32* %lastErr, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %6 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp4 = icmp eq %struct.bzFile* %6, null
  br i1 %cmp4, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end3
  %7 = load i8*, i8** %buf.addr, align 8
  %cmp5 = icmp eq i8* %7, null
  br i1 %cmp5, label %if.then8, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %8 = load i32, i32* %len.addr, align 4
  %cmp7 = icmp slt i32 %8, 0
  br i1 %cmp7, label %if.then8, label %if.end16

if.then8:                                         ; preds = %lor.lhs.false6, %lor.lhs.false, %if.end3
  %9 = load i32*, i32** %bzerror.addr, align 8
  %cmp9 = icmp ne i32* %9, null
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.then8
  %10 = load i32*, i32** %bzerror.addr, align 8
  store i32 -2, i32* %10, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.then8
  %11 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp12 = icmp ne %struct.bzFile* %11, null
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end11
  %12 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr14 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %12, i32 0, i32 5
  store i32 -2, i32* %lastErr14, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end11
  br label %return

if.end16:                                         ; preds = %lor.lhs.false6
  %13 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %writing = getelementptr inbounds %struct.bzFile, %struct.bzFile* %13, i32 0, i32 3
  %14 = load i8, i8* %writing, align 4
  %tobool = icmp ne i8 %14, 0
  br i1 %tobool, label %if.end25, label %if.then17

if.then17:                                        ; preds = %if.end16
  %15 = load i32*, i32** %bzerror.addr, align 8
  %cmp18 = icmp ne i32* %15, null
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.then17
  %16 = load i32*, i32** %bzerror.addr, align 8
  store i32 -1, i32* %16, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.then17
  %17 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp21 = icmp ne %struct.bzFile* %17, null
  br i1 %cmp21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end20
  %18 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr23 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %18, i32 0, i32 5
  store i32 -1, i32* %lastErr23, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end20
  br label %return

if.end25:                                         ; preds = %if.end16
  %19 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %handle = getelementptr inbounds %struct.bzFile, %struct.bzFile* %19, i32 0, i32 0
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %handle, align 8
  %call = call i32 @ferror(%struct._IO_FILE* %20) #8
  %tobool26 = icmp ne i32 %call, 0
  br i1 %tobool26, label %if.then27, label %if.end35

if.then27:                                        ; preds = %if.end25
  %21 = load i32*, i32** %bzerror.addr, align 8
  %cmp28 = icmp ne i32* %21, null
  br i1 %cmp28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.then27
  %22 = load i32*, i32** %bzerror.addr, align 8
  store i32 -6, i32* %22, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.then27
  %23 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp31 = icmp ne %struct.bzFile* %23, null
  br i1 %cmp31, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.end30
  %24 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr33 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %24, i32 0, i32 5
  store i32 -6, i32* %lastErr33, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end30
  br label %return

if.end35:                                         ; preds = %if.end25
  %25 = load i32, i32* %len.addr, align 4
  %cmp36 = icmp eq i32 %25, 0
  br i1 %cmp36, label %if.then37, label %if.end45

if.then37:                                        ; preds = %if.end35
  %26 = load i32*, i32** %bzerror.addr, align 8
  %cmp38 = icmp ne i32* %26, null
  br i1 %cmp38, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.then37
  %27 = load i32*, i32** %bzerror.addr, align 8
  store i32 0, i32* %27, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.then37
  %28 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp41 = icmp ne %struct.bzFile* %28, null
  br i1 %cmp41, label %if.then42, label %if.end44

if.then42:                                        ; preds = %if.end40
  %29 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr43 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %29, i32 0, i32 5
  store i32 0, i32* %lastErr43, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.end40
  br label %return

if.end45:                                         ; preds = %if.end35
  %30 = load i32, i32* %len.addr, align 4
  %31 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm = getelementptr inbounds %struct.bzFile, %struct.bzFile* %31, i32 0, i32 4
  %avail_in = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm, i32 0, i32 1
  store i32 %30, i32* %avail_in, align 8
  %32 = load i8*, i8** %buf.addr, align 8
  %33 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm46 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %33, i32 0, i32 4
  %next_in = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm46, i32 0, i32 0
  store i8* %32, i8** %next_in, align 8
  br label %while.body

while.body:                                       ; preds = %if.end45, %if.end105
  %34 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm47 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %34, i32 0, i32 4
  %avail_out = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm47, i32 0, i32 5
  store i32 5000, i32* %avail_out, align 8
  %35 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %buf48 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %35, i32 0, i32 1
  %arraydecay = getelementptr inbounds [5000 x i8], [5000 x i8]* %buf48, i64 0, i64 0
  %36 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm49 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %36, i32 0, i32 4
  %next_out = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm49, i32 0, i32 4
  store i8* %arraydecay, i8** %next_out, align 8
  %37 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm50 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %37, i32 0, i32 4
  %call51 = call i32 @BZ2_bzCompress(%struct.bz_stream* %strm50, i32 0)
  store i32 %call51, i32* %ret, align 4
  %38 = load i32, i32* %ret, align 4
  %cmp52 = icmp ne i32 %38, 1
  br i1 %cmp52, label %if.then53, label %if.end61

if.then53:                                        ; preds = %while.body
  %39 = load i32*, i32** %bzerror.addr, align 8
  %cmp54 = icmp ne i32* %39, null
  br i1 %cmp54, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.then53
  %40 = load i32, i32* %ret, align 4
  %41 = load i32*, i32** %bzerror.addr, align 8
  store i32 %40, i32* %41, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %if.then53
  %42 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp57 = icmp ne %struct.bzFile* %42, null
  br i1 %cmp57, label %if.then58, label %if.end60

if.then58:                                        ; preds = %if.end56
  %43 = load i32, i32* %ret, align 4
  %44 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr59 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %44, i32 0, i32 5
  store i32 %43, i32* %lastErr59, align 8
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %if.end56
  br label %return

if.end61:                                         ; preds = %while.body
  %45 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm62 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %45, i32 0, i32 4
  %avail_out63 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm62, i32 0, i32 5
  %46 = load i32, i32* %avail_out63, align 8
  %cmp64 = icmp ult i32 %46, 5000
  br i1 %cmp64, label %if.then65, label %if.end90

if.then65:                                        ; preds = %if.end61
  %47 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm66 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %47, i32 0, i32 4
  %avail_out67 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm66, i32 0, i32 5
  %48 = load i32, i32* %avail_out67, align 8
  %sub = sub i32 5000, %48
  store i32 %sub, i32* %n, align 4
  %49 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %buf68 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %49, i32 0, i32 1
  %arraydecay69 = getelementptr inbounds [5000 x i8], [5000 x i8]* %buf68, i64 0, i64 0
  %50 = load i32, i32* %n, align 4
  %conv = sext i32 %50 to i64
  %51 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %handle70 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %51, i32 0, i32 0
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %handle70, align 8
  %call71 = call i64 @fwrite(i8* %arraydecay69, i64 1, i64 %conv, %struct._IO_FILE* %52)
  %conv72 = trunc i64 %call71 to i32
  store i32 %conv72, i32* %n2, align 4
  %53 = load i32, i32* %n, align 4
  %54 = load i32, i32* %n2, align 4
  %cmp73 = icmp ne i32 %53, %54
  br i1 %cmp73, label %if.then79, label %lor.lhs.false75

lor.lhs.false75:                                  ; preds = %if.then65
  %55 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %handle76 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %55, i32 0, i32 0
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %handle76, align 8
  %call77 = call i32 @ferror(%struct._IO_FILE* %56) #8
  %tobool78 = icmp ne i32 %call77, 0
  br i1 %tobool78, label %if.then79, label %if.end89

if.then79:                                        ; preds = %lor.lhs.false75, %if.then65
  %57 = load i32*, i32** %bzerror.addr, align 8
  %cmp80 = icmp ne i32* %57, null
  br i1 %cmp80, label %if.then82, label %if.end83

if.then82:                                        ; preds = %if.then79
  %58 = load i32*, i32** %bzerror.addr, align 8
  store i32 -6, i32* %58, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.then82, %if.then79
  %59 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp84 = icmp ne %struct.bzFile* %59, null
  br i1 %cmp84, label %if.then86, label %if.end88

if.then86:                                        ; preds = %if.end83
  %60 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr87 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %60, i32 0, i32 5
  store i32 -6, i32* %lastErr87, align 8
  br label %if.end88

if.end88:                                         ; preds = %if.then86, %if.end83
  br label %return

if.end89:                                         ; preds = %lor.lhs.false75
  br label %if.end90

if.end90:                                         ; preds = %if.end89, %if.end61
  %61 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm91 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %61, i32 0, i32 4
  %avail_in92 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm91, i32 0, i32 1
  %62 = load i32, i32* %avail_in92, align 8
  %cmp93 = icmp eq i32 %62, 0
  br i1 %cmp93, label %if.then95, label %if.end105

if.then95:                                        ; preds = %if.end90
  %63 = load i32*, i32** %bzerror.addr, align 8
  %cmp96 = icmp ne i32* %63, null
  br i1 %cmp96, label %if.then98, label %if.end99

if.then98:                                        ; preds = %if.then95
  %64 = load i32*, i32** %bzerror.addr, align 8
  store i32 0, i32* %64, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.then98, %if.then95
  %65 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp100 = icmp ne %struct.bzFile* %65, null
  br i1 %cmp100, label %if.then102, label %if.end104

if.then102:                                       ; preds = %if.end99
  %66 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr103 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %66, i32 0, i32 5
  store i32 0, i32* %lastErr103, align 8
  br label %if.end104

if.end104:                                        ; preds = %if.then102, %if.end99
  br label %return

if.end105:                                        ; preds = %if.end90
  br label %while.body

return:                                           ; preds = %if.end104, %if.end88, %if.end60, %if.end44, %if.end34, %if.end24, %if.end15
  ret void
}

declare dso_local i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BZ2_bzWriteClose(i32* %bzerror, i8* %b, i32 %abandon, i32* %nbytes_in, i32* %nbytes_out) #0 {
entry:
  %bzerror.addr = alloca i32*, align 8
  %b.addr = alloca i8*, align 8
  %abandon.addr = alloca i32, align 4
  %nbytes_in.addr = alloca i32*, align 8
  %nbytes_out.addr = alloca i32*, align 8
  store i32* %bzerror, i32** %bzerror.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  store i32 %abandon, i32* %abandon.addr, align 4
  store i32* %nbytes_in, i32** %nbytes_in.addr, align 8
  store i32* %nbytes_out, i32** %nbytes_out.addr, align 8
  %0 = load i32*, i32** %bzerror.addr, align 8
  %1 = load i8*, i8** %b.addr, align 8
  %2 = load i32, i32* %abandon.addr, align 4
  %3 = load i32*, i32** %nbytes_in.addr, align 8
  %4 = load i32*, i32** %nbytes_out.addr, align 8
  call void @BZ2_bzWriteClose64(i32* %0, i8* %1, i32 %2, i32* %3, i32* null, i32* %4, i32* null)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BZ2_bzWriteClose64(i32* %bzerror, i8* %b, i32 %abandon, i32* %nbytes_in_lo32, i32* %nbytes_in_hi32, i32* %nbytes_out_lo32, i32* %nbytes_out_hi32) #0 {
entry:
  %bzerror.addr = alloca i32*, align 8
  %b.addr = alloca i8*, align 8
  %abandon.addr = alloca i32, align 4
  %nbytes_in_lo32.addr = alloca i32*, align 8
  %nbytes_in_hi32.addr = alloca i32*, align 8
  %nbytes_out_lo32.addr = alloca i32*, align 8
  %nbytes_out_hi32.addr = alloca i32*, align 8
  %n = alloca i32, align 4
  %n2 = alloca i32, align 4
  %ret = alloca i32, align 4
  %bzf = alloca %struct.bzFile*, align 8
  store i32* %bzerror, i32** %bzerror.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  store i32 %abandon, i32* %abandon.addr, align 4
  store i32* %nbytes_in_lo32, i32** %nbytes_in_lo32.addr, align 8
  store i32* %nbytes_in_hi32, i32** %nbytes_in_hi32.addr, align 8
  store i32* %nbytes_out_lo32, i32** %nbytes_out_lo32.addr, align 8
  store i32* %nbytes_out_hi32, i32** %nbytes_out_hi32.addr, align 8
  %0 = load i8*, i8** %b.addr, align 8
  %1 = bitcast i8* %0 to %struct.bzFile*
  store %struct.bzFile* %1, %struct.bzFile** %bzf, align 8
  %2 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp = icmp eq %struct.bzFile* %2, null
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %3 = load i32*, i32** %bzerror.addr, align 8
  %cmp1 = icmp ne i32* %3, null
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %4 = load i32*, i32** %bzerror.addr, align 8
  store i32 0, i32* %4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %5 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp3 = icmp ne %struct.bzFile* %5, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %6 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr = getelementptr inbounds %struct.bzFile, %struct.bzFile* %6, i32 0, i32 5
  store i32 0, i32* %lastErr, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  br label %return

if.end6:                                          ; preds = %entry
  %7 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %writing = getelementptr inbounds %struct.bzFile, %struct.bzFile* %7, i32 0, i32 3
  %8 = load i8, i8* %writing, align 4
  %tobool = icmp ne i8 %8, 0
  br i1 %tobool, label %if.end15, label %if.then7

if.then7:                                         ; preds = %if.end6
  %9 = load i32*, i32** %bzerror.addr, align 8
  %cmp8 = icmp ne i32* %9, null
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.then7
  %10 = load i32*, i32** %bzerror.addr, align 8
  store i32 -1, i32* %10, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.then7
  %11 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp11 = icmp ne %struct.bzFile* %11, null
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end10
  %12 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr13 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %12, i32 0, i32 5
  store i32 -1, i32* %lastErr13, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end10
  br label %return

if.end15:                                         ; preds = %if.end6
  %13 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %handle = getelementptr inbounds %struct.bzFile, %struct.bzFile* %13, i32 0, i32 0
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %handle, align 8
  %call = call i32 @ferror(%struct._IO_FILE* %14) #8
  %tobool16 = icmp ne i32 %call, 0
  br i1 %tobool16, label %if.then17, label %if.end25

if.then17:                                        ; preds = %if.end15
  %15 = load i32*, i32** %bzerror.addr, align 8
  %cmp18 = icmp ne i32* %15, null
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.then17
  %16 = load i32*, i32** %bzerror.addr, align 8
  store i32 -6, i32* %16, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.then17
  %17 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp21 = icmp ne %struct.bzFile* %17, null
  br i1 %cmp21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end20
  %18 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr23 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %18, i32 0, i32 5
  store i32 -6, i32* %lastErr23, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end20
  br label %return

if.end25:                                         ; preds = %if.end15
  %19 = load i32*, i32** %nbytes_in_lo32.addr, align 8
  %cmp26 = icmp ne i32* %19, null
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end25
  %20 = load i32*, i32** %nbytes_in_lo32.addr, align 8
  store i32 0, i32* %20, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end25
  %21 = load i32*, i32** %nbytes_in_hi32.addr, align 8
  %cmp29 = icmp ne i32* %21, null
  br i1 %cmp29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end28
  %22 = load i32*, i32** %nbytes_in_hi32.addr, align 8
  store i32 0, i32* %22, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end28
  %23 = load i32*, i32** %nbytes_out_lo32.addr, align 8
  %cmp32 = icmp ne i32* %23, null
  br i1 %cmp32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end31
  %24 = load i32*, i32** %nbytes_out_lo32.addr, align 8
  store i32 0, i32* %24, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end31
  %25 = load i32*, i32** %nbytes_out_hi32.addr, align 8
  %cmp35 = icmp ne i32* %25, null
  br i1 %cmp35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end34
  %26 = load i32*, i32** %nbytes_out_hi32.addr, align 8
  store i32 0, i32* %26, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end34
  %27 = load i32, i32* %abandon.addr, align 4
  %tobool38 = icmp ne i32 %27, 0
  br i1 %tobool38, label %if.end89, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end37
  %28 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr39 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %28, i32 0, i32 5
  %29 = load i32, i32* %lastErr39, align 8
  %cmp40 = icmp eq i32 %29, 0
  br i1 %cmp40, label %if.then41, label %if.end89

if.then41:                                        ; preds = %land.lhs.true
  br label %while.body

while.body:                                       ; preds = %if.then41, %if.end88
  %30 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm = getelementptr inbounds %struct.bzFile, %struct.bzFile* %30, i32 0, i32 4
  %avail_out = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm, i32 0, i32 5
  store i32 5000, i32* %avail_out, align 8
  %31 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %buf = getelementptr inbounds %struct.bzFile, %struct.bzFile* %31, i32 0, i32 1
  %arraydecay = getelementptr inbounds [5000 x i8], [5000 x i8]* %buf, i64 0, i64 0
  %32 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm42 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %32, i32 0, i32 4
  %next_out = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm42, i32 0, i32 4
  store i8* %arraydecay, i8** %next_out, align 8
  %33 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm43 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %33, i32 0, i32 4
  %call44 = call i32 @BZ2_bzCompress(%struct.bz_stream* %strm43, i32 2)
  store i32 %call44, i32* %ret, align 4
  %34 = load i32, i32* %ret, align 4
  %cmp45 = icmp ne i32 %34, 3
  br i1 %cmp45, label %land.lhs.true46, label %if.end56

land.lhs.true46:                                  ; preds = %while.body
  %35 = load i32, i32* %ret, align 4
  %cmp47 = icmp ne i32 %35, 4
  br i1 %cmp47, label %if.then48, label %if.end56

if.then48:                                        ; preds = %land.lhs.true46
  %36 = load i32*, i32** %bzerror.addr, align 8
  %cmp49 = icmp ne i32* %36, null
  br i1 %cmp49, label %if.then50, label %if.end51

if.then50:                                        ; preds = %if.then48
  %37 = load i32, i32* %ret, align 4
  %38 = load i32*, i32** %bzerror.addr, align 8
  store i32 %37, i32* %38, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %if.then48
  %39 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp52 = icmp ne %struct.bzFile* %39, null
  br i1 %cmp52, label %if.then53, label %if.end55

if.then53:                                        ; preds = %if.end51
  %40 = load i32, i32* %ret, align 4
  %41 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr54 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %41, i32 0, i32 5
  store i32 %40, i32* %lastErr54, align 8
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %if.end51
  br label %return

if.end56:                                         ; preds = %land.lhs.true46, %while.body
  %42 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm57 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %42, i32 0, i32 4
  %avail_out58 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm57, i32 0, i32 5
  %43 = load i32, i32* %avail_out58, align 8
  %cmp59 = icmp ult i32 %43, 5000
  br i1 %cmp59, label %if.then60, label %if.end84

if.then60:                                        ; preds = %if.end56
  %44 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm61 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %44, i32 0, i32 4
  %avail_out62 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm61, i32 0, i32 5
  %45 = load i32, i32* %avail_out62, align 8
  %sub = sub i32 5000, %45
  store i32 %sub, i32* %n, align 4
  %46 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %buf63 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %46, i32 0, i32 1
  %arraydecay64 = getelementptr inbounds [5000 x i8], [5000 x i8]* %buf63, i64 0, i64 0
  %47 = load i32, i32* %n, align 4
  %conv = sext i32 %47 to i64
  %48 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %handle65 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %48, i32 0, i32 0
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %handle65, align 8
  %call66 = call i64 @fwrite(i8* %arraydecay64, i64 1, i64 %conv, %struct._IO_FILE* %49)
  %conv67 = trunc i64 %call66 to i32
  store i32 %conv67, i32* %n2, align 4
  %50 = load i32, i32* %n, align 4
  %51 = load i32, i32* %n2, align 4
  %cmp68 = icmp ne i32 %50, %51
  br i1 %cmp68, label %if.then73, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then60
  %52 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %handle70 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %52, i32 0, i32 0
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %handle70, align 8
  %call71 = call i32 @ferror(%struct._IO_FILE* %53) #8
  %tobool72 = icmp ne i32 %call71, 0
  br i1 %tobool72, label %if.then73, label %if.end83

if.then73:                                        ; preds = %lor.lhs.false, %if.then60
  %54 = load i32*, i32** %bzerror.addr, align 8
  %cmp74 = icmp ne i32* %54, null
  br i1 %cmp74, label %if.then76, label %if.end77

if.then76:                                        ; preds = %if.then73
  %55 = load i32*, i32** %bzerror.addr, align 8
  store i32 -6, i32* %55, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.then76, %if.then73
  %56 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp78 = icmp ne %struct.bzFile* %56, null
  br i1 %cmp78, label %if.then80, label %if.end82

if.then80:                                        ; preds = %if.end77
  %57 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr81 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %57, i32 0, i32 5
  store i32 -6, i32* %lastErr81, align 8
  br label %if.end82

if.end82:                                         ; preds = %if.then80, %if.end77
  br label %return

if.end83:                                         ; preds = %lor.lhs.false
  br label %if.end84

if.end84:                                         ; preds = %if.end83, %if.end56
  %58 = load i32, i32* %ret, align 4
  %cmp85 = icmp eq i32 %58, 4
  br i1 %cmp85, label %if.then87, label %if.end88

if.then87:                                        ; preds = %if.end84
  br label %while.end

if.end88:                                         ; preds = %if.end84
  br label %while.body

while.end:                                        ; preds = %if.then87
  br label %if.end89

if.end89:                                         ; preds = %while.end, %land.lhs.true, %if.end37
  %59 = load i32, i32* %abandon.addr, align 4
  %tobool90 = icmp ne i32 %59, 0
  br i1 %tobool90, label %if.end112, label %land.lhs.true91

land.lhs.true91:                                  ; preds = %if.end89
  %60 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %handle92 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %60, i32 0, i32 0
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %handle92, align 8
  %call93 = call i32 @ferror(%struct._IO_FILE* %61) #8
  %tobool94 = icmp ne i32 %call93, 0
  br i1 %tobool94, label %if.end112, label %if.then95

if.then95:                                        ; preds = %land.lhs.true91
  %62 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %handle96 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %62, i32 0, i32 0
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** %handle96, align 8
  %call97 = call i32 @fflush(%struct._IO_FILE* %63)
  %64 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %handle98 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %64, i32 0, i32 0
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %handle98, align 8
  %call99 = call i32 @ferror(%struct._IO_FILE* %65) #8
  %tobool100 = icmp ne i32 %call99, 0
  br i1 %tobool100, label %if.then101, label %if.end111

if.then101:                                       ; preds = %if.then95
  %66 = load i32*, i32** %bzerror.addr, align 8
  %cmp102 = icmp ne i32* %66, null
  br i1 %cmp102, label %if.then104, label %if.end105

if.then104:                                       ; preds = %if.then101
  %67 = load i32*, i32** %bzerror.addr, align 8
  store i32 -6, i32* %67, align 4
  br label %if.end105

if.end105:                                        ; preds = %if.then104, %if.then101
  %68 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp106 = icmp ne %struct.bzFile* %68, null
  br i1 %cmp106, label %if.then108, label %if.end110

if.then108:                                       ; preds = %if.end105
  %69 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr109 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %69, i32 0, i32 5
  store i32 -6, i32* %lastErr109, align 8
  br label %if.end110

if.end110:                                        ; preds = %if.then108, %if.end105
  br label %return

if.end111:                                        ; preds = %if.then95
  br label %if.end112

if.end112:                                        ; preds = %if.end111, %land.lhs.true91, %if.end89
  %70 = load i32*, i32** %nbytes_in_lo32.addr, align 8
  %cmp113 = icmp ne i32* %70, null
  br i1 %cmp113, label %if.then115, label %if.end117

if.then115:                                       ; preds = %if.end112
  %71 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm116 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %71, i32 0, i32 4
  %total_in_lo32 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm116, i32 0, i32 2
  %72 = load i32, i32* %total_in_lo32, align 4
  %73 = load i32*, i32** %nbytes_in_lo32.addr, align 8
  store i32 %72, i32* %73, align 4
  br label %if.end117

if.end117:                                        ; preds = %if.then115, %if.end112
  %74 = load i32*, i32** %nbytes_in_hi32.addr, align 8
  %cmp118 = icmp ne i32* %74, null
  br i1 %cmp118, label %if.then120, label %if.end122

if.then120:                                       ; preds = %if.end117
  %75 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm121 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %75, i32 0, i32 4
  %total_in_hi32 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm121, i32 0, i32 3
  %76 = load i32, i32* %total_in_hi32, align 8
  %77 = load i32*, i32** %nbytes_in_hi32.addr, align 8
  store i32 %76, i32* %77, align 4
  br label %if.end122

if.end122:                                        ; preds = %if.then120, %if.end117
  %78 = load i32*, i32** %nbytes_out_lo32.addr, align 8
  %cmp123 = icmp ne i32* %78, null
  br i1 %cmp123, label %if.then125, label %if.end127

if.then125:                                       ; preds = %if.end122
  %79 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm126 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %79, i32 0, i32 4
  %total_out_lo32 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm126, i32 0, i32 6
  %80 = load i32, i32* %total_out_lo32, align 4
  %81 = load i32*, i32** %nbytes_out_lo32.addr, align 8
  store i32 %80, i32* %81, align 4
  br label %if.end127

if.end127:                                        ; preds = %if.then125, %if.end122
  %82 = load i32*, i32** %nbytes_out_hi32.addr, align 8
  %cmp128 = icmp ne i32* %82, null
  br i1 %cmp128, label %if.then130, label %if.end132

if.then130:                                       ; preds = %if.end127
  %83 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm131 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %83, i32 0, i32 4
  %total_out_hi32 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm131, i32 0, i32 7
  %84 = load i32, i32* %total_out_hi32, align 8
  %85 = load i32*, i32** %nbytes_out_hi32.addr, align 8
  store i32 %84, i32* %85, align 4
  br label %if.end132

if.end132:                                        ; preds = %if.then130, %if.end127
  %86 = load i32*, i32** %bzerror.addr, align 8
  %cmp133 = icmp ne i32* %86, null
  br i1 %cmp133, label %if.then135, label %if.end136

if.then135:                                       ; preds = %if.end132
  %87 = load i32*, i32** %bzerror.addr, align 8
  store i32 0, i32* %87, align 4
  br label %if.end136

if.end136:                                        ; preds = %if.then135, %if.end132
  %88 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp137 = icmp ne %struct.bzFile* %88, null
  br i1 %cmp137, label %if.then139, label %if.end141

if.then139:                                       ; preds = %if.end136
  %89 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr140 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %89, i32 0, i32 5
  store i32 0, i32* %lastErr140, align 8
  br label %if.end141

if.end141:                                        ; preds = %if.then139, %if.end136
  %90 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm142 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %90, i32 0, i32 4
  %call143 = call i32 @BZ2_bzCompressEnd(%struct.bz_stream* %strm142)
  %91 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %92 = bitcast %struct.bzFile* %91 to i8*
  call void @free(i8* %92) #8
  br label %return

return:                                           ; preds = %if.end141, %if.end110, %if.end82, %if.end55, %if.end24, %if.end14, %if.end5
  ret void
}

declare dso_local i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @BZ2_bzReadOpen(i32* %bzerror, %struct._IO_FILE* %f, i32 %verbosity, i32 %small, i8* %unused, i32 %nUnused) #0 {
entry:
  %retval = alloca i8*, align 8
  %bzerror.addr = alloca i32*, align 8
  %f.addr = alloca %struct._IO_FILE*, align 8
  %verbosity.addr = alloca i32, align 4
  %small.addr = alloca i32, align 4
  %unused.addr = alloca i8*, align 8
  %nUnused.addr = alloca i32, align 4
  %bzf = alloca %struct.bzFile*, align 8
  %ret = alloca i32, align 4
  store i32* %bzerror, i32** %bzerror.addr, align 8
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8
  store i32 %verbosity, i32* %verbosity.addr, align 4
  store i32 %small, i32* %small.addr, align 4
  store i8* %unused, i8** %unused.addr, align 8
  store i32 %nUnused, i32* %nUnused.addr, align 4
  store %struct.bzFile* null, %struct.bzFile** %bzf, align 8
  %0 = load i32*, i32** %bzerror.addr, align 8
  %cmp = icmp ne i32* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %bzerror.addr, align 8
  store i32 0, i32* %1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp1 = icmp ne %struct.bzFile* %2, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %3 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr = getelementptr inbounds %struct.bzFile, %struct.bzFile* %3, i32 0, i32 5
  store i32 0, i32* %lastErr, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %cmp4 = icmp eq %struct._IO_FILE* %4, null
  br i1 %cmp4, label %if.then21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end3
  %5 = load i32, i32* %small.addr, align 4
  %cmp5 = icmp ne i32 %5, 0
  br i1 %cmp5, label %land.lhs.true, label %lor.lhs.false7

land.lhs.true:                                    ; preds = %lor.lhs.false
  %6 = load i32, i32* %small.addr, align 4
  %cmp6 = icmp ne i32 %6, 1
  br i1 %cmp6, label %if.then21, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %land.lhs.true, %lor.lhs.false
  %7 = load i32, i32* %verbosity.addr, align 4
  %cmp8 = icmp slt i32 %7, 0
  br i1 %cmp8, label %if.then21, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false7
  %8 = load i32, i32* %verbosity.addr, align 4
  %cmp10 = icmp sgt i32 %8, 4
  br i1 %cmp10, label %if.then21, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false9
  %9 = load i8*, i8** %unused.addr, align 8
  %cmp12 = icmp eq i8* %9, null
  br i1 %cmp12, label %land.lhs.true13, label %lor.lhs.false15

land.lhs.true13:                                  ; preds = %lor.lhs.false11
  %10 = load i32, i32* %nUnused.addr, align 4
  %cmp14 = icmp ne i32 %10, 0
  br i1 %cmp14, label %if.then21, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %land.lhs.true13, %lor.lhs.false11
  %11 = load i8*, i8** %unused.addr, align 8
  %cmp16 = icmp ne i8* %11, null
  br i1 %cmp16, label %land.lhs.true17, label %if.end29

land.lhs.true17:                                  ; preds = %lor.lhs.false15
  %12 = load i32, i32* %nUnused.addr, align 4
  %cmp18 = icmp slt i32 %12, 0
  br i1 %cmp18, label %if.then21, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %land.lhs.true17
  %13 = load i32, i32* %nUnused.addr, align 4
  %cmp20 = icmp sgt i32 %13, 5000
  br i1 %cmp20, label %if.then21, label %if.end29

if.then21:                                        ; preds = %lor.lhs.false19, %land.lhs.true17, %land.lhs.true13, %lor.lhs.false9, %lor.lhs.false7, %land.lhs.true, %if.end3
  %14 = load i32*, i32** %bzerror.addr, align 8
  %cmp22 = icmp ne i32* %14, null
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.then21
  %15 = load i32*, i32** %bzerror.addr, align 8
  store i32 -2, i32* %15, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.then21
  %16 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp25 = icmp ne %struct.bzFile* %16, null
  br i1 %cmp25, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end24
  %17 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr27 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %17, i32 0, i32 5
  store i32 -2, i32* %lastErr27, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end24
  store i8* null, i8** %retval, align 8
  br label %return

if.end29:                                         ; preds = %lor.lhs.false19, %lor.lhs.false15
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call = call i32 @ferror(%struct._IO_FILE* %18) #8
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then30, label %if.end38

if.then30:                                        ; preds = %if.end29
  %19 = load i32*, i32** %bzerror.addr, align 8
  %cmp31 = icmp ne i32* %19, null
  br i1 %cmp31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.then30
  %20 = load i32*, i32** %bzerror.addr, align 8
  store i32 -6, i32* %20, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.then30
  %21 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp34 = icmp ne %struct.bzFile* %21, null
  br i1 %cmp34, label %if.then35, label %if.end37

if.then35:                                        ; preds = %if.end33
  %22 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr36 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %22, i32 0, i32 5
  store i32 -6, i32* %lastErr36, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.end33
  store i8* null, i8** %retval, align 8
  br label %return

if.end38:                                         ; preds = %if.end29
  %call39 = call noalias i8* @malloc(i64 5104) #8
  %23 = bitcast i8* %call39 to %struct.bzFile*
  store %struct.bzFile* %23, %struct.bzFile** %bzf, align 8
  %24 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp40 = icmp eq %struct.bzFile* %24, null
  br i1 %cmp40, label %if.then41, label %if.end49

if.then41:                                        ; preds = %if.end38
  %25 = load i32*, i32** %bzerror.addr, align 8
  %cmp42 = icmp ne i32* %25, null
  br i1 %cmp42, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.then41
  %26 = load i32*, i32** %bzerror.addr, align 8
  store i32 -3, i32* %26, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %if.then41
  %27 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp45 = icmp ne %struct.bzFile* %27, null
  br i1 %cmp45, label %if.then46, label %if.end48

if.then46:                                        ; preds = %if.end44
  %28 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr47 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %28, i32 0, i32 5
  store i32 -3, i32* %lastErr47, align 8
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %if.end44
  store i8* null, i8** %retval, align 8
  br label %return

if.end49:                                         ; preds = %if.end38
  %29 = load i32*, i32** %bzerror.addr, align 8
  %cmp50 = icmp ne i32* %29, null
  br i1 %cmp50, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.end49
  %30 = load i32*, i32** %bzerror.addr, align 8
  store i32 0, i32* %30, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %if.end49
  %31 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp53 = icmp ne %struct.bzFile* %31, null
  br i1 %cmp53, label %if.then54, label %if.end56

if.then54:                                        ; preds = %if.end52
  %32 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr55 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %32, i32 0, i32 5
  store i32 0, i32* %lastErr55, align 8
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %if.end52
  %33 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %initialisedOk = getelementptr inbounds %struct.bzFile, %struct.bzFile* %33, i32 0, i32 6
  store i8 0, i8* %initialisedOk, align 4
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %35 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %handle = getelementptr inbounds %struct.bzFile, %struct.bzFile* %35, i32 0, i32 0
  store %struct._IO_FILE* %34, %struct._IO_FILE** %handle, align 8
  %36 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %bufN = getelementptr inbounds %struct.bzFile, %struct.bzFile* %36, i32 0, i32 2
  store i32 0, i32* %bufN, align 8
  %37 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %writing = getelementptr inbounds %struct.bzFile, %struct.bzFile* %37, i32 0, i32 3
  store i8 0, i8* %writing, align 4
  %38 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm = getelementptr inbounds %struct.bzFile, %struct.bzFile* %38, i32 0, i32 4
  %bzalloc = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm, i32 0, i32 9
  store i8* (i8*, i32, i32)* null, i8* (i8*, i32, i32)** %bzalloc, align 8
  %39 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm57 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %39, i32 0, i32 4
  %bzfree = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm57, i32 0, i32 10
  store void (i8*, i8*)* null, void (i8*, i8*)** %bzfree, align 8
  %40 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm58 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %40, i32 0, i32 4
  %opaque = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm58, i32 0, i32 11
  store i8* null, i8** %opaque, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end56
  %41 = load i32, i32* %nUnused.addr, align 4
  %cmp59 = icmp sgt i32 %41, 0
  br i1 %cmp59, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %42 = load i8*, i8** %unused.addr, align 8
  %43 = load i8, i8* %42, align 1
  %44 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %buf = getelementptr inbounds %struct.bzFile, %struct.bzFile* %44, i32 0, i32 1
  %45 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %bufN60 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %45, i32 0, i32 2
  %46 = load i32, i32* %bufN60, align 8
  %idxprom = sext i32 %46 to i64
  %arrayidx = getelementptr inbounds [5000 x i8], [5000 x i8]* %buf, i64 0, i64 %idxprom
  store i8 %43, i8* %arrayidx, align 1
  %47 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %bufN61 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %47, i32 0, i32 2
  %48 = load i32, i32* %bufN61, align 8
  %inc = add nsw i32 %48, 1
  store i32 %inc, i32* %bufN61, align 8
  %49 = load i8*, i8** %unused.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %49, i64 1
  store i8* %add.ptr, i8** %unused.addr, align 8
  %50 = load i32, i32* %nUnused.addr, align 4
  %dec = add nsw i32 %50, -1
  store i32 %dec, i32* %nUnused.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %51 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm62 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %51, i32 0, i32 4
  %52 = load i32, i32* %verbosity.addr, align 4
  %53 = load i32, i32* %small.addr, align 4
  %call63 = call i32 @BZ2_bzDecompressInit(%struct.bz_stream* %strm62, i32 %52, i32 %53)
  store i32 %call63, i32* %ret, align 4
  %54 = load i32, i32* %ret, align 4
  %cmp64 = icmp ne i32 %54, 0
  br i1 %cmp64, label %if.then65, label %if.end73

if.then65:                                        ; preds = %while.end
  %55 = load i32*, i32** %bzerror.addr, align 8
  %cmp66 = icmp ne i32* %55, null
  br i1 %cmp66, label %if.then67, label %if.end68

if.then67:                                        ; preds = %if.then65
  %56 = load i32, i32* %ret, align 4
  %57 = load i32*, i32** %bzerror.addr, align 8
  store i32 %56, i32* %57, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.then67, %if.then65
  %58 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp69 = icmp ne %struct.bzFile* %58, null
  br i1 %cmp69, label %if.then70, label %if.end72

if.then70:                                        ; preds = %if.end68
  %59 = load i32, i32* %ret, align 4
  %60 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr71 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %60, i32 0, i32 5
  store i32 %59, i32* %lastErr71, align 8
  br label %if.end72

if.end72:                                         ; preds = %if.then70, %if.end68
  %61 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %62 = bitcast %struct.bzFile* %61 to i8*
  call void @free(i8* %62) #8
  store i8* null, i8** %retval, align 8
  br label %return

if.end73:                                         ; preds = %while.end
  %63 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %bufN74 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %63, i32 0, i32 2
  %64 = load i32, i32* %bufN74, align 8
  %65 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm75 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %65, i32 0, i32 4
  %avail_in = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm75, i32 0, i32 1
  store i32 %64, i32* %avail_in, align 8
  %66 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %buf76 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %66, i32 0, i32 1
  %arraydecay = getelementptr inbounds [5000 x i8], [5000 x i8]* %buf76, i64 0, i64 0
  %67 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm77 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %67, i32 0, i32 4
  %next_in = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm77, i32 0, i32 0
  store i8* %arraydecay, i8** %next_in, align 8
  %68 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %initialisedOk78 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %68, i32 0, i32 6
  store i8 1, i8* %initialisedOk78, align 4
  %69 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %70 = bitcast %struct.bzFile* %69 to i8*
  store i8* %70, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end73, %if.end72, %if.end48, %if.end37, %if.end28
  %71 = load i8*, i8** %retval, align 8
  ret i8* %71
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BZ2_bzReadClose(i32* %bzerror, i8* %b) #0 {
entry:
  %bzerror.addr = alloca i32*, align 8
  %b.addr = alloca i8*, align 8
  %bzf = alloca %struct.bzFile*, align 8
  store i32* %bzerror, i32** %bzerror.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  %0 = load i8*, i8** %b.addr, align 8
  %1 = bitcast i8* %0 to %struct.bzFile*
  store %struct.bzFile* %1, %struct.bzFile** %bzf, align 8
  %2 = load i32*, i32** %bzerror.addr, align 8
  %cmp = icmp ne i32* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32*, i32** %bzerror.addr, align 8
  store i32 0, i32* %3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp1 = icmp ne %struct.bzFile* %4, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %5 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr = getelementptr inbounds %struct.bzFile, %struct.bzFile* %5, i32 0, i32 5
  store i32 0, i32* %lastErr, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %6 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp4 = icmp eq %struct.bzFile* %6, null
  br i1 %cmp4, label %if.then5, label %if.end13

if.then5:                                         ; preds = %if.end3
  %7 = load i32*, i32** %bzerror.addr, align 8
  %cmp6 = icmp ne i32* %7, null
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.then5
  %8 = load i32*, i32** %bzerror.addr, align 8
  store i32 0, i32* %8, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.then5
  %9 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp9 = icmp ne %struct.bzFile* %9, null
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end8
  %10 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr11 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %10, i32 0, i32 5
  store i32 0, i32* %lastErr11, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end8
  br label %return

if.end13:                                         ; preds = %if.end3
  %11 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %writing = getelementptr inbounds %struct.bzFile, %struct.bzFile* %11, i32 0, i32 3
  %12 = load i8, i8* %writing, align 4
  %tobool = icmp ne i8 %12, 0
  br i1 %tobool, label %if.then14, label %if.end22

if.then14:                                        ; preds = %if.end13
  %13 = load i32*, i32** %bzerror.addr, align 8
  %cmp15 = icmp ne i32* %13, null
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.then14
  %14 = load i32*, i32** %bzerror.addr, align 8
  store i32 -1, i32* %14, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.then14
  %15 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp18 = icmp ne %struct.bzFile* %15, null
  br i1 %cmp18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end17
  %16 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr20 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %16, i32 0, i32 5
  store i32 -1, i32* %lastErr20, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end17
  br label %return

if.end22:                                         ; preds = %if.end13
  %17 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %initialisedOk = getelementptr inbounds %struct.bzFile, %struct.bzFile* %17, i32 0, i32 6
  %18 = load i8, i8* %initialisedOk, align 4
  %tobool23 = icmp ne i8 %18, 0
  br i1 %tobool23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end22
  %19 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm = getelementptr inbounds %struct.bzFile, %struct.bzFile* %19, i32 0, i32 4
  %call = call i32 @BZ2_bzDecompressEnd(%struct.bz_stream* %strm)
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end22
  %20 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %21 = bitcast %struct.bzFile* %20 to i8*
  call void @free(i8* %21) #8
  br label %return

return:                                           ; preds = %if.end25, %if.end21, %if.end12
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BZ2_bzRead(i32* %bzerror, i8* %b, i8* %buf, i32 %len) #0 {
entry:
  %retval = alloca i32, align 4
  %bzerror.addr = alloca i32*, align 8
  %b.addr = alloca i8*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %n = alloca i32, align 4
  %ret = alloca i32, align 4
  %bzf = alloca %struct.bzFile*, align 8
  store i32* %bzerror, i32** %bzerror.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  %0 = load i8*, i8** %b.addr, align 8
  %1 = bitcast i8* %0 to %struct.bzFile*
  store %struct.bzFile* %1, %struct.bzFile** %bzf, align 8
  %2 = load i32*, i32** %bzerror.addr, align 8
  %cmp = icmp ne i32* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32*, i32** %bzerror.addr, align 8
  store i32 0, i32* %3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp1 = icmp ne %struct.bzFile* %4, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %5 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr = getelementptr inbounds %struct.bzFile, %struct.bzFile* %5, i32 0, i32 5
  store i32 0, i32* %lastErr, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %6 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp4 = icmp eq %struct.bzFile* %6, null
  br i1 %cmp4, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end3
  %7 = load i8*, i8** %buf.addr, align 8
  %cmp5 = icmp eq i8* %7, null
  br i1 %cmp5, label %if.then8, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %8 = load i32, i32* %len.addr, align 4
  %cmp7 = icmp slt i32 %8, 0
  br i1 %cmp7, label %if.then8, label %if.end16

if.then8:                                         ; preds = %lor.lhs.false6, %lor.lhs.false, %if.end3
  %9 = load i32*, i32** %bzerror.addr, align 8
  %cmp9 = icmp ne i32* %9, null
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.then8
  %10 = load i32*, i32** %bzerror.addr, align 8
  store i32 -2, i32* %10, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.then8
  %11 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp12 = icmp ne %struct.bzFile* %11, null
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end11
  %12 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr14 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %12, i32 0, i32 5
  store i32 -2, i32* %lastErr14, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end11
  store i32 0, i32* %retval, align 4
  br label %return

if.end16:                                         ; preds = %lor.lhs.false6
  %13 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %writing = getelementptr inbounds %struct.bzFile, %struct.bzFile* %13, i32 0, i32 3
  %14 = load i8, i8* %writing, align 4
  %tobool = icmp ne i8 %14, 0
  br i1 %tobool, label %if.then17, label %if.end25

if.then17:                                        ; preds = %if.end16
  %15 = load i32*, i32** %bzerror.addr, align 8
  %cmp18 = icmp ne i32* %15, null
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.then17
  %16 = load i32*, i32** %bzerror.addr, align 8
  store i32 -1, i32* %16, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.then17
  %17 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp21 = icmp ne %struct.bzFile* %17, null
  br i1 %cmp21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end20
  %18 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr23 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %18, i32 0, i32 5
  store i32 -1, i32* %lastErr23, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end20
  store i32 0, i32* %retval, align 4
  br label %return

if.end25:                                         ; preds = %if.end16
  %19 = load i32, i32* %len.addr, align 4
  %cmp26 = icmp eq i32 %19, 0
  br i1 %cmp26, label %if.then27, label %if.end35

if.then27:                                        ; preds = %if.end25
  %20 = load i32*, i32** %bzerror.addr, align 8
  %cmp28 = icmp ne i32* %20, null
  br i1 %cmp28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.then27
  %21 = load i32*, i32** %bzerror.addr, align 8
  store i32 0, i32* %21, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.then27
  %22 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp31 = icmp ne %struct.bzFile* %22, null
  br i1 %cmp31, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.end30
  %23 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr33 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %23, i32 0, i32 5
  store i32 0, i32* %lastErr33, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end30
  store i32 0, i32* %retval, align 4
  br label %return

if.end35:                                         ; preds = %if.end25
  %24 = load i32, i32* %len.addr, align 4
  %25 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm = getelementptr inbounds %struct.bzFile, %struct.bzFile* %25, i32 0, i32 4
  %avail_out = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm, i32 0, i32 5
  store i32 %24, i32* %avail_out, align 8
  %26 = load i8*, i8** %buf.addr, align 8
  %27 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm36 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %27, i32 0, i32 4
  %next_out = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm36, i32 0, i32 4
  store i8* %26, i8** %next_out, align 8
  br label %while.body

while.body:                                       ; preds = %if.end35, %if.end152
  %28 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %handle = getelementptr inbounds %struct.bzFile, %struct.bzFile* %28, i32 0, i32 0
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %handle, align 8
  %call = call i32 @ferror(%struct._IO_FILE* %29) #8
  %tobool37 = icmp ne i32 %call, 0
  br i1 %tobool37, label %if.then38, label %if.end46

if.then38:                                        ; preds = %while.body
  %30 = load i32*, i32** %bzerror.addr, align 8
  %cmp39 = icmp ne i32* %30, null
  br i1 %cmp39, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.then38
  %31 = load i32*, i32** %bzerror.addr, align 8
  store i32 -6, i32* %31, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.then38
  %32 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp42 = icmp ne %struct.bzFile* %32, null
  br i1 %cmp42, label %if.then43, label %if.end45

if.then43:                                        ; preds = %if.end41
  %33 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr44 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %33, i32 0, i32 5
  store i32 -6, i32* %lastErr44, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end41
  store i32 0, i32* %retval, align 4
  br label %return

if.end46:                                         ; preds = %while.body
  %34 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm47 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %34, i32 0, i32 4
  %avail_in = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm47, i32 0, i32 1
  %35 = load i32, i32* %avail_in, align 8
  %cmp48 = icmp eq i32 %35, 0
  br i1 %cmp48, label %land.lhs.true, label %if.end76

land.lhs.true:                                    ; preds = %if.end46
  %36 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %handle49 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %36, i32 0, i32 0
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %handle49, align 8
  %call50 = call zeroext i8 @myfeof(%struct._IO_FILE* %37)
  %tobool51 = icmp ne i8 %call50, 0
  br i1 %tobool51, label %if.end76, label %if.then52

if.then52:                                        ; preds = %land.lhs.true
  %38 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %buf53 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %38, i32 0, i32 1
  %arraydecay = getelementptr inbounds [5000 x i8], [5000 x i8]* %buf53, i64 0, i64 0
  %39 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %handle54 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %39, i32 0, i32 0
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %handle54, align 8
  %call55 = call i64 @fread(i8* %arraydecay, i64 1, i64 5000, %struct._IO_FILE* %40)
  %conv = trunc i64 %call55 to i32
  store i32 %conv, i32* %n, align 4
  %41 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %handle56 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %41, i32 0, i32 0
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %handle56, align 8
  %call57 = call i32 @ferror(%struct._IO_FILE* %42) #8
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.then59, label %if.end69

if.then59:                                        ; preds = %if.then52
  %43 = load i32*, i32** %bzerror.addr, align 8
  %cmp60 = icmp ne i32* %43, null
  br i1 %cmp60, label %if.then62, label %if.end63

if.then62:                                        ; preds = %if.then59
  %44 = load i32*, i32** %bzerror.addr, align 8
  store i32 -6, i32* %44, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %if.then59
  %45 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp64 = icmp ne %struct.bzFile* %45, null
  br i1 %cmp64, label %if.then66, label %if.end68

if.then66:                                        ; preds = %if.end63
  %46 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr67 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %46, i32 0, i32 5
  store i32 -6, i32* %lastErr67, align 8
  br label %if.end68

if.end68:                                         ; preds = %if.then66, %if.end63
  store i32 0, i32* %retval, align 4
  br label %return

if.end69:                                         ; preds = %if.then52
  %47 = load i32, i32* %n, align 4
  %48 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %bufN = getelementptr inbounds %struct.bzFile, %struct.bzFile* %48, i32 0, i32 2
  store i32 %47, i32* %bufN, align 8
  %49 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %bufN70 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %49, i32 0, i32 2
  %50 = load i32, i32* %bufN70, align 8
  %51 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm71 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %51, i32 0, i32 4
  %avail_in72 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm71, i32 0, i32 1
  store i32 %50, i32* %avail_in72, align 8
  %52 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %buf73 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %52, i32 0, i32 1
  %arraydecay74 = getelementptr inbounds [5000 x i8], [5000 x i8]* %buf73, i64 0, i64 0
  %53 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm75 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %53, i32 0, i32 4
  %next_in = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm75, i32 0, i32 0
  store i8* %arraydecay74, i8** %next_in, align 8
  br label %if.end76

if.end76:                                         ; preds = %if.end69, %land.lhs.true, %if.end46
  %54 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm77 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %54, i32 0, i32 4
  %call78 = call i32 @BZ2_bzDecompress(%struct.bz_stream* %strm77)
  store i32 %call78, i32* %ret, align 4
  %55 = load i32, i32* %ret, align 4
  %cmp79 = icmp ne i32 %55, 0
  br i1 %cmp79, label %land.lhs.true81, label %if.end94

land.lhs.true81:                                  ; preds = %if.end76
  %56 = load i32, i32* %ret, align 4
  %cmp82 = icmp ne i32 %56, 4
  br i1 %cmp82, label %if.then84, label %if.end94

if.then84:                                        ; preds = %land.lhs.true81
  %57 = load i32*, i32** %bzerror.addr, align 8
  %cmp85 = icmp ne i32* %57, null
  br i1 %cmp85, label %if.then87, label %if.end88

if.then87:                                        ; preds = %if.then84
  %58 = load i32, i32* %ret, align 4
  %59 = load i32*, i32** %bzerror.addr, align 8
  store i32 %58, i32* %59, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.then87, %if.then84
  %60 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp89 = icmp ne %struct.bzFile* %60, null
  br i1 %cmp89, label %if.then91, label %if.end93

if.then91:                                        ; preds = %if.end88
  %61 = load i32, i32* %ret, align 4
  %62 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr92 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %62, i32 0, i32 5
  store i32 %61, i32* %lastErr92, align 8
  br label %if.end93

if.end93:                                         ; preds = %if.then91, %if.end88
  store i32 0, i32* %retval, align 4
  br label %return

if.end94:                                         ; preds = %land.lhs.true81, %if.end76
  %63 = load i32, i32* %ret, align 4
  %cmp95 = icmp eq i32 %63, 0
  br i1 %cmp95, label %land.lhs.true97, label %if.end122

land.lhs.true97:                                  ; preds = %if.end94
  %64 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %handle98 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %64, i32 0, i32 0
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %handle98, align 8
  %call99 = call zeroext i8 @myfeof(%struct._IO_FILE* %65)
  %conv100 = zext i8 %call99 to i32
  %tobool101 = icmp ne i32 %conv100, 0
  br i1 %tobool101, label %land.lhs.true102, label %if.end122

land.lhs.true102:                                 ; preds = %land.lhs.true97
  %66 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm103 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %66, i32 0, i32 4
  %avail_in104 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm103, i32 0, i32 1
  %67 = load i32, i32* %avail_in104, align 8
  %cmp105 = icmp eq i32 %67, 0
  br i1 %cmp105, label %land.lhs.true107, label %if.end122

land.lhs.true107:                                 ; preds = %land.lhs.true102
  %68 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm108 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %68, i32 0, i32 4
  %avail_out109 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm108, i32 0, i32 5
  %69 = load i32, i32* %avail_out109, align 8
  %cmp110 = icmp ugt i32 %69, 0
  br i1 %cmp110, label %if.then112, label %if.end122

if.then112:                                       ; preds = %land.lhs.true107
  %70 = load i32*, i32** %bzerror.addr, align 8
  %cmp113 = icmp ne i32* %70, null
  br i1 %cmp113, label %if.then115, label %if.end116

if.then115:                                       ; preds = %if.then112
  %71 = load i32*, i32** %bzerror.addr, align 8
  store i32 -7, i32* %71, align 4
  br label %if.end116

if.end116:                                        ; preds = %if.then115, %if.then112
  %72 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp117 = icmp ne %struct.bzFile* %72, null
  br i1 %cmp117, label %if.then119, label %if.end121

if.then119:                                       ; preds = %if.end116
  %73 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr120 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %73, i32 0, i32 5
  store i32 -7, i32* %lastErr120, align 8
  br label %if.end121

if.end121:                                        ; preds = %if.then119, %if.end116
  store i32 0, i32* %retval, align 4
  br label %return

if.end122:                                        ; preds = %land.lhs.true107, %land.lhs.true102, %land.lhs.true97, %if.end94
  %74 = load i32, i32* %ret, align 4
  %cmp123 = icmp eq i32 %74, 4
  br i1 %cmp123, label %if.then125, label %if.end137

if.then125:                                       ; preds = %if.end122
  %75 = load i32*, i32** %bzerror.addr, align 8
  %cmp126 = icmp ne i32* %75, null
  br i1 %cmp126, label %if.then128, label %if.end129

if.then128:                                       ; preds = %if.then125
  %76 = load i32*, i32** %bzerror.addr, align 8
  store i32 4, i32* %76, align 4
  br label %if.end129

if.end129:                                        ; preds = %if.then128, %if.then125
  %77 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp130 = icmp ne %struct.bzFile* %77, null
  br i1 %cmp130, label %if.then132, label %if.end134

if.then132:                                       ; preds = %if.end129
  %78 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr133 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %78, i32 0, i32 5
  store i32 4, i32* %lastErr133, align 8
  br label %if.end134

if.end134:                                        ; preds = %if.then132, %if.end129
  %79 = load i32, i32* %len.addr, align 4
  %80 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm135 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %80, i32 0, i32 4
  %avail_out136 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm135, i32 0, i32 5
  %81 = load i32, i32* %avail_out136, align 8
  %sub = sub i32 %79, %81
  store i32 %sub, i32* %retval, align 4
  br label %return

if.end137:                                        ; preds = %if.end122
  %82 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm138 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %82, i32 0, i32 4
  %avail_out139 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm138, i32 0, i32 5
  %83 = load i32, i32* %avail_out139, align 8
  %cmp140 = icmp eq i32 %83, 0
  br i1 %cmp140, label %if.then142, label %if.end152

if.then142:                                       ; preds = %if.end137
  %84 = load i32*, i32** %bzerror.addr, align 8
  %cmp143 = icmp ne i32* %84, null
  br i1 %cmp143, label %if.then145, label %if.end146

if.then145:                                       ; preds = %if.then142
  %85 = load i32*, i32** %bzerror.addr, align 8
  store i32 0, i32* %85, align 4
  br label %if.end146

if.end146:                                        ; preds = %if.then145, %if.then142
  %86 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp147 = icmp ne %struct.bzFile* %86, null
  br i1 %cmp147, label %if.then149, label %if.end151

if.then149:                                       ; preds = %if.end146
  %87 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr150 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %87, i32 0, i32 5
  store i32 0, i32* %lastErr150, align 8
  br label %if.end151

if.end151:                                        ; preds = %if.then149, %if.end146
  %88 = load i32, i32* %len.addr, align 4
  store i32 %88, i32* %retval, align 4
  br label %return

if.end152:                                        ; preds = %if.end137
  br label %while.body

return:                                           ; preds = %if.end151, %if.end134, %if.end121, %if.end93, %if.end68, %if.end45, %if.end34, %if.end24, %if.end15
  %89 = load i32, i32* %retval, align 4
  ret i32 %89
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @myfeof(%struct._IO_FILE* %f) #0 {
entry:
  %retval = alloca i8, align 1
  %f.addr = alloca %struct._IO_FILE*, align 8
  %c = alloca i32, align 4
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call = call i32 @fgetc(%struct._IO_FILE* %0)
  store i32 %call, i32* %c, align 4
  %1 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 1, i8* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %c, align 4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call1 = call i32 @ungetc(i32 %2, %struct._IO_FILE* %3)
  store i8 0, i8* %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i8, i8* %retval, align 1
  ret i8 %4
}

declare dso_local i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BZ2_bzReadGetUnused(i32* %bzerror, i8* %b, i8** %unused, i32* %nUnused) #0 {
entry:
  %bzerror.addr = alloca i32*, align 8
  %b.addr = alloca i8*, align 8
  %unused.addr = alloca i8**, align 8
  %nUnused.addr = alloca i32*, align 8
  %bzf = alloca %struct.bzFile*, align 8
  store i32* %bzerror, i32** %bzerror.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  store i8** %unused, i8*** %unused.addr, align 8
  store i32* %nUnused, i32** %nUnused.addr, align 8
  %0 = load i8*, i8** %b.addr, align 8
  %1 = bitcast i8* %0 to %struct.bzFile*
  store %struct.bzFile* %1, %struct.bzFile** %bzf, align 8
  %2 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp = icmp eq %struct.bzFile* %2, null
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %3 = load i32*, i32** %bzerror.addr, align 8
  %cmp1 = icmp ne i32* %3, null
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %4 = load i32*, i32** %bzerror.addr, align 8
  store i32 -2, i32* %4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %5 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp3 = icmp ne %struct.bzFile* %5, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %6 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr = getelementptr inbounds %struct.bzFile, %struct.bzFile* %6, i32 0, i32 5
  store i32 -2, i32* %lastErr, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  br label %return

if.end6:                                          ; preds = %entry
  %7 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr7 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %7, i32 0, i32 5
  %8 = load i32, i32* %lastErr7, align 8
  %cmp8 = icmp ne i32 %8, 4
  br i1 %cmp8, label %if.then9, label %if.end17

if.then9:                                         ; preds = %if.end6
  %9 = load i32*, i32** %bzerror.addr, align 8
  %cmp10 = icmp ne i32* %9, null
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.then9
  %10 = load i32*, i32** %bzerror.addr, align 8
  store i32 -1, i32* %10, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.then9
  %11 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp13 = icmp ne %struct.bzFile* %11, null
  br i1 %cmp13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end12
  %12 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr15 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %12, i32 0, i32 5
  store i32 -1, i32* %lastErr15, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end12
  br label %return

if.end17:                                         ; preds = %if.end6
  %13 = load i8**, i8*** %unused.addr, align 8
  %cmp18 = icmp eq i8** %13, null
  br i1 %cmp18, label %if.then20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end17
  %14 = load i32*, i32** %nUnused.addr, align 8
  %cmp19 = icmp eq i32* %14, null
  br i1 %cmp19, label %if.then20, label %if.end28

if.then20:                                        ; preds = %lor.lhs.false, %if.end17
  %15 = load i32*, i32** %bzerror.addr, align 8
  %cmp21 = icmp ne i32* %15, null
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.then20
  %16 = load i32*, i32** %bzerror.addr, align 8
  store i32 -2, i32* %16, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.then20
  %17 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp24 = icmp ne %struct.bzFile* %17, null
  br i1 %cmp24, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.end23
  %18 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr26 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %18, i32 0, i32 5
  store i32 -2, i32* %lastErr26, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end23
  br label %return

if.end28:                                         ; preds = %lor.lhs.false
  %19 = load i32*, i32** %bzerror.addr, align 8
  %cmp29 = icmp ne i32* %19, null
  br i1 %cmp29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end28
  %20 = load i32*, i32** %bzerror.addr, align 8
  store i32 0, i32* %20, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end28
  %21 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %cmp32 = icmp ne %struct.bzFile* %21, null
  br i1 %cmp32, label %if.then33, label %if.end35

if.then33:                                        ; preds = %if.end31
  %22 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %lastErr34 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %22, i32 0, i32 5
  store i32 0, i32* %lastErr34, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end31
  %23 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm = getelementptr inbounds %struct.bzFile, %struct.bzFile* %23, i32 0, i32 4
  %avail_in = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm, i32 0, i32 1
  %24 = load i32, i32* %avail_in, align 8
  %25 = load i32*, i32** %nUnused.addr, align 8
  store i32 %24, i32* %25, align 4
  %26 = load %struct.bzFile*, %struct.bzFile** %bzf, align 8
  %strm36 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %26, i32 0, i32 4
  %next_in = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm36, i32 0, i32 0
  %27 = load i8*, i8** %next_in, align 8
  %28 = load i8**, i8*** %unused.addr, align 8
  store i8* %27, i8** %28, align 8
  br label %return

return:                                           ; preds = %if.end35, %if.end27, %if.end16, %if.end5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BZ2_bzBuffToBuffCompress(i8* %dest, i32* %destLen, i8* %source, i32 %sourceLen, i32 %blockSize100k, i32 %verbosity, i32 %workFactor) #0 {
entry:
  %retval = alloca i32, align 4
  %dest.addr = alloca i8*, align 8
  %destLen.addr = alloca i32*, align 8
  %source.addr = alloca i8*, align 8
  %sourceLen.addr = alloca i32, align 4
  %blockSize100k.addr = alloca i32, align 4
  %verbosity.addr = alloca i32, align 4
  %workFactor.addr = alloca i32, align 4
  %strm = alloca %struct.bz_stream, align 8
  %ret = alloca i32, align 4
  store i8* %dest, i8** %dest.addr, align 8
  store i32* %destLen, i32** %destLen.addr, align 8
  store i8* %source, i8** %source.addr, align 8
  store i32 %sourceLen, i32* %sourceLen.addr, align 4
  store i32 %blockSize100k, i32* %blockSize100k.addr, align 4
  store i32 %verbosity, i32* %verbosity.addr, align 4
  store i32 %workFactor, i32* %workFactor.addr, align 4
  %0 = load i8*, i8** %dest.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32*, i32** %destLen.addr, align 8
  %cmp1 = icmp eq i32* %1, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load i8*, i8** %source.addr, align 8
  %cmp3 = icmp eq i8* %2, null
  br i1 %cmp3, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %3 = load i32, i32* %blockSize100k.addr, align 4
  %cmp5 = icmp slt i32 %3, 1
  br i1 %cmp5, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false4
  %4 = load i32, i32* %blockSize100k.addr, align 4
  %cmp7 = icmp sgt i32 %4, 9
  br i1 %cmp7, label %if.then, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false6
  %5 = load i32, i32* %verbosity.addr, align 4
  %cmp9 = icmp slt i32 %5, 0
  br i1 %cmp9, label %if.then, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false8
  %6 = load i32, i32* %verbosity.addr, align 4
  %cmp11 = icmp sgt i32 %6, 4
  br i1 %cmp11, label %if.then, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false10
  %7 = load i32, i32* %workFactor.addr, align 4
  %cmp13 = icmp slt i32 %7, 0
  br i1 %cmp13, label %if.then, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false12
  %8 = load i32, i32* %workFactor.addr, align 4
  %cmp15 = icmp sgt i32 %8, 250
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false14, %lor.lhs.false12, %lor.lhs.false10, %lor.lhs.false8, %lor.lhs.false6, %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -2, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false14
  %9 = load i32, i32* %workFactor.addr, align 4
  %cmp16 = icmp eq i32 %9, 0
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end
  store i32 30, i32* %workFactor.addr, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end
  %bzalloc = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm, i32 0, i32 9
  store i8* (i8*, i32, i32)* null, i8* (i8*, i32, i32)** %bzalloc, align 8
  %bzfree = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm, i32 0, i32 10
  store void (i8*, i8*)* null, void (i8*, i8*)** %bzfree, align 8
  %opaque = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm, i32 0, i32 11
  store i8* null, i8** %opaque, align 8
  %10 = load i32, i32* %blockSize100k.addr, align 4
  %11 = load i32, i32* %verbosity.addr, align 4
  %12 = load i32, i32* %workFactor.addr, align 4
  %call = call i32 @BZ2_bzCompressInit(%struct.bz_stream* %strm, i32 %10, i32 %11, i32 %12)
  store i32 %call, i32* %ret, align 4
  %13 = load i32, i32* %ret, align 4
  %cmp19 = icmp ne i32 %13, 0
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end18
  %14 = load i32, i32* %ret, align 4
  store i32 %14, i32* %retval, align 4
  br label %return

if.end21:                                         ; preds = %if.end18
  %15 = load i8*, i8** %source.addr, align 8
  %next_in = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm, i32 0, i32 0
  store i8* %15, i8** %next_in, align 8
  %16 = load i8*, i8** %dest.addr, align 8
  %next_out = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm, i32 0, i32 4
  store i8* %16, i8** %next_out, align 8
  %17 = load i32, i32* %sourceLen.addr, align 4
  %avail_in = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm, i32 0, i32 1
  store i32 %17, i32* %avail_in, align 8
  %18 = load i32*, i32** %destLen.addr, align 8
  %19 = load i32, i32* %18, align 4
  %avail_out = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm, i32 0, i32 5
  store i32 %19, i32* %avail_out, align 8
  %call22 = call i32 @BZ2_bzCompress(%struct.bz_stream* %strm, i32 2)
  store i32 %call22, i32* %ret, align 4
  %20 = load i32, i32* %ret, align 4
  %cmp23 = icmp eq i32 %20, 3
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end21
  br label %output_overflow

if.end25:                                         ; preds = %if.end21
  %21 = load i32, i32* %ret, align 4
  %cmp26 = icmp ne i32 %21, 4
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end25
  br label %errhandler

if.end28:                                         ; preds = %if.end25
  %avail_out29 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm, i32 0, i32 5
  %22 = load i32, i32* %avail_out29, align 8
  %23 = load i32*, i32** %destLen.addr, align 8
  %24 = load i32, i32* %23, align 4
  %sub = sub i32 %24, %22
  store i32 %sub, i32* %23, align 4
  %call30 = call i32 @BZ2_bzCompressEnd(%struct.bz_stream* %strm)
  store i32 0, i32* %retval, align 4
  br label %return

output_overflow:                                  ; preds = %if.then24
  %call31 = call i32 @BZ2_bzCompressEnd(%struct.bz_stream* %strm)
  store i32 -8, i32* %retval, align 4
  br label %return

errhandler:                                       ; preds = %if.then27
  %call32 = call i32 @BZ2_bzCompressEnd(%struct.bz_stream* %strm)
  %25 = load i32, i32* %ret, align 4
  store i32 %25, i32* %retval, align 4
  br label %return

return:                                           ; preds = %errhandler, %output_overflow, %if.end28, %if.then20, %if.then
  %26 = load i32, i32* %retval, align 4
  ret i32 %26
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BZ2_bzBuffToBuffDecompress(i8* %dest, i32* %destLen, i8* %source, i32 %sourceLen, i32 %small, i32 %verbosity) #0 {
entry:
  %retval = alloca i32, align 4
  %dest.addr = alloca i8*, align 8
  %destLen.addr = alloca i32*, align 8
  %source.addr = alloca i8*, align 8
  %sourceLen.addr = alloca i32, align 4
  %small.addr = alloca i32, align 4
  %verbosity.addr = alloca i32, align 4
  %strm = alloca %struct.bz_stream, align 8
  %ret = alloca i32, align 4
  store i8* %dest, i8** %dest.addr, align 8
  store i32* %destLen, i32** %destLen.addr, align 8
  store i8* %source, i8** %source.addr, align 8
  store i32 %sourceLen, i32* %sourceLen.addr, align 4
  store i32 %small, i32* %small.addr, align 4
  store i32 %verbosity, i32* %verbosity.addr, align 4
  %0 = load i8*, i8** %dest.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32*, i32** %destLen.addr, align 8
  %cmp1 = icmp eq i32* %1, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load i8*, i8** %source.addr, align 8
  %cmp3 = icmp eq i8* %2, null
  br i1 %cmp3, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %3 = load i32, i32* %small.addr, align 4
  %cmp5 = icmp ne i32 %3, 0
  br i1 %cmp5, label %land.lhs.true, label %lor.lhs.false7

land.lhs.true:                                    ; preds = %lor.lhs.false4
  %4 = load i32, i32* %small.addr, align 4
  %cmp6 = icmp ne i32 %4, 1
  br i1 %cmp6, label %if.then, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %land.lhs.true, %lor.lhs.false4
  %5 = load i32, i32* %verbosity.addr, align 4
  %cmp8 = icmp slt i32 %5, 0
  br i1 %cmp8, label %if.then, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false7
  %6 = load i32, i32* %verbosity.addr, align 4
  %cmp10 = icmp sgt i32 %6, 4
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false9, %lor.lhs.false7, %land.lhs.true, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -2, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false9
  %bzalloc = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm, i32 0, i32 9
  store i8* (i8*, i32, i32)* null, i8* (i8*, i32, i32)** %bzalloc, align 8
  %bzfree = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm, i32 0, i32 10
  store void (i8*, i8*)* null, void (i8*, i8*)** %bzfree, align 8
  %opaque = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm, i32 0, i32 11
  store i8* null, i8** %opaque, align 8
  %7 = load i32, i32* %verbosity.addr, align 4
  %8 = load i32, i32* %small.addr, align 4
  %call = call i32 @BZ2_bzDecompressInit(%struct.bz_stream* %strm, i32 %7, i32 %8)
  store i32 %call, i32* %ret, align 4
  %9 = load i32, i32* %ret, align 4
  %cmp11 = icmp ne i32 %9, 0
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end
  %10 = load i32, i32* %ret, align 4
  store i32 %10, i32* %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.end
  %11 = load i8*, i8** %source.addr, align 8
  %next_in = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm, i32 0, i32 0
  store i8* %11, i8** %next_in, align 8
  %12 = load i8*, i8** %dest.addr, align 8
  %next_out = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm, i32 0, i32 4
  store i8* %12, i8** %next_out, align 8
  %13 = load i32, i32* %sourceLen.addr, align 4
  %avail_in = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm, i32 0, i32 1
  store i32 %13, i32* %avail_in, align 8
  %14 = load i32*, i32** %destLen.addr, align 8
  %15 = load i32, i32* %14, align 4
  %avail_out = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm, i32 0, i32 5
  store i32 %15, i32* %avail_out, align 8
  %call14 = call i32 @BZ2_bzDecompress(%struct.bz_stream* %strm)
  store i32 %call14, i32* %ret, align 4
  %16 = load i32, i32* %ret, align 4
  %cmp15 = icmp eq i32 %16, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end13
  br label %output_overflow_or_eof

if.end17:                                         ; preds = %if.end13
  %17 = load i32, i32* %ret, align 4
  %cmp18 = icmp ne i32 %17, 4
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end17
  br label %errhandler

if.end20:                                         ; preds = %if.end17
  %avail_out21 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm, i32 0, i32 5
  %18 = load i32, i32* %avail_out21, align 8
  %19 = load i32*, i32** %destLen.addr, align 8
  %20 = load i32, i32* %19, align 4
  %sub = sub i32 %20, %18
  store i32 %sub, i32* %19, align 4
  %call22 = call i32 @BZ2_bzDecompressEnd(%struct.bz_stream* %strm)
  store i32 0, i32* %retval, align 4
  br label %return

output_overflow_or_eof:                           ; preds = %if.then16
  %avail_out23 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %strm, i32 0, i32 5
  %21 = load i32, i32* %avail_out23, align 8
  %cmp24 = icmp ugt i32 %21, 0
  br i1 %cmp24, label %if.then25, label %if.else

if.then25:                                        ; preds = %output_overflow_or_eof
  %call26 = call i32 @BZ2_bzDecompressEnd(%struct.bz_stream* %strm)
  store i32 -7, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %output_overflow_or_eof
  %call27 = call i32 @BZ2_bzDecompressEnd(%struct.bz_stream* %strm)
  store i32 -8, i32* %retval, align 4
  br label %return

errhandler:                                       ; preds = %if.then19
  %call28 = call i32 @BZ2_bzDecompressEnd(%struct.bz_stream* %strm)
  %22 = load i32, i32* %ret, align 4
  store i32 %22, i32* %retval, align 4
  br label %return

return:                                           ; preds = %errhandler, %if.else, %if.then25, %if.end20, %if.then12, %if.then
  %23 = load i32, i32* %retval, align 4
  ret i32 %23
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @BZ2_bzopen(i8* %path, i8* %mode) #0 {
entry:
  %path.addr = alloca i8*, align 8
  %mode.addr = alloca i8*, align 8
  store i8* %path, i8** %path.addr, align 8
  store i8* %mode, i8** %mode.addr, align 8
  %0 = load i8*, i8** %path.addr, align 8
  %1 = load i8*, i8** %mode.addr, align 8
  %call = call i8* @bzopen_or_bzdopen(i8* %0, i32 -1, i8* %1, i32 0)
  ret i8* %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @bzopen_or_bzdopen(i8* %path, i32 %fd, i8* %mode, i32 %open_mode) #0 {
entry:
  %retval = alloca i8*, align 8
  %path.addr = alloca i8*, align 8
  %fd.addr = alloca i32, align 4
  %mode.addr = alloca i8*, align 8
  %open_mode.addr = alloca i32, align 4
  %bzerr = alloca i32, align 4
  %unused = alloca [5000 x i8], align 16
  %blockSize100k = alloca i32, align 4
  %writing = alloca i32, align 4
  %mode2 = alloca [10 x i8], align 1
  %fp = alloca %struct._IO_FILE*, align 8
  %bzfp = alloca i8*, align 8
  %verbosity = alloca i32, align 4
  %workFactor = alloca i32, align 4
  %smallMode = alloca i32, align 4
  %nUnused = alloca i32, align 4
  store i8* %path, i8** %path.addr, align 8
  store i32 %fd, i32* %fd.addr, align 4
  store i8* %mode, i8** %mode.addr, align 8
  store i32 %open_mode, i32* %open_mode.addr, align 4
  store i32 9, i32* %blockSize100k, align 4
  store i32 0, i32* %writing, align 4
  %0 = bitcast [10 x i8]* %mode2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 10, i1 false)
  store %struct._IO_FILE* null, %struct._IO_FILE** %fp, align 8
  store i8* null, i8** %bzfp, align 8
  store i32 0, i32* %verbosity, align 4
  store i32 30, i32* %workFactor, align 4
  store i32 0, i32* %smallMode, align 4
  store i32 0, i32* %nUnused, align 4
  %1 = load i8*, i8** %mode.addr, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end
  %2 = load i8*, i8** %mode.addr, align 8
  %3 = load i8, i8* %2, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %mode.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  switch i32 %conv, label %sw.default [
    i32 114, label %sw.bb
    i32 119, label %sw.bb1
    i32 115, label %sw.bb2
  ]

sw.bb:                                            ; preds = %while.body
  store i32 0, i32* %writing, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %while.body
  store i32 1, i32* %writing, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %while.body
  store i32 1, i32* %smallMode, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %call = call i16** @__ctype_b_loc() #9
  %6 = load i16*, i16** %call, align 8
  %7 = load i8*, i8** %mode.addr, align 8
  %8 = load i8, i8* %7, align 1
  %conv3 = sext i8 %8 to i32
  %idxprom = sext i32 %conv3 to i64
  %arrayidx = getelementptr inbounds i16, i16* %6, i64 %idxprom
  %9 = load i16, i16* %arrayidx, align 2
  %conv4 = zext i16 %9 to i32
  %and = and i32 %conv4, 2048
  %tobool5 = icmp ne i32 %and, 0
  br i1 %tobool5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %sw.default
  %10 = load i8*, i8** %mode.addr, align 8
  %11 = load i8, i8* %10, align 1
  %conv7 = sext i8 %11 to i32
  %sub = sub nsw i32 %conv7, 48
  store i32 %sub, i32* %blockSize100k, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end8, %sw.bb2, %sw.bb1, %sw.bb
  %12 = load i8*, i8** %mode.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %mode.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %arraydecay = getelementptr inbounds [10 x i8], [10 x i8]* %mode2, i64 0, i64 0
  %13 = load i32, i32* %writing, align 4
  %tobool9 = icmp ne i32 %13, 0
  %14 = zext i1 %tobool9 to i64
  %cond = select i1 %tobool9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)
  %call10 = call i8* @strcat(i8* %arraydecay, i8* %cond) #8
  %arraydecay11 = getelementptr inbounds [10 x i8], [10 x i8]* %mode2, i64 0, i64 0
  %call12 = call i8* @strcat(i8* %arraydecay11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #8
  %15 = load i32, i32* %open_mode.addr, align 4
  %cmp13 = icmp eq i32 %15, 0
  br i1 %cmp13, label %if.then15, label %if.else27

if.then15:                                        ; preds = %while.end
  %16 = load i8*, i8** %path.addr, align 8
  %cmp16 = icmp eq i8* %16, null
  br i1 %cmp16, label %if.then21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then15
  %17 = load i8*, i8** %path.addr, align 8
  %call18 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)) #10
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %if.then21, label %if.else

if.then21:                                        ; preds = %lor.lhs.false, %if.then15
  %18 = load i32, i32* %writing, align 4
  %tobool22 = icmp ne i32 %18, 0
  br i1 %tobool22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then21
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then21
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond23 = phi %struct._IO_FILE* [ %19, %cond.true ], [ %20, %cond.false ]
  store %struct._IO_FILE* %cond23, %struct._IO_FILE** %fp, align 8
  br label %if.end26

if.else:                                          ; preds = %lor.lhs.false
  %21 = load i8*, i8** %path.addr, align 8
  %arraydecay24 = getelementptr inbounds [10 x i8], [10 x i8]* %mode2, i64 0, i64 0
  %call25 = call %struct._IO_FILE* @fopen(i8* %21, i8* %arraydecay24)
  store %struct._IO_FILE* %call25, %struct._IO_FILE** %fp, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.else, %cond.end
  br label %if.end30

if.else27:                                        ; preds = %while.end
  %22 = load i32, i32* %fd.addr, align 4
  %arraydecay28 = getelementptr inbounds [10 x i8], [10 x i8]* %mode2, i64 0, i64 0
  %call29 = call %struct._IO_FILE* @fdopen(i32 %22, i8* %arraydecay28) #8
  store %struct._IO_FILE* %call29, %struct._IO_FILE** %fp, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.else27, %if.end26
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp31 = icmp eq %struct._IO_FILE* %23, null
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end30
  store i8* null, i8** %retval, align 8
  br label %return

if.end34:                                         ; preds = %if.end30
  %24 = load i32, i32* %writing, align 4
  %tobool35 = icmp ne i32 %24, 0
  br i1 %tobool35, label %if.then36, label %if.else46

if.then36:                                        ; preds = %if.end34
  %25 = load i32, i32* %blockSize100k, align 4
  %cmp37 = icmp slt i32 %25, 1
  br i1 %cmp37, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.then36
  store i32 1, i32* %blockSize100k, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.then36
  %26 = load i32, i32* %blockSize100k, align 4
  %cmp41 = icmp sgt i32 %26, 9
  br i1 %cmp41, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end40
  store i32 9, i32* %blockSize100k, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %if.end40
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %28 = load i32, i32* %blockSize100k, align 4
  %29 = load i32, i32* %verbosity, align 4
  %30 = load i32, i32* %workFactor, align 4
  %call45 = call i8* @BZ2_bzWriteOpen(i32* %bzerr, %struct._IO_FILE* %27, i32 %28, i32 %29, i32 %30)
  store i8* %call45, i8** %bzfp, align 8
  br label %if.end49

if.else46:                                        ; preds = %if.end34
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %32 = load i32, i32* %verbosity, align 4
  %33 = load i32, i32* %smallMode, align 4
  %arraydecay47 = getelementptr inbounds [5000 x i8], [5000 x i8]* %unused, i64 0, i64 0
  %34 = load i32, i32* %nUnused, align 4
  %call48 = call i8* @BZ2_bzReadOpen(i32* %bzerr, %struct._IO_FILE* %31, i32 %32, i32 %33, i8* %arraydecay47, i32 %34)
  store i8* %call48, i8** %bzfp, align 8
  br label %if.end49

if.end49:                                         ; preds = %if.else46, %if.end44
  %35 = load i8*, i8** %bzfp, align 8
  %cmp50 = icmp eq i8* %35, null
  br i1 %cmp50, label %if.then52, label %if.end60

if.then52:                                        ; preds = %if.end49
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %cmp53 = icmp ne %struct._IO_FILE* %36, %37
  br i1 %cmp53, label %land.lhs.true, label %if.end59

land.lhs.true:                                    ; preds = %if.then52
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %cmp55 = icmp ne %struct._IO_FILE* %38, %39
  br i1 %cmp55, label %if.then57, label %if.end59

if.then57:                                        ; preds = %land.lhs.true
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call58 = call i32 @fclose(%struct._IO_FILE* %40)
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %land.lhs.true, %if.then52
  store i8* null, i8** %retval, align 8
  br label %return

if.end60:                                         ; preds = %if.end49
  %41 = load i8*, i8** %bzfp, align 8
  store i8* %41, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end60, %if.end59, %if.then33, %if.then
  %42 = load i8*, i8** %retval, align 8
  ret i8* %42
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @BZ2_bzdopen(i32 %fd, i8* %mode) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %mode.addr = alloca i8*, align 8
  store i32 %fd, i32* %fd.addr, align 4
  store i8* %mode, i8** %mode.addr, align 8
  %0 = load i32, i32* %fd.addr, align 4
  %1 = load i8*, i8** %mode.addr, align 8
  %call = call i8* @bzopen_or_bzdopen(i8* null, i32 %0, i8* %1, i32 1)
  ret i8* %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BZ2_bzread(i8* %b, i8* %buf, i32 %len) #0 {
entry:
  %retval = alloca i32, align 4
  %b.addr = alloca i8*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %bzerr = alloca i32, align 4
  %nread = alloca i32, align 4
  store i8* %b, i8** %b.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  %0 = load i8*, i8** %b.addr, align 8
  %1 = bitcast i8* %0 to %struct.bzFile*
  %lastErr = getelementptr inbounds %struct.bzFile, %struct.bzFile* %1, i32 0, i32 5
  %2 = load i32, i32* %lastErr, align 8
  %cmp = icmp eq i32 %2, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %b.addr, align 8
  %4 = load i8*, i8** %buf.addr, align 8
  %5 = load i32, i32* %len.addr, align 4
  %call = call i32 @BZ2_bzRead(i32* %bzerr, i8* %3, i8* %4, i32 %5)
  store i32 %call, i32* %nread, align 4
  %6 = load i32, i32* %bzerr, align 4
  %cmp1 = icmp eq i32 %6, 0
  br i1 %cmp1, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %7 = load i32, i32* %bzerr, align 4
  %cmp2 = icmp eq i32 %7, 4
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  %8 = load i32, i32* %nread, align 4
  store i32 %8, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then3, %if.then
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BZ2_bzwrite(i8* %b, i8* %buf, i32 %len) #0 {
entry:
  %retval = alloca i32, align 4
  %b.addr = alloca i8*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %bzerr = alloca i32, align 4
  store i8* %b, i8** %b.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  %0 = load i8*, i8** %b.addr, align 8
  %1 = load i8*, i8** %buf.addr, align 8
  %2 = load i32, i32* %len.addr, align 4
  call void @BZ2_bzWrite(i32* %bzerr, i8* %0, i8* %1, i32 %2)
  %3 = load i32, i32* %bzerr, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %len.addr, align 4
  store i32 %4, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %retval, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BZ2_bzflush(i8* %b) #0 {
entry:
  %b.addr = alloca i8*, align 8
  store i8* %b, i8** %b.addr, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BZ2_bzclose(i8* %b) #0 {
entry:
  %b.addr = alloca i8*, align 8
  %bzerr = alloca i32, align 4
  %fp = alloca %struct._IO_FILE*, align 8
  store i8* %b, i8** %b.addr, align 8
  %0 = load i8*, i8** %b.addr, align 8
  %1 = bitcast i8* %0 to %struct.bzFile*
  %handle = getelementptr inbounds %struct.bzFile, %struct.bzFile* %1, i32 0, i32 0
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %handle, align 8
  store %struct._IO_FILE* %2, %struct._IO_FILE** %fp, align 8
  %3 = load i8*, i8** %b.addr, align 8
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end9

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %b.addr, align 8
  %5 = bitcast i8* %4 to %struct.bzFile*
  %writing = getelementptr inbounds %struct.bzFile, %struct.bzFile* %5, i32 0, i32 3
  %6 = load i8, i8* %writing, align 4
  %tobool = icmp ne i8 %6, 0
  br i1 %tobool, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  %7 = load i8*, i8** %b.addr, align 8
  call void @BZ2_bzWriteClose(i32* %bzerr, i8* %7, i32 0, i32* null, i32* null)
  %8 = load i32, i32* %bzerr, align 4
  %cmp2 = icmp ne i32 %8, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.then1
  %9 = load i8*, i8** %b.addr, align 8
  call void @BZ2_bzWriteClose(i32* null, i8* %9, i32 1, i32* null, i32* null)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.then1
  br label %if.end5

if.else:                                          ; preds = %if.end
  %10 = load i8*, i8** %b.addr, align 8
  call void @BZ2_bzReadClose(i32* %bzerr, i8* %10)
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.end4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %cmp6 = icmp ne %struct._IO_FILE* %11, %12
  br i1 %cmp6, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %if.end5
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %cmp7 = icmp ne %struct._IO_FILE* %13, %14
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %land.lhs.true
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call = call i32 @fclose(%struct._IO_FILE* %15)
  br label %if.end9

if.end9:                                          ; preds = %if.then, %if.then8, %land.lhs.true, %if.end5
  ret void
}

declare dso_local i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @BZ2_bzerror(i8* %b, i32* %errnum) #0 {
entry:
  %b.addr = alloca i8*, align 8
  %errnum.addr = alloca i32*, align 8
  %err = alloca i32, align 4
  store i8* %b, i8** %b.addr, align 8
  store i32* %errnum, i32** %errnum.addr, align 8
  %0 = load i8*, i8** %b.addr, align 8
  %1 = bitcast i8* %0 to %struct.bzFile*
  %lastErr = getelementptr inbounds %struct.bzFile, %struct.bzFile* %1, i32 0, i32 5
  %2 = load i32, i32* %lastErr, align 8
  store i32 %2, i32* %err, align 4
  %3 = load i32, i32* %err, align 4
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %err, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %err, align 4
  %5 = load i32*, i32** %errnum.addr, align 8
  store i32 %4, i32* %5, align 4
  %6 = load i32, i32* %err, align 4
  %mul = mul nsw i32 %6, -1
  %idxprom = sext i32 %mul to i64
  %arrayidx = getelementptr inbounds [16 x i8*], [16 x i8*]* @bzerrorstrings, i64 0, i64 %idxprom
  %7 = load i8*, i8** %arrayidx, align 8
  ret i8* %7
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @copy_output_until_stop(%struct.EState* %s) #0 {
entry:
  %s.addr = alloca %struct.EState*, align 8
  %progress_out = alloca i8, align 1
  store %struct.EState* %s, %struct.EState** %s.addr, align 8
  store i8 0, i8* %progress_out, align 1
  br label %while.body

while.body:                                       ; preds = %entry, %if.end19
  %0 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %strm = getelementptr inbounds %struct.EState, %struct.EState* %0, i32 0, i32 0
  %1 = load %struct.bz_stream*, %struct.bz_stream** %strm, align 8
  %avail_out = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1, i32 0, i32 5
  %2 = load i32, i32* %avail_out, align 8
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %3 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %state_out_pos = getelementptr inbounds %struct.EState, %struct.EState* %3, i32 0, i32 20
  %4 = load i32, i32* %state_out_pos, align 8
  %5 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %numZ = getelementptr inbounds %struct.EState, %struct.EState* %5, i32 0, i32 19
  %6 = load i32, i32* %numZ, align 4
  %cmp1 = icmp sge i32 %4, %6
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  br label %while.end

if.end3:                                          ; preds = %if.end
  store i8 1, i8* %progress_out, align 1
  %7 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %zbits = getelementptr inbounds %struct.EState, %struct.EState* %7, i32 0, i32 11
  %8 = load i8*, i8** %zbits, align 8
  %9 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %state_out_pos4 = getelementptr inbounds %struct.EState, %struct.EState* %9, i32 0, i32 20
  %10 = load i32, i32* %state_out_pos4, align 8
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %idxprom
  %11 = load i8, i8* %arrayidx, align 1
  %12 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %strm5 = getelementptr inbounds %struct.EState, %struct.EState* %12, i32 0, i32 0
  %13 = load %struct.bz_stream*, %struct.bz_stream** %strm5, align 8
  %next_out = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %13, i32 0, i32 4
  %14 = load i8*, i8** %next_out, align 8
  store i8 %11, i8* %14, align 1
  %15 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %state_out_pos6 = getelementptr inbounds %struct.EState, %struct.EState* %15, i32 0, i32 20
  %16 = load i32, i32* %state_out_pos6, align 8
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %state_out_pos6, align 8
  %17 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %strm7 = getelementptr inbounds %struct.EState, %struct.EState* %17, i32 0, i32 0
  %18 = load %struct.bz_stream*, %struct.bz_stream** %strm7, align 8
  %avail_out8 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %18, i32 0, i32 5
  %19 = load i32, i32* %avail_out8, align 8
  %dec = add i32 %19, -1
  store i32 %dec, i32* %avail_out8, align 8
  %20 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %strm9 = getelementptr inbounds %struct.EState, %struct.EState* %20, i32 0, i32 0
  %21 = load %struct.bz_stream*, %struct.bz_stream** %strm9, align 8
  %next_out10 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %21, i32 0, i32 4
  %22 = load i8*, i8** %next_out10, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr, i8** %next_out10, align 8
  %23 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %strm11 = getelementptr inbounds %struct.EState, %struct.EState* %23, i32 0, i32 0
  %24 = load %struct.bz_stream*, %struct.bz_stream** %strm11, align 8
  %total_out_lo32 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %24, i32 0, i32 6
  %25 = load i32, i32* %total_out_lo32, align 4
  %inc12 = add i32 %25, 1
  store i32 %inc12, i32* %total_out_lo32, align 4
  %26 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %strm13 = getelementptr inbounds %struct.EState, %struct.EState* %26, i32 0, i32 0
  %27 = load %struct.bz_stream*, %struct.bz_stream** %strm13, align 8
  %total_out_lo3214 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %27, i32 0, i32 6
  %28 = load i32, i32* %total_out_lo3214, align 4
  %cmp15 = icmp eq i32 %28, 0
  br i1 %cmp15, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end3
  %29 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %strm17 = getelementptr inbounds %struct.EState, %struct.EState* %29, i32 0, i32 0
  %30 = load %struct.bz_stream*, %struct.bz_stream** %strm17, align 8
  %total_out_hi32 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %30, i32 0, i32 7
  %31 = load i32, i32* %total_out_hi32, align 8
  %inc18 = add i32 %31, 1
  store i32 %inc18, i32* %total_out_hi32, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end3
  br label %while.body

while.end:                                        ; preds = %if.then2, %if.then
  %32 = load i8, i8* %progress_out, align 1
  ret i8 %32
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @copy_input_until_stop(%struct.EState* %s) #0 {
entry:
  %s.addr = alloca %struct.EState*, align 8
  %progress_in = alloca i8, align 1
  %zchh = alloca i32, align 4
  %ch = alloca i8, align 1
  %zchh77 = alloca i32, align 4
  %ch89 = alloca i8, align 1
  store %struct.EState* %s, %struct.EState** %s.addr, align 8
  store i8 0, i8* %progress_in, align 1
  %0 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %mode = getelementptr inbounds %struct.EState, %struct.EState* %0, i32 0, i32 1
  %1 = load i32, i32* %mode, align 8
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %if.else59

if.then:                                          ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.then, %if.end58
  %2 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %nblock = getelementptr inbounds %struct.EState, %struct.EState* %2, i32 0, i32 17
  %3 = load i32, i32* %nblock, align 4
  %4 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %nblockMAX = getelementptr inbounds %struct.EState, %struct.EState* %4, i32 0, i32 18
  %5 = load i32, i32* %nblockMAX, align 8
  %cmp1 = icmp sge i32 %3, %5
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %6 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %strm = getelementptr inbounds %struct.EState, %struct.EState* %6, i32 0, i32 0
  %7 = load %struct.bz_stream*, %struct.bz_stream** %strm, align 8
  %avail_in = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %7, i32 0, i32 1
  %8 = load i32, i32* %avail_in, align 8
  %cmp3 = icmp eq i32 %8, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  br label %while.end

if.end5:                                          ; preds = %if.end
  store i8 1, i8* %progress_in, align 1
  %9 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %strm6 = getelementptr inbounds %struct.EState, %struct.EState* %9, i32 0, i32 0
  %10 = load %struct.bz_stream*, %struct.bz_stream** %strm6, align 8
  %next_in = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %10, i32 0, i32 0
  %11 = load i8*, i8** %next_in, align 8
  %12 = load i8, i8* %11, align 1
  %conv = zext i8 %12 to i32
  store i32 %conv, i32* %zchh, align 4
  %13 = load i32, i32* %zchh, align 4
  %14 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %state_in_ch = getelementptr inbounds %struct.EState, %struct.EState* %14, i32 0, i32 13
  %15 = load i32, i32* %state_in_ch, align 4
  %cmp7 = icmp ne i32 %13, %15
  br i1 %cmp7, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end5
  %16 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %state_in_len = getelementptr inbounds %struct.EState, %struct.EState* %16, i32 0, i32 14
  %17 = load i32, i32* %state_in_len, align 8
  %cmp9 = icmp eq i32 %17, 1
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %land.lhs.true
  %18 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %state_in_ch12 = getelementptr inbounds %struct.EState, %struct.EState* %18, i32 0, i32 13
  %19 = load i32, i32* %state_in_ch12, align 4
  %conv13 = trunc i32 %19 to i8
  store i8 %conv13, i8* %ch, align 1
  %20 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %blockCRC = getelementptr inbounds %struct.EState, %struct.EState* %20, i32 0, i32 26
  %21 = load i32, i32* %blockCRC, align 8
  %shl = shl i32 %21, 8
  %22 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %blockCRC14 = getelementptr inbounds %struct.EState, %struct.EState* %22, i32 0, i32 26
  %23 = load i32, i32* %blockCRC14, align 8
  %shr = lshr i32 %23, 24
  %24 = load i8, i8* %ch, align 1
  %conv15 = zext i8 %24 to i32
  %xor = xor i32 %shr, %conv15
  %idxprom = zext i32 %xor to i64
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* @BZ2_crc32Table, i64 0, i64 %idxprom
  %25 = load i32, i32* %arrayidx, align 4
  %xor16 = xor i32 %shl, %25
  %26 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %blockCRC17 = getelementptr inbounds %struct.EState, %struct.EState* %26, i32 0, i32 26
  store i32 %xor16, i32* %blockCRC17, align 8
  %27 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %inUse = getelementptr inbounds %struct.EState, %struct.EState* %27, i32 0, i32 22
  %28 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %state_in_ch18 = getelementptr inbounds %struct.EState, %struct.EState* %28, i32 0, i32 13
  %29 = load i32, i32* %state_in_ch18, align 4
  %idxprom19 = zext i32 %29 to i64
  %arrayidx20 = getelementptr inbounds [256 x i8], [256 x i8]* %inUse, i64 0, i64 %idxprom19
  store i8 1, i8* %arrayidx20, align 1
  %30 = load i8, i8* %ch, align 1
  %31 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %block = getelementptr inbounds %struct.EState, %struct.EState* %31, i32 0, i32 9
  %32 = load i8*, i8** %block, align 8
  %33 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %nblock21 = getelementptr inbounds %struct.EState, %struct.EState* %33, i32 0, i32 17
  %34 = load i32, i32* %nblock21, align 4
  %idxprom22 = sext i32 %34 to i64
  %arrayidx23 = getelementptr inbounds i8, i8* %32, i64 %idxprom22
  store i8 %30, i8* %arrayidx23, align 1
  %35 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %nblock24 = getelementptr inbounds %struct.EState, %struct.EState* %35, i32 0, i32 17
  %36 = load i32, i32* %nblock24, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %nblock24, align 4
  %37 = load i32, i32* %zchh, align 4
  %38 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %state_in_ch25 = getelementptr inbounds %struct.EState, %struct.EState* %38, i32 0, i32 13
  store i32 %37, i32* %state_in_ch25, align 4
  br label %if.end44

if.else:                                          ; preds = %land.lhs.true, %if.end5
  %39 = load i32, i32* %zchh, align 4
  %40 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %state_in_ch26 = getelementptr inbounds %struct.EState, %struct.EState* %40, i32 0, i32 13
  %41 = load i32, i32* %state_in_ch26, align 4
  %cmp27 = icmp ne i32 %39, %41
  br i1 %cmp27, label %if.then32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %42 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %state_in_len29 = getelementptr inbounds %struct.EState, %struct.EState* %42, i32 0, i32 14
  %43 = load i32, i32* %state_in_len29, align 8
  %cmp30 = icmp eq i32 %43, 255
  br i1 %cmp30, label %if.then32, label %if.else40

if.then32:                                        ; preds = %lor.lhs.false, %if.else
  %44 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %state_in_ch33 = getelementptr inbounds %struct.EState, %struct.EState* %44, i32 0, i32 13
  %45 = load i32, i32* %state_in_ch33, align 4
  %cmp34 = icmp ult i32 %45, 256
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.then32
  %46 = load %struct.EState*, %struct.EState** %s.addr, align 8
  call void @add_pair_to_block(%struct.EState* %46)
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.then32
  %47 = load i32, i32* %zchh, align 4
  %48 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %state_in_ch38 = getelementptr inbounds %struct.EState, %struct.EState* %48, i32 0, i32 13
  store i32 %47, i32* %state_in_ch38, align 4
  %49 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %state_in_len39 = getelementptr inbounds %struct.EState, %struct.EState* %49, i32 0, i32 14
  store i32 1, i32* %state_in_len39, align 8
  br label %if.end43

if.else40:                                        ; preds = %lor.lhs.false
  %50 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %state_in_len41 = getelementptr inbounds %struct.EState, %struct.EState* %50, i32 0, i32 14
  %51 = load i32, i32* %state_in_len41, align 8
  %inc42 = add nsw i32 %51, 1
  store i32 %inc42, i32* %state_in_len41, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.else40, %if.end37
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.then11
  %52 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %strm45 = getelementptr inbounds %struct.EState, %struct.EState* %52, i32 0, i32 0
  %53 = load %struct.bz_stream*, %struct.bz_stream** %strm45, align 8
  %next_in46 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %53, i32 0, i32 0
  %54 = load i8*, i8** %next_in46, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %incdec.ptr, i8** %next_in46, align 8
  %55 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %strm47 = getelementptr inbounds %struct.EState, %struct.EState* %55, i32 0, i32 0
  %56 = load %struct.bz_stream*, %struct.bz_stream** %strm47, align 8
  %avail_in48 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %56, i32 0, i32 1
  %57 = load i32, i32* %avail_in48, align 8
  %dec = add i32 %57, -1
  store i32 %dec, i32* %avail_in48, align 8
  %58 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %strm49 = getelementptr inbounds %struct.EState, %struct.EState* %58, i32 0, i32 0
  %59 = load %struct.bz_stream*, %struct.bz_stream** %strm49, align 8
  %total_in_lo32 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %59, i32 0, i32 2
  %60 = load i32, i32* %total_in_lo32, align 4
  %inc50 = add i32 %60, 1
  store i32 %inc50, i32* %total_in_lo32, align 4
  %61 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %strm51 = getelementptr inbounds %struct.EState, %struct.EState* %61, i32 0, i32 0
  %62 = load %struct.bz_stream*, %struct.bz_stream** %strm51, align 8
  %total_in_lo3252 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %62, i32 0, i32 2
  %63 = load i32, i32* %total_in_lo3252, align 4
  %cmp53 = icmp eq i32 %63, 0
  br i1 %cmp53, label %if.then55, label %if.end58

if.then55:                                        ; preds = %if.end44
  %64 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %strm56 = getelementptr inbounds %struct.EState, %struct.EState* %64, i32 0, i32 0
  %65 = load %struct.bz_stream*, %struct.bz_stream** %strm56, align 8
  %total_in_hi32 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %65, i32 0, i32 3
  %66 = load i32, i32* %total_in_hi32, align 8
  %inc57 = add i32 %66, 1
  store i32 %inc57, i32* %total_in_hi32, align 8
  br label %if.end58

if.end58:                                         ; preds = %if.then55, %if.end44
  br label %while.body

while.end:                                        ; preds = %if.then4, %if.then2
  br label %if.end155

if.else59:                                        ; preds = %entry
  br label %while.body60

while.body60:                                     ; preds = %if.else59, %if.end151
  %67 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %nblock61 = getelementptr inbounds %struct.EState, %struct.EState* %67, i32 0, i32 17
  %68 = load i32, i32* %nblock61, align 4
  %69 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %nblockMAX62 = getelementptr inbounds %struct.EState, %struct.EState* %69, i32 0, i32 18
  %70 = load i32, i32* %nblockMAX62, align 8
  %cmp63 = icmp sge i32 %68, %70
  br i1 %cmp63, label %if.then65, label %if.end66

if.then65:                                        ; preds = %while.body60
  br label %while.end154

if.end66:                                         ; preds = %while.body60
  %71 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %strm67 = getelementptr inbounds %struct.EState, %struct.EState* %71, i32 0, i32 0
  %72 = load %struct.bz_stream*, %struct.bz_stream** %strm67, align 8
  %avail_in68 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %72, i32 0, i32 1
  %73 = load i32, i32* %avail_in68, align 8
  %cmp69 = icmp eq i32 %73, 0
  br i1 %cmp69, label %if.then71, label %if.end72

if.then71:                                        ; preds = %if.end66
  br label %while.end154

if.end72:                                         ; preds = %if.end66
  %74 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %avail_in_expect = getelementptr inbounds %struct.EState, %struct.EState* %74, i32 0, i32 3
  %75 = load i32, i32* %avail_in_expect, align 8
  %cmp73 = icmp eq i32 %75, 0
  br i1 %cmp73, label %if.then75, label %if.end76

if.then75:                                        ; preds = %if.end72
  br label %while.end154

if.end76:                                         ; preds = %if.end72
  store i8 1, i8* %progress_in, align 1
  %76 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %strm78 = getelementptr inbounds %struct.EState, %struct.EState* %76, i32 0, i32 0
  %77 = load %struct.bz_stream*, %struct.bz_stream** %strm78, align 8
  %next_in79 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %77, i32 0, i32 0
  %78 = load i8*, i8** %next_in79, align 8
  %79 = load i8, i8* %78, align 1
  %conv80 = zext i8 %79 to i32
  store i32 %conv80, i32* %zchh77, align 4
  %80 = load i32, i32* %zchh77, align 4
  %81 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %state_in_ch81 = getelementptr inbounds %struct.EState, %struct.EState* %81, i32 0, i32 13
  %82 = load i32, i32* %state_in_ch81, align 4
  %cmp82 = icmp ne i32 %80, %82
  br i1 %cmp82, label %land.lhs.true84, label %if.else113

land.lhs.true84:                                  ; preds = %if.end76
  %83 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %state_in_len85 = getelementptr inbounds %struct.EState, %struct.EState* %83, i32 0, i32 14
  %84 = load i32, i32* %state_in_len85, align 8
  %cmp86 = icmp eq i32 %84, 1
  br i1 %cmp86, label %if.then88, label %if.else113

if.then88:                                        ; preds = %land.lhs.true84
  %85 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %state_in_ch90 = getelementptr inbounds %struct.EState, %struct.EState* %85, i32 0, i32 13
  %86 = load i32, i32* %state_in_ch90, align 4
  %conv91 = trunc i32 %86 to i8
  store i8 %conv91, i8* %ch89, align 1
  %87 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %blockCRC92 = getelementptr inbounds %struct.EState, %struct.EState* %87, i32 0, i32 26
  %88 = load i32, i32* %blockCRC92, align 8
  %shl93 = shl i32 %88, 8
  %89 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %blockCRC94 = getelementptr inbounds %struct.EState, %struct.EState* %89, i32 0, i32 26
  %90 = load i32, i32* %blockCRC94, align 8
  %shr95 = lshr i32 %90, 24
  %91 = load i8, i8* %ch89, align 1
  %conv96 = zext i8 %91 to i32
  %xor97 = xor i32 %shr95, %conv96
  %idxprom98 = zext i32 %xor97 to i64
  %arrayidx99 = getelementptr inbounds [256 x i32], [256 x i32]* @BZ2_crc32Table, i64 0, i64 %idxprom98
  %92 = load i32, i32* %arrayidx99, align 4
  %xor100 = xor i32 %shl93, %92
  %93 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %blockCRC101 = getelementptr inbounds %struct.EState, %struct.EState* %93, i32 0, i32 26
  store i32 %xor100, i32* %blockCRC101, align 8
  %94 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %inUse102 = getelementptr inbounds %struct.EState, %struct.EState* %94, i32 0, i32 22
  %95 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %state_in_ch103 = getelementptr inbounds %struct.EState, %struct.EState* %95, i32 0, i32 13
  %96 = load i32, i32* %state_in_ch103, align 4
  %idxprom104 = zext i32 %96 to i64
  %arrayidx105 = getelementptr inbounds [256 x i8], [256 x i8]* %inUse102, i64 0, i64 %idxprom104
  store i8 1, i8* %arrayidx105, align 1
  %97 = load i8, i8* %ch89, align 1
  %98 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %block106 = getelementptr inbounds %struct.EState, %struct.EState* %98, i32 0, i32 9
  %99 = load i8*, i8** %block106, align 8
  %100 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %nblock107 = getelementptr inbounds %struct.EState, %struct.EState* %100, i32 0, i32 17
  %101 = load i32, i32* %nblock107, align 4
  %idxprom108 = sext i32 %101 to i64
  %arrayidx109 = getelementptr inbounds i8, i8* %99, i64 %idxprom108
  store i8 %97, i8* %arrayidx109, align 1
  %102 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %nblock110 = getelementptr inbounds %struct.EState, %struct.EState* %102, i32 0, i32 17
  %103 = load i32, i32* %nblock110, align 4
  %inc111 = add nsw i32 %103, 1
  store i32 %inc111, i32* %nblock110, align 4
  %104 = load i32, i32* %zchh77, align 4
  %105 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %state_in_ch112 = getelementptr inbounds %struct.EState, %struct.EState* %105, i32 0, i32 13
  store i32 %104, i32* %state_in_ch112, align 4
  br label %if.end133

if.else113:                                       ; preds = %land.lhs.true84, %if.end76
  %106 = load i32, i32* %zchh77, align 4
  %107 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %state_in_ch114 = getelementptr inbounds %struct.EState, %struct.EState* %107, i32 0, i32 13
  %108 = load i32, i32* %state_in_ch114, align 4
  %cmp115 = icmp ne i32 %106, %108
  br i1 %cmp115, label %if.then121, label %lor.lhs.false117

lor.lhs.false117:                                 ; preds = %if.else113
  %109 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %state_in_len118 = getelementptr inbounds %struct.EState, %struct.EState* %109, i32 0, i32 14
  %110 = load i32, i32* %state_in_len118, align 8
  %cmp119 = icmp eq i32 %110, 255
  br i1 %cmp119, label %if.then121, label %if.else129

if.then121:                                       ; preds = %lor.lhs.false117, %if.else113
  %111 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %state_in_ch122 = getelementptr inbounds %struct.EState, %struct.EState* %111, i32 0, i32 13
  %112 = load i32, i32* %state_in_ch122, align 4
  %cmp123 = icmp ult i32 %112, 256
  br i1 %cmp123, label %if.then125, label %if.end126

if.then125:                                       ; preds = %if.then121
  %113 = load %struct.EState*, %struct.EState** %s.addr, align 8
  call void @add_pair_to_block(%struct.EState* %113)
  br label %if.end126

if.end126:                                        ; preds = %if.then125, %if.then121
  %114 = load i32, i32* %zchh77, align 4
  %115 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %state_in_ch127 = getelementptr inbounds %struct.EState, %struct.EState* %115, i32 0, i32 13
  store i32 %114, i32* %state_in_ch127, align 4
  %116 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %state_in_len128 = getelementptr inbounds %struct.EState, %struct.EState* %116, i32 0, i32 14
  store i32 1, i32* %state_in_len128, align 8
  br label %if.end132

if.else129:                                       ; preds = %lor.lhs.false117
  %117 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %state_in_len130 = getelementptr inbounds %struct.EState, %struct.EState* %117, i32 0, i32 14
  %118 = load i32, i32* %state_in_len130, align 8
  %inc131 = add nsw i32 %118, 1
  store i32 %inc131, i32* %state_in_len130, align 8
  br label %if.end132

if.end132:                                        ; preds = %if.else129, %if.end126
  br label %if.end133

if.end133:                                        ; preds = %if.end132, %if.then88
  %119 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %strm134 = getelementptr inbounds %struct.EState, %struct.EState* %119, i32 0, i32 0
  %120 = load %struct.bz_stream*, %struct.bz_stream** %strm134, align 8
  %next_in135 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %120, i32 0, i32 0
  %121 = load i8*, i8** %next_in135, align 8
  %incdec.ptr136 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %incdec.ptr136, i8** %next_in135, align 8
  %122 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %strm137 = getelementptr inbounds %struct.EState, %struct.EState* %122, i32 0, i32 0
  %123 = load %struct.bz_stream*, %struct.bz_stream** %strm137, align 8
  %avail_in138 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %123, i32 0, i32 1
  %124 = load i32, i32* %avail_in138, align 8
  %dec139 = add i32 %124, -1
  store i32 %dec139, i32* %avail_in138, align 8
  %125 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %strm140 = getelementptr inbounds %struct.EState, %struct.EState* %125, i32 0, i32 0
  %126 = load %struct.bz_stream*, %struct.bz_stream** %strm140, align 8
  %total_in_lo32141 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %126, i32 0, i32 2
  %127 = load i32, i32* %total_in_lo32141, align 4
  %inc142 = add i32 %127, 1
  store i32 %inc142, i32* %total_in_lo32141, align 4
  %128 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %strm143 = getelementptr inbounds %struct.EState, %struct.EState* %128, i32 0, i32 0
  %129 = load %struct.bz_stream*, %struct.bz_stream** %strm143, align 8
  %total_in_lo32144 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %129, i32 0, i32 2
  %130 = load i32, i32* %total_in_lo32144, align 4
  %cmp145 = icmp eq i32 %130, 0
  br i1 %cmp145, label %if.then147, label %if.end151

if.then147:                                       ; preds = %if.end133
  %131 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %strm148 = getelementptr inbounds %struct.EState, %struct.EState* %131, i32 0, i32 0
  %132 = load %struct.bz_stream*, %struct.bz_stream** %strm148, align 8
  %total_in_hi32149 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %132, i32 0, i32 3
  %133 = load i32, i32* %total_in_hi32149, align 8
  %inc150 = add i32 %133, 1
  store i32 %inc150, i32* %total_in_hi32149, align 8
  br label %if.end151

if.end151:                                        ; preds = %if.then147, %if.end133
  %134 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %avail_in_expect152 = getelementptr inbounds %struct.EState, %struct.EState* %134, i32 0, i32 3
  %135 = load i32, i32* %avail_in_expect152, align 8
  %dec153 = add i32 %135, -1
  store i32 %dec153, i32* %avail_in_expect152, align 8
  br label %while.body60

while.end154:                                     ; preds = %if.then75, %if.then71, %if.then65
  br label %if.end155

if.end155:                                        ; preds = %while.end154, %while.end
  %136 = load i8, i8* %progress_in, align 1
  ret i8 %136
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_RL(%struct.EState* %s) #0 {
entry:
  %s.addr = alloca %struct.EState*, align 8
  store %struct.EState* %s, %struct.EState** %s.addr, align 8
  %0 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %state_in_ch = getelementptr inbounds %struct.EState, %struct.EState* %0, i32 0, i32 13
  %1 = load i32, i32* %state_in_ch, align 4
  %cmp = icmp ult i32 %1, 256
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.EState*, %struct.EState** %s.addr, align 8
  call void @add_pair_to_block(%struct.EState* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.EState*, %struct.EState** %s.addr, align 8
  call void @init_RL(%struct.EState* %3)
  ret void
}

declare dso_local void @BZ2_compressBlock(%struct.EState*, i8 zeroext) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_pair_to_block(%struct.EState* %s) #0 {
entry:
  %s.addr = alloca %struct.EState*, align 8
  %i = alloca i32, align 4
  %ch = alloca i8, align 1
  store %struct.EState* %s, %struct.EState** %s.addr, align 8
  %0 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %state_in_ch = getelementptr inbounds %struct.EState, %struct.EState* %0, i32 0, i32 13
  %1 = load i32, i32* %state_in_ch, align 4
  %conv = trunc i32 %1 to i8
  store i8 %conv, i8* %ch, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %state_in_len = getelementptr inbounds %struct.EState, %struct.EState* %3, i32 0, i32 14
  %4 = load i32, i32* %state_in_len, align 8
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %blockCRC = getelementptr inbounds %struct.EState, %struct.EState* %5, i32 0, i32 26
  %6 = load i32, i32* %blockCRC, align 8
  %shl = shl i32 %6, 8
  %7 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %blockCRC2 = getelementptr inbounds %struct.EState, %struct.EState* %7, i32 0, i32 26
  %8 = load i32, i32* %blockCRC2, align 8
  %shr = lshr i32 %8, 24
  %9 = load i8, i8* %ch, align 1
  %conv3 = zext i8 %9 to i32
  %xor = xor i32 %shr, %conv3
  %idxprom = zext i32 %xor to i64
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* @BZ2_crc32Table, i64 0, i64 %idxprom
  %10 = load i32, i32* %arrayidx, align 4
  %xor4 = xor i32 %shl, %10
  %11 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %blockCRC5 = getelementptr inbounds %struct.EState, %struct.EState* %11, i32 0, i32 26
  store i32 %xor4, i32* %blockCRC5, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %inUse = getelementptr inbounds %struct.EState, %struct.EState* %13, i32 0, i32 22
  %14 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %state_in_ch6 = getelementptr inbounds %struct.EState, %struct.EState* %14, i32 0, i32 13
  %15 = load i32, i32* %state_in_ch6, align 4
  %idxprom7 = zext i32 %15 to i64
  %arrayidx8 = getelementptr inbounds [256 x i8], [256 x i8]* %inUse, i64 0, i64 %idxprom7
  store i8 1, i8* %arrayidx8, align 1
  %16 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %state_in_len9 = getelementptr inbounds %struct.EState, %struct.EState* %16, i32 0, i32 14
  %17 = load i32, i32* %state_in_len9, align 8
  switch i32 %17, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb14
    i32 3, label %sw.bb27
  ]

sw.bb:                                            ; preds = %for.end
  %18 = load i8, i8* %ch, align 1
  %19 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %block = getelementptr inbounds %struct.EState, %struct.EState* %19, i32 0, i32 9
  %20 = load i8*, i8** %block, align 8
  %21 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %nblock = getelementptr inbounds %struct.EState, %struct.EState* %21, i32 0, i32 17
  %22 = load i32, i32* %nblock, align 4
  %idxprom10 = sext i32 %22 to i64
  %arrayidx11 = getelementptr inbounds i8, i8* %20, i64 %idxprom10
  store i8 %18, i8* %arrayidx11, align 1
  %23 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %nblock12 = getelementptr inbounds %struct.EState, %struct.EState* %23, i32 0, i32 17
  %24 = load i32, i32* %nblock12, align 4
  %inc13 = add nsw i32 %24, 1
  store i32 %inc13, i32* %nblock12, align 4
  br label %sw.epilog

sw.bb14:                                          ; preds = %for.end
  %25 = load i8, i8* %ch, align 1
  %26 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %block15 = getelementptr inbounds %struct.EState, %struct.EState* %26, i32 0, i32 9
  %27 = load i8*, i8** %block15, align 8
  %28 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %nblock16 = getelementptr inbounds %struct.EState, %struct.EState* %28, i32 0, i32 17
  %29 = load i32, i32* %nblock16, align 4
  %idxprom17 = sext i32 %29 to i64
  %arrayidx18 = getelementptr inbounds i8, i8* %27, i64 %idxprom17
  store i8 %25, i8* %arrayidx18, align 1
  %30 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %nblock19 = getelementptr inbounds %struct.EState, %struct.EState* %30, i32 0, i32 17
  %31 = load i32, i32* %nblock19, align 4
  %inc20 = add nsw i32 %31, 1
  store i32 %inc20, i32* %nblock19, align 4
  %32 = load i8, i8* %ch, align 1
  %33 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %block21 = getelementptr inbounds %struct.EState, %struct.EState* %33, i32 0, i32 9
  %34 = load i8*, i8** %block21, align 8
  %35 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %nblock22 = getelementptr inbounds %struct.EState, %struct.EState* %35, i32 0, i32 17
  %36 = load i32, i32* %nblock22, align 4
  %idxprom23 = sext i32 %36 to i64
  %arrayidx24 = getelementptr inbounds i8, i8* %34, i64 %idxprom23
  store i8 %32, i8* %arrayidx24, align 1
  %37 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %nblock25 = getelementptr inbounds %struct.EState, %struct.EState* %37, i32 0, i32 17
  %38 = load i32, i32* %nblock25, align 4
  %inc26 = add nsw i32 %38, 1
  store i32 %inc26, i32* %nblock25, align 4
  br label %sw.epilog

sw.bb27:                                          ; preds = %for.end
  %39 = load i8, i8* %ch, align 1
  %40 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %block28 = getelementptr inbounds %struct.EState, %struct.EState* %40, i32 0, i32 9
  %41 = load i8*, i8** %block28, align 8
  %42 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %nblock29 = getelementptr inbounds %struct.EState, %struct.EState* %42, i32 0, i32 17
  %43 = load i32, i32* %nblock29, align 4
  %idxprom30 = sext i32 %43 to i64
  %arrayidx31 = getelementptr inbounds i8, i8* %41, i64 %idxprom30
  store i8 %39, i8* %arrayidx31, align 1
  %44 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %nblock32 = getelementptr inbounds %struct.EState, %struct.EState* %44, i32 0, i32 17
  %45 = load i32, i32* %nblock32, align 4
  %inc33 = add nsw i32 %45, 1
  store i32 %inc33, i32* %nblock32, align 4
  %46 = load i8, i8* %ch, align 1
  %47 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %block34 = getelementptr inbounds %struct.EState, %struct.EState* %47, i32 0, i32 9
  %48 = load i8*, i8** %block34, align 8
  %49 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %nblock35 = getelementptr inbounds %struct.EState, %struct.EState* %49, i32 0, i32 17
  %50 = load i32, i32* %nblock35, align 4
  %idxprom36 = sext i32 %50 to i64
  %arrayidx37 = getelementptr inbounds i8, i8* %48, i64 %idxprom36
  store i8 %46, i8* %arrayidx37, align 1
  %51 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %nblock38 = getelementptr inbounds %struct.EState, %struct.EState* %51, i32 0, i32 17
  %52 = load i32, i32* %nblock38, align 4
  %inc39 = add nsw i32 %52, 1
  store i32 %inc39, i32* %nblock38, align 4
  %53 = load i8, i8* %ch, align 1
  %54 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %block40 = getelementptr inbounds %struct.EState, %struct.EState* %54, i32 0, i32 9
  %55 = load i8*, i8** %block40, align 8
  %56 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %nblock41 = getelementptr inbounds %struct.EState, %struct.EState* %56, i32 0, i32 17
  %57 = load i32, i32* %nblock41, align 4
  %idxprom42 = sext i32 %57 to i64
  %arrayidx43 = getelementptr inbounds i8, i8* %55, i64 %idxprom42
  store i8 %53, i8* %arrayidx43, align 1
  %58 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %nblock44 = getelementptr inbounds %struct.EState, %struct.EState* %58, i32 0, i32 17
  %59 = load i32, i32* %nblock44, align 4
  %inc45 = add nsw i32 %59, 1
  store i32 %inc45, i32* %nblock44, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %for.end
  %60 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %inUse46 = getelementptr inbounds %struct.EState, %struct.EState* %60, i32 0, i32 22
  %61 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %state_in_len47 = getelementptr inbounds %struct.EState, %struct.EState* %61, i32 0, i32 14
  %62 = load i32, i32* %state_in_len47, align 8
  %sub = sub nsw i32 %62, 4
  %idxprom48 = sext i32 %sub to i64
  %arrayidx49 = getelementptr inbounds [256 x i8], [256 x i8]* %inUse46, i64 0, i64 %idxprom48
  store i8 1, i8* %arrayidx49, align 1
  %63 = load i8, i8* %ch, align 1
  %64 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %block50 = getelementptr inbounds %struct.EState, %struct.EState* %64, i32 0, i32 9
  %65 = load i8*, i8** %block50, align 8
  %66 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %nblock51 = getelementptr inbounds %struct.EState, %struct.EState* %66, i32 0, i32 17
  %67 = load i32, i32* %nblock51, align 4
  %idxprom52 = sext i32 %67 to i64
  %arrayidx53 = getelementptr inbounds i8, i8* %65, i64 %idxprom52
  store i8 %63, i8* %arrayidx53, align 1
  %68 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %nblock54 = getelementptr inbounds %struct.EState, %struct.EState* %68, i32 0, i32 17
  %69 = load i32, i32* %nblock54, align 4
  %inc55 = add nsw i32 %69, 1
  store i32 %inc55, i32* %nblock54, align 4
  %70 = load i8, i8* %ch, align 1
  %71 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %block56 = getelementptr inbounds %struct.EState, %struct.EState* %71, i32 0, i32 9
  %72 = load i8*, i8** %block56, align 8
  %73 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %nblock57 = getelementptr inbounds %struct.EState, %struct.EState* %73, i32 0, i32 17
  %74 = load i32, i32* %nblock57, align 4
  %idxprom58 = sext i32 %74 to i64
  %arrayidx59 = getelementptr inbounds i8, i8* %72, i64 %idxprom58
  store i8 %70, i8* %arrayidx59, align 1
  %75 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %nblock60 = getelementptr inbounds %struct.EState, %struct.EState* %75, i32 0, i32 17
  %76 = load i32, i32* %nblock60, align 4
  %inc61 = add nsw i32 %76, 1
  store i32 %inc61, i32* %nblock60, align 4
  %77 = load i8, i8* %ch, align 1
  %78 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %block62 = getelementptr inbounds %struct.EState, %struct.EState* %78, i32 0, i32 9
  %79 = load i8*, i8** %block62, align 8
  %80 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %nblock63 = getelementptr inbounds %struct.EState, %struct.EState* %80, i32 0, i32 17
  %81 = load i32, i32* %nblock63, align 4
  %idxprom64 = sext i32 %81 to i64
  %arrayidx65 = getelementptr inbounds i8, i8* %79, i64 %idxprom64
  store i8 %77, i8* %arrayidx65, align 1
  %82 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %nblock66 = getelementptr inbounds %struct.EState, %struct.EState* %82, i32 0, i32 17
  %83 = load i32, i32* %nblock66, align 4
  %inc67 = add nsw i32 %83, 1
  store i32 %inc67, i32* %nblock66, align 4
  %84 = load i8, i8* %ch, align 1
  %85 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %block68 = getelementptr inbounds %struct.EState, %struct.EState* %85, i32 0, i32 9
  %86 = load i8*, i8** %block68, align 8
  %87 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %nblock69 = getelementptr inbounds %struct.EState, %struct.EState* %87, i32 0, i32 17
  %88 = load i32, i32* %nblock69, align 4
  %idxprom70 = sext i32 %88 to i64
  %arrayidx71 = getelementptr inbounds i8, i8* %86, i64 %idxprom70
  store i8 %84, i8* %arrayidx71, align 1
  %89 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %nblock72 = getelementptr inbounds %struct.EState, %struct.EState* %89, i32 0, i32 17
  %90 = load i32, i32* %nblock72, align 4
  %inc73 = add nsw i32 %90, 1
  store i32 %inc73, i32* %nblock72, align 4
  %91 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %state_in_len74 = getelementptr inbounds %struct.EState, %struct.EState* %91, i32 0, i32 14
  %92 = load i32, i32* %state_in_len74, align 8
  %sub75 = sub nsw i32 %92, 4
  %conv76 = trunc i32 %sub75 to i8
  %93 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %block77 = getelementptr inbounds %struct.EState, %struct.EState* %93, i32 0, i32 9
  %94 = load i8*, i8** %block77, align 8
  %95 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %nblock78 = getelementptr inbounds %struct.EState, %struct.EState* %95, i32 0, i32 17
  %96 = load i32, i32* %nblock78, align 4
  %idxprom79 = sext i32 %96 to i64
  %arrayidx80 = getelementptr inbounds i8, i8* %94, i64 %idxprom79
  store i8 %conv76, i8* %arrayidx80, align 1
  %97 = load %struct.EState*, %struct.EState** %s.addr, align 8
  %nblock81 = getelementptr inbounds %struct.EState, %struct.EState* %97, i32 0, i32 17
  %98 = load i32, i32* %nblock81, align 4
  %inc82 = add nsw i32 %98, 1
  store i32 %inc82, i32* %nblock81, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb27, %sw.bb14, %sw.bb
  ret void
}

declare dso_local i32 @fgetc(%struct._IO_FILE*) #1

declare dso_local i32 @ungetc(i32, %struct._IO_FILE*) #1

; Function Attrs: argmemonly nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind readnone
declare dso_local i16** @__ctype_b_loc() #5

; Function Attrs: nounwind
declare dso_local i8* @strcat(i8*, i8*) #3

; Function Attrs: nounwind readonly
declare dso_local i32 @strcmp(i8*, i8*) #6

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #1

; Function Attrs: nounwind
declare dso_local %struct._IO_FILE* @fdopen(i32, i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn writeonly }
attributes #5 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind }
attributes #9 = { nounwind readnone }
attributes #10 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 11.0.0"}
