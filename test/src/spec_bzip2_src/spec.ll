; ModuleID = 'spec.c'
source_filename = "spec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spec_fd_t = type { i32, i32, i32, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@dbglvl = dso_local global i32 4, align 4
@seedi = dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"spec_init\0A\00", align 1
@spec_fd = dso_local global [3 x %struct.spec_fd_t] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [36 x i8] c"spec_init: Error mallocing memory!\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Creating Chunks\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Creating Chunk %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Filling input file\0A\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.5 = private unnamed_addr constant [24 x i8] c"Can't open file %s: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Error reading from %s: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Duplicating %d bytes\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"spec_read: %d, %p, %d = \00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"spec_read: fd=%d, > MAX_SPEC_FD!\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"EOF\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"spec_fread: %p, (%d x %d) fd %d =\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"spec_fread: fd=%d, > MAX_SPEC_FD!\0A\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"spec_getc: %d = \00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"spec_ungetc: %d = \00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"spec_ungetc: pos %d <= 0\0A\00", align 1
@.str.17 = private unnamed_addr constant [72 x i8] c"spec_ungetc: can't unget something that wasn't what was in the buffer!\0A\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"spec_write: %d, %p, %d = \00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"spec_write: fd=%d, > MAX_SPEC_FD!\0A\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"spec_fwrite: %p, %d, %d, %d = \00", align 1
@.str.21 = private unnamed_addr constant [36 x i8] c"spec_fwrite: fd=%d, > MAX_SPEC_FD!\0A\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"spec_putc: %d, %d = \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @ran() #0 {
entry:
  %lo = alloca i64, align 8
  %hi = alloca i64, align 8
  %test = alloca i64, align 8
  %0 = load i64, i64* @seedi, align 8
  %div = sdiv i64 %0, 127773
  store i64 %div, i64* %hi, align 8
  %1 = load i64, i64* @seedi, align 8
  %rem = srem i64 %1, 127773
  store i64 %rem, i64* %lo, align 8
  %2 = load i64, i64* %lo, align 8
  %mul = mul nsw i64 16807, %2
  %3 = load i64, i64* %hi, align 8
  %mul1 = mul nsw i64 2836, %3
  %sub = sub nsw i64 %mul, %mul1
  store i64 %sub, i64* %test, align 8
  %4 = load i64, i64* %test, align 8
  %cmp = icmp sgt i64 %4, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load i64, i64* %test, align 8
  store i64 %5, i64* @seedi, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load i64, i64* %test, align 8
  %add = add nsw i64 %6, 2147483647
  store i64 %add, i64* @seedi, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load i64, i64* @seedi, align 8
  %conv = sitofp i64 %7 to float
  %div2 = fdiv float %conv, 0x41E0000000000000
  %conv3 = fpext float %div2 to double
  ret double %conv3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spec_init() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %limit = alloca i32, align 4
  %0 = load i32, i32* @dbglvl, align 4
  %cmp = icmp slt i32 3, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc29, %if.end
  %1 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %1, 3
  br i1 %cmp1, label %for.body, label %for.end30

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom
  %limit2 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx, i32 0, i32 0
  %3 = load i32, i32* %limit2, align 8
  store i32 %3, i32* %limit, align 4
  %4 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom3
  %5 = bitcast %struct.spec_fd_t* %arrayidx4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %5, i8 0, i64 24, i1 false)
  %6 = load i32, i32* %limit, align 4
  %7 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom5
  %limit7 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx6, i32 0, i32 0
  store i32 %6, i32* %limit7, align 8
  %8 = load i32, i32* %limit, align 4
  %add = add nsw i32 %8, 1048576
  %conv = sext i32 %add to i64
  %call8 = call noalias i8* @malloc(i64 %conv) #7
  %9 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %9 to i64
  %arrayidx10 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom9
  %buf = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx10, i32 0, i32 3
  store i8* %call8, i8** %buf, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %10 to i64
  %arrayidx12 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom11
  %buf13 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx12, i32 0, i32 3
  %11 = load i8*, i8** %buf13, align 8
  %cmp14 = icmp eq i8* %11, null
  br i1 %cmp14, label %if.then16, label %if.end18

if.then16:                                        ; preds = %for.body
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  call void @exit(i32 0) #8
  unreachable

if.end18:                                         ; preds = %for.body
  store i32 0, i32* %j, align 4
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc, %if.end18
  %12 = load i32, i32* %j, align 4
  %13 = load i32, i32* %limit, align 4
  %cmp20 = icmp slt i32 %12, %13
  br i1 %cmp20, label %for.body22, label %for.end

for.body22:                                       ; preds = %for.cond19
  %14 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %14 to i64
  %arrayidx24 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom23
  %buf25 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx24, i32 0, i32 3
  %15 = load i8*, i8** %buf25, align 8
  %16 = load i32, i32* %j, align 4
  %idxprom26 = sext i32 %16 to i64
  %arrayidx27 = getelementptr inbounds i8, i8* %15, i64 %idxprom26
  store i8 0, i8* %arrayidx27, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body22
  %17 = load i32, i32* %j, align 4
  %add28 = add nsw i32 %17, 1024
  store i32 %add28, i32* %j, align 4
  br label %for.cond19

for.end:                                          ; preds = %for.cond19
  br label %for.inc29

for.inc29:                                        ; preds = %for.end
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end30:                                        ; preds = %for.cond
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spec_random_load(i32 %fd) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %random_text = alloca [32 x [131072 x i8]], align 16
  store i32 %fd, i32* %fd.addr, align 4
  %0 = load i32, i32* @dbglvl, align 4
  %cmp = icmp slt i32 4, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc13, %if.end
  %1 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %1, 32
  br i1 %cmp1, label %for.body, label %for.end15

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* @dbglvl, align 4
  %cmp2 = icmp slt i32 5, %2
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %3)
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %for.body
  store i32 0, i32* %j, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %if.end5
  %4 = load i32, i32* %j, align 4
  %cmp7 = icmp slt i32 %4, 131072
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond6
  %call9 = call double @ran()
  %mul = fmul double %call9, 2.560000e+02
  %conv = fptosi double %mul to i32
  %conv10 = trunc i32 %conv to i8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [32 x [131072 x i8]], [32 x [131072 x i8]]* %random_text, i64 0, i64 %idxprom
  %6 = load i32, i32* %j, align 4
  %idxprom11 = sext i32 %6 to i64
  %arrayidx12 = getelementptr inbounds [131072 x i8], [131072 x i8]* %arrayidx, i64 0, i64 %idxprom11
  store i8 %conv10, i8* %arrayidx12, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %7 = load i32, i32* %j, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond6

for.end:                                          ; preds = %for.cond6
  br label %for.inc13

for.inc13:                                        ; preds = %for.end
  %8 = load i32, i32* %i, align 4
  %inc14 = add nsw i32 %8, 1
  store i32 %inc14, i32* %i, align 4
  br label %for.cond

for.end15:                                        ; preds = %for.cond
  %9 = load i32, i32* @dbglvl, align 4
  %cmp16 = icmp slt i32 4, %9
  br i1 %cmp16, label %if.then18, label %if.end20

if.then18:                                        ; preds = %for.end15
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %for.end15
  store i32 0, i32* %i, align 4
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc34, %if.end20
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %fd.addr, align 4
  %idxprom22 = sext i32 %11 to i64
  %arrayidx23 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom22
  %limit = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx23, i32 0, i32 0
  %12 = load i32, i32* %limit, align 8
  %cmp24 = icmp slt i32 %10, %12
  br i1 %cmp24, label %for.body26, label %for.end35

for.body26:                                       ; preds = %for.cond21
  %13 = load i32, i32* %fd.addr, align 4
  %idxprom27 = sext i32 %13 to i64
  %arrayidx28 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom27
  %buf = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx28, i32 0, i32 3
  %14 = load i8*, i8** %buf, align 8
  %15 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %15 to i64
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 %idx.ext
  %call29 = call double @ran()
  %mul30 = fmul double %call29, 3.200000e+01
  %conv31 = fptosi double %mul30 to i32
  %idxprom32 = sext i32 %conv31 to i64
  %arrayidx33 = getelementptr inbounds [32 x [131072 x i8]], [32 x [131072 x i8]]* %random_text, i64 0, i64 %idxprom32
  %arraydecay = getelementptr inbounds [131072 x i8], [131072 x i8]* %arrayidx33, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr, i8* align 16 %arraydecay, i64 131072, i1 false)
  br label %for.inc34

for.inc34:                                        ; preds = %for.body26
  %16 = load i32, i32* %i, align 4
  %add = add nsw i32 %16, 131072
  store i32 %add, i32* %i, align 4
  br label %for.cond21

for.end35:                                        ; preds = %for.cond21
  %17 = load i32, i32* %fd.addr, align 4
  %idxprom36 = sext i32 %17 to i64
  %arrayidx37 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom36
  %len = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx37, i32 0, i32 1
  store i32 1048576, i32* %len, align 4
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spec_load(i32 %num, i8* %filename, i32 %size) #0 {
entry:
  %num.addr = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %fd = alloca i32, align 4
  %rc = alloca i32, align 4
  %i = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %num, i32* %num.addr, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call i32 (i8*, i32, ...) @open(i8* %0, i32 0)
  store i32 %call, i32* %fd, align 4
  %1 = load i32, i32* %fd, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %3 = load i8*, i8** %filename.addr, align 8
  %call1 = call i32* @__errno_location() #9
  %4 = load i32, i32* %call1, align 4
  %call2 = call i8* @strerror(i32 %4) #7
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i8* %3, i8* %call2)
  call void @exit(i32 0) #8
  unreachable

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %num.addr, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom
  %len = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx, i32 0, i32 1
  store i32 0, i32* %len, align 4
  %6 = load i32, i32* %num.addr, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom4
  %pos = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx5, i32 0, i32 2
  store i32 0, i32* %pos, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %size.addr, align 4
  %cmp6 = icmp slt i32 %7, %8
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %fd, align 4
  %10 = load i32, i32* %num.addr, align 4
  %idxprom7 = sext i32 %10 to i64
  %arrayidx8 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom7
  %buf = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx8, i32 0, i32 3
  %11 = load i8*, i8** %buf, align 8
  %12 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %12 to i64
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 %idx.ext
  %call9 = call i64 @read(i32 %9, i8* %add.ptr, i64 131072)
  %conv = trunc i64 %call9 to i32
  store i32 %conv, i32* %rc, align 4
  %13 = load i32, i32* %rc, align 4
  %cmp10 = icmp eq i32 %13, 0
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %for.body
  br label %for.end

if.end13:                                         ; preds = %for.body
  %14 = load i32, i32* %rc, align 4
  %cmp14 = icmp slt i32 %14, 0
  br i1 %cmp14, label %if.then16, label %if.end20

if.then16:                                        ; preds = %if.end13
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %16 = load i8*, i8** %filename.addr, align 8
  %call17 = call i32* @__errno_location() #9
  %17 = load i32, i32* %call17, align 4
  %call18 = call i8* @strerror(i32 %17) #7
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i8* %16, i8* %call18)
  call void @exit(i32 0) #8
  unreachable

if.end20:                                         ; preds = %if.end13
  %18 = load i32, i32* %rc, align 4
  %19 = load i32, i32* %num.addr, align 4
  %idxprom21 = sext i32 %19 to i64
  %arrayidx22 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom21
  %len23 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx22, i32 0, i32 1
  %20 = load i32, i32* %len23, align 4
  %add = add nsw i32 %20, %18
  store i32 %add, i32* %len23, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end20
  %21 = load i32, i32* %rc, align 4
  %22 = load i32, i32* %i, align 4
  %add24 = add nsw i32 %22, %21
  store i32 %add24, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then12, %for.cond
  %23 = load i32, i32* %fd, align 4
  %call25 = call i32 @close(i32 %23)
  br label %while.cond

while.cond:                                       ; preds = %if.end48, %for.end
  %24 = load i32, i32* %num.addr, align 4
  %idxprom26 = sext i32 %24 to i64
  %arrayidx27 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom26
  %len28 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx27, i32 0, i32 1
  %25 = load i32, i32* %len28, align 4
  %26 = load i32, i32* %size.addr, align 4
  %cmp29 = icmp slt i32 %25, %26
  br i1 %cmp29, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %27 = load i32, i32* %size.addr, align 4
  %28 = load i32, i32* %num.addr, align 4
  %idxprom31 = sext i32 %28 to i64
  %arrayidx32 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom31
  %len33 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx32, i32 0, i32 1
  %29 = load i32, i32* %len33, align 4
  %sub = sub nsw i32 %27, %29
  store i32 %sub, i32* %tmp, align 4
  %30 = load i32, i32* %tmp, align 4
  %31 = load i32, i32* %num.addr, align 4
  %idxprom34 = sext i32 %31 to i64
  %arrayidx35 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom34
  %len36 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx35, i32 0, i32 1
  %32 = load i32, i32* %len36, align 4
  %cmp37 = icmp sgt i32 %30, %32
  br i1 %cmp37, label %if.then39, label %if.end43

if.then39:                                        ; preds = %while.body
  %33 = load i32, i32* %num.addr, align 4
  %idxprom40 = sext i32 %33 to i64
  %arrayidx41 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom40
  %len42 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx41, i32 0, i32 1
  %34 = load i32, i32* %len42, align 4
  store i32 %34, i32* %tmp, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then39, %while.body
  %35 = load i32, i32* @dbglvl, align 4
  %cmp44 = icmp slt i32 3, %35
  br i1 %cmp44, label %if.then46, label %if.end48

if.then46:                                        ; preds = %if.end43
  %36 = load i32, i32* %tmp, align 4
  %call47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %36)
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %if.end43
  %37 = load i32, i32* %num.addr, align 4
  %idxprom49 = sext i32 %37 to i64
  %arrayidx50 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom49
  %buf51 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx50, i32 0, i32 3
  %38 = load i8*, i8** %buf51, align 8
  %39 = load i32, i32* %num.addr, align 4
  %idxprom52 = sext i32 %39 to i64
  %arrayidx53 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom52
  %len54 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx53, i32 0, i32 1
  %40 = load i32, i32* %len54, align 4
  %idx.ext55 = sext i32 %40 to i64
  %add.ptr56 = getelementptr inbounds i8, i8* %38, i64 %idx.ext55
  %41 = load i32, i32* %num.addr, align 4
  %idxprom57 = sext i32 %41 to i64
  %arrayidx58 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom57
  %buf59 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx58, i32 0, i32 3
  %42 = load i8*, i8** %buf59, align 8
  %43 = load i32, i32* %tmp, align 4
  %conv60 = sext i32 %43 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr56, i8* align 1 %42, i64 %conv60, i1 false)
  %44 = load i32, i32* %tmp, align 4
  %45 = load i32, i32* %num.addr, align 4
  %idxprom61 = sext i32 %45 to i64
  %arrayidx62 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom61
  %len63 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx62, i32 0, i32 1
  %46 = load i32, i32* %len63, align 4
  %add64 = add nsw i32 %46, %44
  store i32 %add64, i32* %len63, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret i32 0
}

declare dso_local i32 @open(i8*, i32, ...) #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind
declare dso_local i8* @strerror(i32) #3

; Function Attrs: nounwind readnone
declare dso_local i32* @__errno_location() #6

declare dso_local i64 @read(i32, i8*, i64) #1

declare dso_local i32 @close(i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spec_read(i32 %fd, i8* %buf, i32 %size) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 0, i32* %rc, align 4
  %0 = load i32, i32* @dbglvl, align 4
  %cmp = icmp slt i32 4, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %fd.addr, align 4
  %2 = load i8*, i8** %buf.addr, align 8
  %3 = load i32, i32* %size.addr, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 %1, i8* %2, i32 %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %fd.addr, align 4
  %cmp1 = icmp sgt i32 %4, 3
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = load i32, i32* %fd.addr, align 4
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i32 %6)
  call void @exit(i32 0) #8
  unreachable

if.end4:                                          ; preds = %if.end
  %7 = load i32, i32* %fd.addr, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom
  %pos = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx, i32 0, i32 2
  %8 = load i32, i32* %pos, align 8
  %9 = load i32, i32* %fd.addr, align 4
  %idxprom5 = sext i32 %9 to i64
  %arrayidx6 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom5
  %len = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx6, i32 0, i32 1
  %10 = load i32, i32* %len, align 4
  %cmp7 = icmp sge i32 %8, %10
  br i1 %cmp7, label %if.then8, label %if.end13

if.then8:                                         ; preds = %if.end4
  %11 = load i32, i32* @dbglvl, align 4
  %cmp9 = icmp slt i32 4, %11
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.then8
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.then8
  store i32 -1, i32* %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.end4
  %12 = load i32, i32* %fd.addr, align 4
  %idxprom14 = sext i32 %12 to i64
  %arrayidx15 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom14
  %pos16 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx15, i32 0, i32 2
  %13 = load i32, i32* %pos16, align 8
  %14 = load i32, i32* %size.addr, align 4
  %add = add nsw i32 %13, %14
  %15 = load i32, i32* %fd.addr, align 4
  %idxprom17 = sext i32 %15 to i64
  %arrayidx18 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom17
  %len19 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx18, i32 0, i32 1
  %16 = load i32, i32* %len19, align 4
  %cmp20 = icmp sge i32 %add, %16
  br i1 %cmp20, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.end13
  %17 = load i32, i32* %fd.addr, align 4
  %idxprom22 = sext i32 %17 to i64
  %arrayidx23 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom22
  %len24 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx23, i32 0, i32 1
  %18 = load i32, i32* %len24, align 4
  %19 = load i32, i32* %fd.addr, align 4
  %idxprom25 = sext i32 %19 to i64
  %arrayidx26 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom25
  %pos27 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx26, i32 0, i32 2
  %20 = load i32, i32* %pos27, align 8
  %sub = sub nsw i32 %18, %20
  store i32 %sub, i32* %rc, align 4
  br label %if.end28

if.else:                                          ; preds = %if.end13
  %21 = load i32, i32* %size.addr, align 4
  store i32 %21, i32* %rc, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then21
  %22 = load i8*, i8** %buf.addr, align 8
  %23 = load i32, i32* %fd.addr, align 4
  %idxprom29 = sext i32 %23 to i64
  %arrayidx30 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom29
  %buf31 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx30, i32 0, i32 3
  %24 = load i8*, i8** %buf31, align 8
  %25 = load i32, i32* %fd.addr, align 4
  %idxprom32 = sext i32 %25 to i64
  %arrayidx33 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom32
  %pos34 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx33, i32 0, i32 2
  %26 = load i32, i32* %pos34, align 8
  %idxprom35 = sext i32 %26 to i64
  %arrayidx36 = getelementptr inbounds i8, i8* %24, i64 %idxprom35
  %27 = load i32, i32* %rc, align 4
  %conv = sext i32 %27 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %22, i8* align 1 %arrayidx36, i64 %conv, i1 false)
  %28 = load i32, i32* %rc, align 4
  %29 = load i32, i32* %fd.addr, align 4
  %idxprom37 = sext i32 %29 to i64
  %arrayidx38 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom37
  %pos39 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx38, i32 0, i32 2
  %30 = load i32, i32* %pos39, align 8
  %add40 = add nsw i32 %30, %28
  store i32 %add40, i32* %pos39, align 8
  %31 = load i32, i32* @dbglvl, align 4
  %cmp41 = icmp slt i32 4, %31
  br i1 %cmp41, label %if.then43, label %if.end45

if.then43:                                        ; preds = %if.end28
  %32 = load i32, i32* %rc, align 4
  %call44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %32)
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end28
  %33 = load i32, i32* %rc, align 4
  store i32 %33, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end45, %if.end12
  %34 = load i32, i32* %retval, align 4
  ret i32 %34
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spec_fread(i8* %buf, i32 %size, i32 %num, i32 %fd) #0 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %num.addr = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 %num, i32* %num.addr, align 4
  store i32 %fd, i32* %fd.addr, align 4
  store i32 0, i32* %rc, align 4
  %0 = load i32, i32* @dbglvl, align 4
  %cmp = icmp slt i32 4, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %buf.addr, align 8
  %2 = load i32, i32* %size.addr, align 4
  %3 = load i32, i32* %num.addr, align 4
  %4 = load i32, i32* %fd.addr, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0), i8* %1, i32 %2, i32 %3, i32 %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %fd.addr, align 4
  %cmp1 = icmp sgt i32 %5, 3
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %7 = load i32, i32* %fd.addr, align 4
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0), i32 %7)
  call void @exit(i32 0) #8
  unreachable

if.end4:                                          ; preds = %if.end
  %8 = load i32, i32* %fd.addr, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom
  %pos = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx, i32 0, i32 2
  %9 = load i32, i32* %pos, align 8
  %10 = load i32, i32* %fd.addr, align 4
  %idxprom5 = sext i32 %10 to i64
  %arrayidx6 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom5
  %len = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx6, i32 0, i32 1
  %11 = load i32, i32* %len, align 4
  %cmp7 = icmp sge i32 %9, %11
  br i1 %cmp7, label %if.then8, label %if.end13

if.then8:                                         ; preds = %if.end4
  %12 = load i32, i32* @dbglvl, align 4
  %cmp9 = icmp slt i32 4, %12
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.then8
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.then8
  store i32 -1, i32* %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.end4
  %13 = load i32, i32* %fd.addr, align 4
  %idxprom14 = sext i32 %13 to i64
  %arrayidx15 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom14
  %pos16 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx15, i32 0, i32 2
  %14 = load i32, i32* %pos16, align 8
  %15 = load i32, i32* %size.addr, align 4
  %16 = load i32, i32* %num.addr, align 4
  %mul = mul nsw i32 %15, %16
  %add = add nsw i32 %14, %mul
  %17 = load i32, i32* %fd.addr, align 4
  %idxprom17 = sext i32 %17 to i64
  %arrayidx18 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom17
  %len19 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx18, i32 0, i32 1
  %18 = load i32, i32* %len19, align 4
  %cmp20 = icmp sge i32 %add, %18
  br i1 %cmp20, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.end13
  %19 = load i32, i32* %fd.addr, align 4
  %idxprom22 = sext i32 %19 to i64
  %arrayidx23 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom22
  %len24 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx23, i32 0, i32 1
  %20 = load i32, i32* %len24, align 4
  %21 = load i32, i32* %fd.addr, align 4
  %idxprom25 = sext i32 %21 to i64
  %arrayidx26 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom25
  %pos27 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx26, i32 0, i32 2
  %22 = load i32, i32* %pos27, align 8
  %sub = sub nsw i32 %20, %22
  %23 = load i32, i32* %size.addr, align 4
  %div = sdiv i32 %sub, %23
  store i32 %div, i32* %rc, align 4
  br label %if.end28

if.else:                                          ; preds = %if.end13
  %24 = load i32, i32* %num.addr, align 4
  store i32 %24, i32* %rc, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then21
  %25 = load i8*, i8** %buf.addr, align 8
  %26 = load i32, i32* %fd.addr, align 4
  %idxprom29 = sext i32 %26 to i64
  %arrayidx30 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom29
  %buf31 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx30, i32 0, i32 3
  %27 = load i8*, i8** %buf31, align 8
  %28 = load i32, i32* %fd.addr, align 4
  %idxprom32 = sext i32 %28 to i64
  %arrayidx33 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom32
  %pos34 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx33, i32 0, i32 2
  %29 = load i32, i32* %pos34, align 8
  %idxprom35 = sext i32 %29 to i64
  %arrayidx36 = getelementptr inbounds i8, i8* %27, i64 %idxprom35
  %30 = load i32, i32* %rc, align 4
  %conv = sext i32 %30 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %25, i8* align 1 %arrayidx36, i64 %conv, i1 false)
  %31 = load i32, i32* %rc, align 4
  %32 = load i32, i32* %size.addr, align 4
  %mul37 = mul nsw i32 %31, %32
  %33 = load i32, i32* %fd.addr, align 4
  %idxprom38 = sext i32 %33 to i64
  %arrayidx39 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom38
  %pos40 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx39, i32 0, i32 2
  %34 = load i32, i32* %pos40, align 8
  %add41 = add nsw i32 %34, %mul37
  store i32 %add41, i32* %pos40, align 8
  %35 = load i32, i32* @dbglvl, align 4
  %cmp42 = icmp slt i32 4, %35
  br i1 %cmp42, label %if.then44, label %if.end47

if.then44:                                        ; preds = %if.end28
  %36 = load i32, i32* %rc, align 4
  %37 = load i32, i32* %size.addr, align 4
  %mul45 = mul nsw i32 %36, %37
  %call46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %mul45)
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %if.end28
  %38 = load i32, i32* %rc, align 4
  store i32 %38, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end47, %if.end12
  %39 = load i32, i32* %retval, align 4
  ret i32 %39
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spec_getc(i32 %fd) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  store i32 0, i32* %rc, align 4
  %0 = load i32, i32* @dbglvl, align 4
  %cmp = icmp slt i32 4, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %fd.addr, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* %fd.addr, align 4
  %cmp1 = icmp sgt i32 %2, 3
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i32, i32* %fd.addr, align 4
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i32 %4)
  call void @exit(i32 0) #8
  unreachable

if.end4:                                          ; preds = %if.end
  %5 = load i32, i32* %fd.addr, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom
  %pos = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx, i32 0, i32 2
  %6 = load i32, i32* %pos, align 8
  %7 = load i32, i32* %fd.addr, align 4
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom5
  %len = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx6, i32 0, i32 1
  %8 = load i32, i32* %len, align 4
  %cmp7 = icmp sge i32 %6, %8
  br i1 %cmp7, label %if.then8, label %if.end13

if.then8:                                         ; preds = %if.end4
  %9 = load i32, i32* @dbglvl, align 4
  %cmp9 = icmp slt i32 4, %9
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.then8
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.then8
  store i32 -1, i32* %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.end4
  %10 = load i32, i32* %fd.addr, align 4
  %idxprom14 = sext i32 %10 to i64
  %arrayidx15 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom14
  %buf = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx15, i32 0, i32 3
  %11 = load i8*, i8** %buf, align 8
  %12 = load i32, i32* %fd.addr, align 4
  %idxprom16 = sext i32 %12 to i64
  %arrayidx17 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom16
  %pos18 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx17, i32 0, i32 2
  %13 = load i32, i32* %pos18, align 8
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %pos18, align 8
  %idxprom19 = sext i32 %13 to i64
  %arrayidx20 = getelementptr inbounds i8, i8* %11, i64 %idxprom19
  %14 = load i8, i8* %arrayidx20, align 1
  %conv = zext i8 %14 to i32
  store i32 %conv, i32* %rc, align 4
  %15 = load i32, i32* @dbglvl, align 4
  %cmp21 = icmp slt i32 4, %15
  br i1 %cmp21, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end13
  %16 = load i32, i32* %rc, align 4
  %call24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %16)
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end13
  %17 = load i32, i32* %rc, align 4
  store i32 %17, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end25, %if.end12
  %18 = load i32, i32* %retval, align 4
  ret i32 %18
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spec_ungetc(i8 zeroext %ch, i32 %fd) #0 {
entry:
  %ch.addr = alloca i8, align 1
  %fd.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  store i8 %ch, i8* %ch.addr, align 1
  store i32 %fd, i32* %fd.addr, align 4
  store i32 0, i32* %rc, align 4
  %0 = load i32, i32* @dbglvl, align 4
  %cmp = icmp slt i32 4, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %fd.addr, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0), i32 %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* %fd.addr, align 4
  %cmp1 = icmp sgt i32 %2, 3
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i32, i32* %fd.addr, align 4
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i32 %4)
  call void @exit(i32 0) #8
  unreachable

if.end4:                                          ; preds = %if.end
  %5 = load i32, i32* %fd.addr, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom
  %pos = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx, i32 0, i32 2
  %6 = load i32, i32* %pos, align 8
  %cmp5 = icmp sle i32 %6, 0
  br i1 %cmp5, label %if.then6, label %if.end11

if.then6:                                         ; preds = %if.end4
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %8 = load i32, i32* %fd.addr, align 4
  %idxprom7 = sext i32 %8 to i64
  %arrayidx8 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom7
  %pos9 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx8, i32 0, i32 2
  %9 = load i32, i32* %pos9, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i64 0, i64 0), i32 %9)
  call void @exit(i32 0) #8
  unreachable

if.end11:                                         ; preds = %if.end4
  %10 = load i32, i32* %fd.addr, align 4
  %idxprom12 = sext i32 %10 to i64
  %arrayidx13 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom12
  %buf = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx13, i32 0, i32 3
  %11 = load i8*, i8** %buf, align 8
  %12 = load i32, i32* %fd.addr, align 4
  %idxprom14 = sext i32 %12 to i64
  %arrayidx15 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom14
  %pos16 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx15, i32 0, i32 2
  %13 = load i32, i32* %pos16, align 8
  %dec = add nsw i32 %13, -1
  store i32 %dec, i32* %pos16, align 8
  %idxprom17 = sext i32 %dec to i64
  %arrayidx18 = getelementptr inbounds i8, i8* %11, i64 %idxprom17
  %14 = load i8, i8* %arrayidx18, align 1
  %conv = zext i8 %14 to i32
  %15 = load i8, i8* %ch.addr, align 1
  %conv19 = zext i8 %15 to i32
  %cmp20 = icmp ne i32 %conv, %conv19
  br i1 %cmp20, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end11
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.17, i64 0, i64 0))
  call void @exit(i32 0) #8
  unreachable

if.end24:                                         ; preds = %if.end11
  %17 = load i32, i32* @dbglvl, align 4
  %cmp25 = icmp slt i32 4, %17
  br i1 %cmp25, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end24
  %18 = load i32, i32* %rc, align 4
  %call28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %18)
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end24
  %19 = load i8, i8* %ch.addr, align 1
  %conv30 = zext i8 %19 to i32
  ret i32 %conv30
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spec_rewind(i32 %fd) #0 {
entry:
  %fd.addr = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  %0 = load i32, i32* %fd.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom
  %pos = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx, i32 0, i32 2
  store i32 0, i32* %pos, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spec_reset(i32 %fd) #0 {
entry:
  %fd.addr = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  %0 = load i32, i32* %fd.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom
  %buf = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx, i32 0, i32 3
  %1 = load i8*, i8** %buf, align 8
  %2 = load i32, i32* %fd.addr, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom1
  %len = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx2, i32 0, i32 1
  %3 = load i32, i32* %len, align 4
  %conv = sext i32 %3 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %1, i8 0, i64 %conv, i1 false)
  %4 = load i32, i32* %fd.addr, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom3
  %len5 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx4, i32 0, i32 1
  store i32 0, i32* %len5, align 4
  %5 = load i32, i32* %fd.addr, align 4
  %idxprom6 = sext i32 %5 to i64
  %arrayidx7 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom6
  %pos = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx7, i32 0, i32 2
  store i32 0, i32* %pos, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spec_write(i32 %fd, i8* %buf, i32 %size) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* @dbglvl, align 4
  %cmp = icmp slt i32 4, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %fd.addr, align 4
  %2 = load i8*, i8** %buf.addr, align 8
  %3 = load i32, i32* %size.addr, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i64 0, i64 0), i32 %1, i8* %2, i32 %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %fd.addr, align 4
  %cmp1 = icmp sgt i32 %4, 3
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = load i32, i32* %fd.addr, align 4
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.19, i64 0, i64 0), i32 %6)
  call void @exit(i32 0) #8
  unreachable

if.end4:                                          ; preds = %if.end
  %7 = load i32, i32* %fd.addr, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom
  %buf5 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx, i32 0, i32 3
  %8 = load i8*, i8** %buf5, align 8
  %9 = load i32, i32* %fd.addr, align 4
  %idxprom6 = sext i32 %9 to i64
  %arrayidx7 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom6
  %pos = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx7, i32 0, i32 2
  %10 = load i32, i32* %pos, align 8
  %idxprom8 = sext i32 %10 to i64
  %arrayidx9 = getelementptr inbounds i8, i8* %8, i64 %idxprom8
  %11 = load i8*, i8** %buf.addr, align 8
  %12 = load i32, i32* %size.addr, align 4
  %conv = sext i32 %12 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %arrayidx9, i8* align 1 %11, i64 %conv, i1 false)
  %13 = load i32, i32* %size.addr, align 4
  %14 = load i32, i32* %fd.addr, align 4
  %idxprom10 = sext i32 %14 to i64
  %arrayidx11 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom10
  %len = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx11, i32 0, i32 1
  %15 = load i32, i32* %len, align 4
  %add = add nsw i32 %15, %13
  store i32 %add, i32* %len, align 4
  %16 = load i32, i32* %size.addr, align 4
  %17 = load i32, i32* %fd.addr, align 4
  %idxprom12 = sext i32 %17 to i64
  %arrayidx13 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom12
  %pos14 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx13, i32 0, i32 2
  %18 = load i32, i32* %pos14, align 8
  %add15 = add nsw i32 %18, %16
  store i32 %add15, i32* %pos14, align 8
  %19 = load i32, i32* @dbglvl, align 4
  %cmp16 = icmp slt i32 4, %19
  br i1 %cmp16, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end4
  %20 = load i32, i32* %size.addr, align 4
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %20)
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end4
  %21 = load i32, i32* %size.addr, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spec_fwrite(i8* %buf, i32 %size, i32 %num, i32 %fd) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %num.addr = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 %num, i32* %num.addr, align 4
  store i32 %fd, i32* %fd.addr, align 4
  %0 = load i32, i32* @dbglvl, align 4
  %cmp = icmp slt i32 4, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %buf.addr, align 8
  %2 = load i32, i32* %size.addr, align 4
  %3 = load i32, i32* %num.addr, align 4
  %4 = load i32, i32* %fd.addr, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i64 0, i64 0), i8* %1, i32 %2, i32 %3, i32 %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %fd.addr, align 4
  %cmp1 = icmp sgt i32 %5, 3
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %7 = load i32, i32* %fd.addr, align 4
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.21, i64 0, i64 0), i32 %7)
  call void @exit(i32 0) #8
  unreachable

if.end4:                                          ; preds = %if.end
  %8 = load i32, i32* %fd.addr, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom
  %buf5 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx, i32 0, i32 3
  %9 = load i8*, i8** %buf5, align 8
  %10 = load i32, i32* %fd.addr, align 4
  %idxprom6 = sext i32 %10 to i64
  %arrayidx7 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom6
  %pos = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx7, i32 0, i32 2
  %11 = load i32, i32* %pos, align 8
  %idxprom8 = sext i32 %11 to i64
  %arrayidx9 = getelementptr inbounds i8, i8* %9, i64 %idxprom8
  %12 = load i8*, i8** %buf.addr, align 8
  %13 = load i32, i32* %size.addr, align 4
  %14 = load i32, i32* %num.addr, align 4
  %mul = mul nsw i32 %13, %14
  %conv = sext i32 %mul to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %arrayidx9, i8* align 1 %12, i64 %conv, i1 false)
  %15 = load i32, i32* %size.addr, align 4
  %16 = load i32, i32* %num.addr, align 4
  %mul10 = mul nsw i32 %15, %16
  %17 = load i32, i32* %fd.addr, align 4
  %idxprom11 = sext i32 %17 to i64
  %arrayidx12 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom11
  %len = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx12, i32 0, i32 1
  %18 = load i32, i32* %len, align 4
  %add = add nsw i32 %18, %mul10
  store i32 %add, i32* %len, align 4
  %19 = load i32, i32* %size.addr, align 4
  %20 = load i32, i32* %num.addr, align 4
  %mul13 = mul nsw i32 %19, %20
  %21 = load i32, i32* %fd.addr, align 4
  %idxprom14 = sext i32 %21 to i64
  %arrayidx15 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom14
  %pos16 = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx15, i32 0, i32 2
  %22 = load i32, i32* %pos16, align 8
  %add17 = add nsw i32 %22, %mul13
  store i32 %add17, i32* %pos16, align 8
  %23 = load i32, i32* @dbglvl, align 4
  %cmp18 = icmp slt i32 4, %23
  br i1 %cmp18, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end4
  %24 = load i32, i32* %num.addr, align 4
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %24)
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end4
  %25 = load i32, i32* %num.addr, align 4
  ret i32 %25
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spec_putc(i8 zeroext %ch, i32 %fd) #0 {
entry:
  %ch.addr = alloca i8, align 1
  %fd.addr = alloca i32, align 4
  store i8 %ch, i8* %ch.addr, align 1
  store i32 %fd, i32* %fd.addr, align 4
  %0 = load i32, i32* @dbglvl, align 4
  %cmp = icmp slt i32 4, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8, i8* %ch.addr, align 1
  %conv = zext i8 %1 to i32
  %2 = load i32, i32* %fd.addr, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i64 0, i64 0), i32 %conv, i32 %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %fd.addr, align 4
  %cmp1 = icmp sgt i32 %3, 3
  br i1 %cmp1, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = load i32, i32* %fd.addr, align 4
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.19, i64 0, i64 0), i32 %5)
  call void @exit(i32 0) #8
  unreachable

if.end5:                                          ; preds = %if.end
  %6 = load i8, i8* %ch.addr, align 1
  %7 = load i32, i32* %fd.addr, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom
  %buf = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx, i32 0, i32 3
  %8 = load i8*, i8** %buf, align 8
  %9 = load i32, i32* %fd.addr, align 4
  %idxprom6 = sext i32 %9 to i64
  %arrayidx7 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom6
  %pos = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx7, i32 0, i32 2
  %10 = load i32, i32* %pos, align 8
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %pos, align 8
  %idxprom8 = sext i32 %10 to i64
  %arrayidx9 = getelementptr inbounds i8, i8* %8, i64 %idxprom8
  store i8 %6, i8* %arrayidx9, align 1
  %11 = load i32, i32* %fd.addr, align 4
  %idxprom10 = sext i32 %11 to i64
  %arrayidx11 = getelementptr inbounds [3 x %struct.spec_fd_t], [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom10
  %len = getelementptr inbounds %struct.spec_fd_t, %struct.spec_fd_t* %arrayidx11, i32 0, i32 1
  %12 = load i32, i32* %len, align 4
  %inc12 = add nsw i32 %12, 1
  store i32 %inc12, i32* %len, align 4
  %13 = load i8, i8* %ch.addr, align 1
  %conv13 = zext i8 %13 to i32
  ret i32 %conv13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn writeonly }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 11.0.0"}
