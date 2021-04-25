; ModuleID = 'decompress.c'
source_filename = "decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.DState = type { %struct.bz_stream*, i32, i8, i32, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, [256 x i32], i32, [257 x i32], [257 x i32], i32*, i16*, i8*, i32, i32, i32, i32, i32, [256 x i8], [16 x i8], [256 x i8], [4096 x i8], [16 x i32], [18002 x i8], [18002 x i8], [6 x [258 x i8]], [6 x [258 x i32]], [6 x [258 x i32]], [6 x [258 x i32]], [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32* }
%struct.bz_stream = type { i8*, i32, i32, i32, i8*, i32, i32, i32, i8*, i8* (i8*, i32, i32)*, void (i8*, i8*)*, i8* }

@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [20 x i8] c"\0A    [%d: huff+mtf \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"rt+rld\00", align 1
@BZ2_rNums = external dso_local global [512 x i32], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BZ2_decompress(%struct.DState* %s) #0 {
entry:
  %s.addr = alloca %struct.DState*, align 8
  %uc = alloca i8, align 1
  %retVal = alloca i32, align 4
  %minLen = alloca i32, align 4
  %maxLen = alloca i32, align 4
  %strm = alloca %struct.bz_stream*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %t = alloca i32, align 4
  %alphaSize = alloca i32, align 4
  %nGroups = alloca i32, align 4
  %nSelectors = alloca i32, align 4
  %EOB = alloca i32, align 4
  %groupNo = alloca i32, align 4
  %groupPos = alloca i32, align 4
  %nextSym = alloca i32, align 4
  %nblockMAX = alloca i32, align 4
  %nblock = alloca i32, align 4
  %es = alloca i32, align 4
  %N = alloca i32, align 4
  %curr = alloca i32, align 4
  %zt = alloca i32, align 4
  %zn = alloca i32, align 4
  %zvec = alloca i32, align 4
  %zj = alloca i32, align 4
  %gSel = alloca i32, align 4
  %gMinlen = alloca i32, align 4
  %gLimit = alloca i32*, align 8
  %gBase = alloca i32*, align 8
  %gPerm = alloca i32*, align 8
  %v = alloca i32, align 4
  %v69 = alloca i32, align 4
  %v125 = alloca i32, align 4
  %v181 = alloca i32, align 4
  %v279 = alloca i32, align 4
  %v340 = alloca i32, align 4
  %v396 = alloca i32, align 4
  %v452 = alloca i32, align 4
  %v508 = alloca i32, align 4
  %v564 = alloca i32, align 4
  %v627 = alloca i32, align 4
  %v683 = alloca i32, align 4
  %v739 = alloca i32, align 4
  %v795 = alloca i32, align 4
  %v851 = alloca i32, align 4
  %v902 = alloca i32, align 4
  %v958 = alloca i32, align 4
  %v1014 = alloca i32, align 4
  %v1085 = alloca i32, align 4
  %v1168 = alloca i32, align 4
  %v1242 = alloca i32, align 4
  %v1299 = alloca i32, align 4
  %v1359 = alloca i32, align 4
  %pos = alloca [6 x i8], align 1
  %tmp = alloca i8, align 1
  %v1420 = alloca i8, align 1
  %v1470 = alloca i32, align 4
  %v1534 = alloca i32, align 4
  %v1591 = alloca i32, align 4
  %ii = alloca i32, align 4
  %jj = alloca i32, align 4
  %kk = alloca i32, align 4
  %v1789 = alloca i32, align 4
  %v1855 = alloca i32, align 4
  %v1982 = alloca i32, align 4
  %v2048 = alloca i32, align 4
  %ii2168 = alloca i32, align 4
  %jj2169 = alloca i32, align 4
  %kk2170 = alloca i32, align 4
  %pp = alloca i32, align 4
  %lno = alloca i32, align 4
  %off = alloca i32, align 4
  %nn = alloca i32, align 4
  %z = alloca i32, align 4
  %v2398 = alloca i32, align 4
  %v2464 = alloca i32, align 4
  %tmp2689 = alloca i32, align 4
  %v2928 = alloca i32, align 4
  %v2985 = alloca i32, align 4
  %v3042 = alloca i32, align 4
  %v3099 = alloca i32, align 4
  %v3156 = alloca i32, align 4
  %v3213 = alloca i32, align 4
  %v3270 = alloca i32, align 4
  %v3327 = alloca i32, align 4
  %v3384 = alloca i32, align 4
  store %struct.DState* %s, %struct.DState** %s.addr, align 8
  %0 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1 = getelementptr inbounds %struct.DState, %struct.DState* %0, i32 0, i32 0
  %1 = load %struct.bz_stream*, %struct.bz_stream** %strm1, align 8
  store %struct.bz_stream* %1, %struct.bz_stream** %strm, align 8
  %2 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state = getelementptr inbounds %struct.DState, %struct.DState* %2, i32 0, i32 1
  %3 = load i32, i32* %state, align 8
  %cmp = icmp eq i32 %3, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_i = getelementptr inbounds %struct.DState, %struct.DState* %4, i32 0, i32 40
  store i32 0, i32* %save_i, align 4
  %5 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_j = getelementptr inbounds %struct.DState, %struct.DState* %5, i32 0, i32 41
  store i32 0, i32* %save_j, align 8
  %6 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_t = getelementptr inbounds %struct.DState, %struct.DState* %6, i32 0, i32 42
  store i32 0, i32* %save_t, align 4
  %7 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_alphaSize = getelementptr inbounds %struct.DState, %struct.DState* %7, i32 0, i32 43
  store i32 0, i32* %save_alphaSize, align 8
  %8 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nGroups = getelementptr inbounds %struct.DState, %struct.DState* %8, i32 0, i32 44
  store i32 0, i32* %save_nGroups, align 4
  %9 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nSelectors = getelementptr inbounds %struct.DState, %struct.DState* %9, i32 0, i32 45
  store i32 0, i32* %save_nSelectors, align 8
  %10 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_EOB = getelementptr inbounds %struct.DState, %struct.DState* %10, i32 0, i32 46
  store i32 0, i32* %save_EOB, align 4
  %11 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_groupNo = getelementptr inbounds %struct.DState, %struct.DState* %11, i32 0, i32 47
  store i32 0, i32* %save_groupNo, align 8
  %12 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_groupPos = getelementptr inbounds %struct.DState, %struct.DState* %12, i32 0, i32 48
  store i32 0, i32* %save_groupPos, align 4
  %13 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nextSym = getelementptr inbounds %struct.DState, %struct.DState* %13, i32 0, i32 49
  store i32 0, i32* %save_nextSym, align 8
  %14 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nblockMAX = getelementptr inbounds %struct.DState, %struct.DState* %14, i32 0, i32 50
  store i32 0, i32* %save_nblockMAX, align 4
  %15 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nblock = getelementptr inbounds %struct.DState, %struct.DState* %15, i32 0, i32 51
  store i32 0, i32* %save_nblock, align 8
  %16 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_es = getelementptr inbounds %struct.DState, %struct.DState* %16, i32 0, i32 52
  store i32 0, i32* %save_es, align 4
  %17 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_N = getelementptr inbounds %struct.DState, %struct.DState* %17, i32 0, i32 53
  store i32 0, i32* %save_N, align 8
  %18 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_curr = getelementptr inbounds %struct.DState, %struct.DState* %18, i32 0, i32 54
  store i32 0, i32* %save_curr, align 4
  %19 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_zt = getelementptr inbounds %struct.DState, %struct.DState* %19, i32 0, i32 55
  store i32 0, i32* %save_zt, align 8
  %20 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_zn = getelementptr inbounds %struct.DState, %struct.DState* %20, i32 0, i32 56
  store i32 0, i32* %save_zn, align 4
  %21 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_zvec = getelementptr inbounds %struct.DState, %struct.DState* %21, i32 0, i32 57
  store i32 0, i32* %save_zvec, align 8
  %22 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_zj = getelementptr inbounds %struct.DState, %struct.DState* %22, i32 0, i32 58
  store i32 0, i32* %save_zj, align 4
  %23 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_gSel = getelementptr inbounds %struct.DState, %struct.DState* %23, i32 0, i32 59
  store i32 0, i32* %save_gSel, align 8
  %24 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_gMinlen = getelementptr inbounds %struct.DState, %struct.DState* %24, i32 0, i32 60
  store i32 0, i32* %save_gMinlen, align 4
  %25 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_gLimit = getelementptr inbounds %struct.DState, %struct.DState* %25, i32 0, i32 61
  store i32* null, i32** %save_gLimit, align 8
  %26 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_gBase = getelementptr inbounds %struct.DState, %struct.DState* %26, i32 0, i32 62
  store i32* null, i32** %save_gBase, align 8
  %27 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_gPerm = getelementptr inbounds %struct.DState, %struct.DState* %27, i32 0, i32 63
  store i32* null, i32** %save_gPerm, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %28 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_i2 = getelementptr inbounds %struct.DState, %struct.DState* %28, i32 0, i32 40
  %29 = load i32, i32* %save_i2, align 4
  store i32 %29, i32* %i, align 4
  %30 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_j3 = getelementptr inbounds %struct.DState, %struct.DState* %30, i32 0, i32 41
  %31 = load i32, i32* %save_j3, align 8
  store i32 %31, i32* %j, align 4
  %32 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_t4 = getelementptr inbounds %struct.DState, %struct.DState* %32, i32 0, i32 42
  %33 = load i32, i32* %save_t4, align 4
  store i32 %33, i32* %t, align 4
  %34 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_alphaSize5 = getelementptr inbounds %struct.DState, %struct.DState* %34, i32 0, i32 43
  %35 = load i32, i32* %save_alphaSize5, align 8
  store i32 %35, i32* %alphaSize, align 4
  %36 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nGroups6 = getelementptr inbounds %struct.DState, %struct.DState* %36, i32 0, i32 44
  %37 = load i32, i32* %save_nGroups6, align 4
  store i32 %37, i32* %nGroups, align 4
  %38 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nSelectors7 = getelementptr inbounds %struct.DState, %struct.DState* %38, i32 0, i32 45
  %39 = load i32, i32* %save_nSelectors7, align 8
  store i32 %39, i32* %nSelectors, align 4
  %40 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_EOB8 = getelementptr inbounds %struct.DState, %struct.DState* %40, i32 0, i32 46
  %41 = load i32, i32* %save_EOB8, align 4
  store i32 %41, i32* %EOB, align 4
  %42 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_groupNo9 = getelementptr inbounds %struct.DState, %struct.DState* %42, i32 0, i32 47
  %43 = load i32, i32* %save_groupNo9, align 8
  store i32 %43, i32* %groupNo, align 4
  %44 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_groupPos10 = getelementptr inbounds %struct.DState, %struct.DState* %44, i32 0, i32 48
  %45 = load i32, i32* %save_groupPos10, align 4
  store i32 %45, i32* %groupPos, align 4
  %46 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nextSym11 = getelementptr inbounds %struct.DState, %struct.DState* %46, i32 0, i32 49
  %47 = load i32, i32* %save_nextSym11, align 8
  store i32 %47, i32* %nextSym, align 4
  %48 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nblockMAX12 = getelementptr inbounds %struct.DState, %struct.DState* %48, i32 0, i32 50
  %49 = load i32, i32* %save_nblockMAX12, align 4
  store i32 %49, i32* %nblockMAX, align 4
  %50 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nblock13 = getelementptr inbounds %struct.DState, %struct.DState* %50, i32 0, i32 51
  %51 = load i32, i32* %save_nblock13, align 8
  store i32 %51, i32* %nblock, align 4
  %52 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_es14 = getelementptr inbounds %struct.DState, %struct.DState* %52, i32 0, i32 52
  %53 = load i32, i32* %save_es14, align 4
  store i32 %53, i32* %es, align 4
  %54 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_N15 = getelementptr inbounds %struct.DState, %struct.DState* %54, i32 0, i32 53
  %55 = load i32, i32* %save_N15, align 8
  store i32 %55, i32* %N, align 4
  %56 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_curr16 = getelementptr inbounds %struct.DState, %struct.DState* %56, i32 0, i32 54
  %57 = load i32, i32* %save_curr16, align 4
  store i32 %57, i32* %curr, align 4
  %58 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_zt17 = getelementptr inbounds %struct.DState, %struct.DState* %58, i32 0, i32 55
  %59 = load i32, i32* %save_zt17, align 8
  store i32 %59, i32* %zt, align 4
  %60 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_zn18 = getelementptr inbounds %struct.DState, %struct.DState* %60, i32 0, i32 56
  %61 = load i32, i32* %save_zn18, align 4
  store i32 %61, i32* %zn, align 4
  %62 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_zvec19 = getelementptr inbounds %struct.DState, %struct.DState* %62, i32 0, i32 57
  %63 = load i32, i32* %save_zvec19, align 8
  store i32 %63, i32* %zvec, align 4
  %64 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_zj20 = getelementptr inbounds %struct.DState, %struct.DState* %64, i32 0, i32 58
  %65 = load i32, i32* %save_zj20, align 4
  store i32 %65, i32* %zj, align 4
  %66 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_gSel21 = getelementptr inbounds %struct.DState, %struct.DState* %66, i32 0, i32 59
  %67 = load i32, i32* %save_gSel21, align 8
  store i32 %67, i32* %gSel, align 4
  %68 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_gMinlen22 = getelementptr inbounds %struct.DState, %struct.DState* %68, i32 0, i32 60
  %69 = load i32, i32* %save_gMinlen22, align 4
  store i32 %69, i32* %gMinlen, align 4
  %70 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_gLimit23 = getelementptr inbounds %struct.DState, %struct.DState* %70, i32 0, i32 61
  %71 = load i32*, i32** %save_gLimit23, align 8
  store i32* %71, i32** %gLimit, align 8
  %72 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_gBase24 = getelementptr inbounds %struct.DState, %struct.DState* %72, i32 0, i32 62
  %73 = load i32*, i32** %save_gBase24, align 8
  store i32* %73, i32** %gBase, align 8
  %74 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_gPerm25 = getelementptr inbounds %struct.DState, %struct.DState* %74, i32 0, i32 63
  %75 = load i32*, i32** %save_gPerm25, align 8
  store i32* %75, i32** %gPerm, align 8
  store i32 0, i32* %retVal, align 4
  %76 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state26 = getelementptr inbounds %struct.DState, %struct.DState* %76, i32 0, i32 1
  %77 = load i32, i32* %state26, align 8
  switch i32 %77, label %sw.default [
    i32 10, label %sw.bb
    i32 11, label %sw.bb62
    i32 12, label %sw.bb118
    i32 13, label %sw.bb174
    i32 14, label %sw.bb272
    i32 15, label %sw.bb333
    i32 16, label %sw.bb389
    i32 17, label %sw.bb445
    i32 18, label %sw.bb501
    i32 19, label %sw.bb557
    i32 20, label %sw.bb620
    i32 21, label %sw.bb676
    i32 22, label %sw.bb732
    i32 23, label %sw.bb788
    i32 24, label %sw.bb844
    i32 25, label %sw.bb895
    i32 26, label %sw.bb951
    i32 27, label %sw.bb1007
    i32 28, label %sw.bb1078
    i32 29, label %sw.bb1161
    i32 30, label %sw.bb1235
    i32 31, label %sw.bb1292
    i32 32, label %sw.bb1351
    i32 33, label %sw.bb1462
    i32 34, label %sw.bb1526
    i32 35, label %sw.bb1583
    i32 36, label %sw.bb1781
    i32 37, label %sw.bb1847
    i32 38, label %sw.bb1974
    i32 39, label %sw.bb2040
    i32 40, label %sw.bb2390
    i32 41, label %sw.bb2456
    i32 42, label %sw.bb2920
    i32 43, label %sw.bb2977
    i32 44, label %sw.bb3034
    i32 45, label %sw.bb3091
    i32 46, label %sw.bb3148
    i32 47, label %sw.bb3205
    i32 48, label %sw.bb3262
    i32 49, label %sw.bb3319
    i32 50, label %sw.bb3376
  ]

sw.bb:                                            ; preds = %if.end
  %78 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state27 = getelementptr inbounds %struct.DState, %struct.DState* %78, i32 0, i32 1
  store i32 10, i32* %state27, align 8
  br label %while.body

while.body:                                       ; preds = %sw.bb, %if.end56
  %79 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive = getelementptr inbounds %struct.DState, %struct.DState* %79, i32 0, i32 8
  %80 = load i32, i32* %bsLive, align 4
  %cmp28 = icmp sge i32 %80, 8
  br i1 %cmp28, label %if.then29, label %if.end33

if.then29:                                        ; preds = %while.body
  %81 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff = getelementptr inbounds %struct.DState, %struct.DState* %81, i32 0, i32 7
  %82 = load i32, i32* %bsBuff, align 8
  %83 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive30 = getelementptr inbounds %struct.DState, %struct.DState* %83, i32 0, i32 8
  %84 = load i32, i32* %bsLive30, align 4
  %sub = sub nsw i32 %84, 8
  %shr = lshr i32 %82, %sub
  %and = and i32 %shr, 255
  store i32 %and, i32* %v, align 4
  %85 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive31 = getelementptr inbounds %struct.DState, %struct.DState* %85, i32 0, i32 8
  %86 = load i32, i32* %bsLive31, align 4
  %sub32 = sub nsw i32 %86, 8
  store i32 %sub32, i32* %bsLive31, align 4
  %87 = load i32, i32* %v, align 4
  %conv = trunc i32 %87 to i8
  store i8 %conv, i8* %uc, align 1
  br label %while.end

if.end33:                                         ; preds = %while.body
  %88 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm34 = getelementptr inbounds %struct.DState, %struct.DState* %88, i32 0, i32 0
  %89 = load %struct.bz_stream*, %struct.bz_stream** %strm34, align 8
  %avail_in = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %89, i32 0, i32 1
  %90 = load i32, i32* %avail_in, align 8
  %cmp35 = icmp eq i32 %90, 0
  br i1 %cmp35, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.end33
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end38:                                         ; preds = %if.end33
  %91 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff39 = getelementptr inbounds %struct.DState, %struct.DState* %91, i32 0, i32 7
  %92 = load i32, i32* %bsBuff39, align 8
  %shl = shl i32 %92, 8
  %93 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm40 = getelementptr inbounds %struct.DState, %struct.DState* %93, i32 0, i32 0
  %94 = load %struct.bz_stream*, %struct.bz_stream** %strm40, align 8
  %next_in = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %94, i32 0, i32 0
  %95 = load i8*, i8** %next_in, align 8
  %96 = load i8, i8* %95, align 1
  %conv41 = zext i8 %96 to i32
  %or = or i32 %shl, %conv41
  %97 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff42 = getelementptr inbounds %struct.DState, %struct.DState* %97, i32 0, i32 7
  store i32 %or, i32* %bsBuff42, align 8
  %98 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive43 = getelementptr inbounds %struct.DState, %struct.DState* %98, i32 0, i32 8
  %99 = load i32, i32* %bsLive43, align 4
  %add = add nsw i32 %99, 8
  store i32 %add, i32* %bsLive43, align 4
  %100 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm44 = getelementptr inbounds %struct.DState, %struct.DState* %100, i32 0, i32 0
  %101 = load %struct.bz_stream*, %struct.bz_stream** %strm44, align 8
  %next_in45 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %101, i32 0, i32 0
  %102 = load i8*, i8** %next_in45, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %incdec.ptr, i8** %next_in45, align 8
  %103 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm46 = getelementptr inbounds %struct.DState, %struct.DState* %103, i32 0, i32 0
  %104 = load %struct.bz_stream*, %struct.bz_stream** %strm46, align 8
  %avail_in47 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %104, i32 0, i32 1
  %105 = load i32, i32* %avail_in47, align 8
  %dec = add i32 %105, -1
  store i32 %dec, i32* %avail_in47, align 8
  %106 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm48 = getelementptr inbounds %struct.DState, %struct.DState* %106, i32 0, i32 0
  %107 = load %struct.bz_stream*, %struct.bz_stream** %strm48, align 8
  %total_in_lo32 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %107, i32 0, i32 2
  %108 = load i32, i32* %total_in_lo32, align 4
  %inc = add i32 %108, 1
  store i32 %inc, i32* %total_in_lo32, align 4
  %109 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm49 = getelementptr inbounds %struct.DState, %struct.DState* %109, i32 0, i32 0
  %110 = load %struct.bz_stream*, %struct.bz_stream** %strm49, align 8
  %total_in_lo3250 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %110, i32 0, i32 2
  %111 = load i32, i32* %total_in_lo3250, align 4
  %cmp51 = icmp eq i32 %111, 0
  br i1 %cmp51, label %if.then53, label %if.end56

if.then53:                                        ; preds = %if.end38
  %112 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm54 = getelementptr inbounds %struct.DState, %struct.DState* %112, i32 0, i32 0
  %113 = load %struct.bz_stream*, %struct.bz_stream** %strm54, align 8
  %total_in_hi32 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %113, i32 0, i32 3
  %114 = load i32, i32* %total_in_hi32, align 8
  %inc55 = add i32 %114, 1
  store i32 %inc55, i32* %total_in_hi32, align 8
  br label %if.end56

if.end56:                                         ; preds = %if.then53, %if.end38
  br label %while.body

while.end:                                        ; preds = %if.then29
  %115 = load i8, i8* %uc, align 1
  %conv57 = zext i8 %115 to i32
  %cmp58 = icmp ne i32 %conv57, 66
  br i1 %cmp58, label %if.then60, label %if.end61

if.then60:                                        ; preds = %while.end
  store i32 -5, i32* %retVal, align 4
  br label %save_state_and_return

if.end61:                                         ; preds = %while.end
  br label %sw.bb62

sw.bb62:                                          ; preds = %if.end, %if.end61
  %116 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state63 = getelementptr inbounds %struct.DState, %struct.DState* %116, i32 0, i32 1
  store i32 11, i32* %state63, align 8
  br label %while.body64

while.body64:                                     ; preds = %sw.bb62, %if.end111
  %117 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive65 = getelementptr inbounds %struct.DState, %struct.DState* %117, i32 0, i32 8
  %118 = load i32, i32* %bsLive65, align 4
  %cmp66 = icmp sge i32 %118, 8
  br i1 %cmp66, label %if.then68, label %if.end78

if.then68:                                        ; preds = %while.body64
  %119 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff70 = getelementptr inbounds %struct.DState, %struct.DState* %119, i32 0, i32 7
  %120 = load i32, i32* %bsBuff70, align 8
  %121 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive71 = getelementptr inbounds %struct.DState, %struct.DState* %121, i32 0, i32 8
  %122 = load i32, i32* %bsLive71, align 4
  %sub72 = sub nsw i32 %122, 8
  %shr73 = lshr i32 %120, %sub72
  %and74 = and i32 %shr73, 255
  store i32 %and74, i32* %v69, align 4
  %123 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive75 = getelementptr inbounds %struct.DState, %struct.DState* %123, i32 0, i32 8
  %124 = load i32, i32* %bsLive75, align 4
  %sub76 = sub nsw i32 %124, 8
  store i32 %sub76, i32* %bsLive75, align 4
  %125 = load i32, i32* %v69, align 4
  %conv77 = trunc i32 %125 to i8
  store i8 %conv77, i8* %uc, align 1
  br label %while.end112

if.end78:                                         ; preds = %while.body64
  %126 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm79 = getelementptr inbounds %struct.DState, %struct.DState* %126, i32 0, i32 0
  %127 = load %struct.bz_stream*, %struct.bz_stream** %strm79, align 8
  %avail_in80 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %127, i32 0, i32 1
  %128 = load i32, i32* %avail_in80, align 8
  %cmp81 = icmp eq i32 %128, 0
  br i1 %cmp81, label %if.then83, label %if.end84

if.then83:                                        ; preds = %if.end78
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end84:                                         ; preds = %if.end78
  %129 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff85 = getelementptr inbounds %struct.DState, %struct.DState* %129, i32 0, i32 7
  %130 = load i32, i32* %bsBuff85, align 8
  %shl86 = shl i32 %130, 8
  %131 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm87 = getelementptr inbounds %struct.DState, %struct.DState* %131, i32 0, i32 0
  %132 = load %struct.bz_stream*, %struct.bz_stream** %strm87, align 8
  %next_in88 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %132, i32 0, i32 0
  %133 = load i8*, i8** %next_in88, align 8
  %134 = load i8, i8* %133, align 1
  %conv89 = zext i8 %134 to i32
  %or90 = or i32 %shl86, %conv89
  %135 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff91 = getelementptr inbounds %struct.DState, %struct.DState* %135, i32 0, i32 7
  store i32 %or90, i32* %bsBuff91, align 8
  %136 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive92 = getelementptr inbounds %struct.DState, %struct.DState* %136, i32 0, i32 8
  %137 = load i32, i32* %bsLive92, align 4
  %add93 = add nsw i32 %137, 8
  store i32 %add93, i32* %bsLive92, align 4
  %138 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm94 = getelementptr inbounds %struct.DState, %struct.DState* %138, i32 0, i32 0
  %139 = load %struct.bz_stream*, %struct.bz_stream** %strm94, align 8
  %next_in95 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %139, i32 0, i32 0
  %140 = load i8*, i8** %next_in95, align 8
  %incdec.ptr96 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %incdec.ptr96, i8** %next_in95, align 8
  %141 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm97 = getelementptr inbounds %struct.DState, %struct.DState* %141, i32 0, i32 0
  %142 = load %struct.bz_stream*, %struct.bz_stream** %strm97, align 8
  %avail_in98 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %142, i32 0, i32 1
  %143 = load i32, i32* %avail_in98, align 8
  %dec99 = add i32 %143, -1
  store i32 %dec99, i32* %avail_in98, align 8
  %144 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm100 = getelementptr inbounds %struct.DState, %struct.DState* %144, i32 0, i32 0
  %145 = load %struct.bz_stream*, %struct.bz_stream** %strm100, align 8
  %total_in_lo32101 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %145, i32 0, i32 2
  %146 = load i32, i32* %total_in_lo32101, align 4
  %inc102 = add i32 %146, 1
  store i32 %inc102, i32* %total_in_lo32101, align 4
  %147 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm103 = getelementptr inbounds %struct.DState, %struct.DState* %147, i32 0, i32 0
  %148 = load %struct.bz_stream*, %struct.bz_stream** %strm103, align 8
  %total_in_lo32104 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %148, i32 0, i32 2
  %149 = load i32, i32* %total_in_lo32104, align 4
  %cmp105 = icmp eq i32 %149, 0
  br i1 %cmp105, label %if.then107, label %if.end111

if.then107:                                       ; preds = %if.end84
  %150 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm108 = getelementptr inbounds %struct.DState, %struct.DState* %150, i32 0, i32 0
  %151 = load %struct.bz_stream*, %struct.bz_stream** %strm108, align 8
  %total_in_hi32109 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %151, i32 0, i32 3
  %152 = load i32, i32* %total_in_hi32109, align 8
  %inc110 = add i32 %152, 1
  store i32 %inc110, i32* %total_in_hi32109, align 8
  br label %if.end111

if.end111:                                        ; preds = %if.then107, %if.end84
  br label %while.body64

while.end112:                                     ; preds = %if.then68
  %153 = load i8, i8* %uc, align 1
  %conv113 = zext i8 %153 to i32
  %cmp114 = icmp ne i32 %conv113, 90
  br i1 %cmp114, label %if.then116, label %if.end117

if.then116:                                       ; preds = %while.end112
  store i32 -5, i32* %retVal, align 4
  br label %save_state_and_return

if.end117:                                        ; preds = %while.end112
  br label %sw.bb118

sw.bb118:                                         ; preds = %if.end, %if.end117
  %154 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state119 = getelementptr inbounds %struct.DState, %struct.DState* %154, i32 0, i32 1
  store i32 12, i32* %state119, align 8
  br label %while.body120

while.body120:                                    ; preds = %sw.bb118, %if.end167
  %155 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive121 = getelementptr inbounds %struct.DState, %struct.DState* %155, i32 0, i32 8
  %156 = load i32, i32* %bsLive121, align 4
  %cmp122 = icmp sge i32 %156, 8
  br i1 %cmp122, label %if.then124, label %if.end134

if.then124:                                       ; preds = %while.body120
  %157 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff126 = getelementptr inbounds %struct.DState, %struct.DState* %157, i32 0, i32 7
  %158 = load i32, i32* %bsBuff126, align 8
  %159 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive127 = getelementptr inbounds %struct.DState, %struct.DState* %159, i32 0, i32 8
  %160 = load i32, i32* %bsLive127, align 4
  %sub128 = sub nsw i32 %160, 8
  %shr129 = lshr i32 %158, %sub128
  %and130 = and i32 %shr129, 255
  store i32 %and130, i32* %v125, align 4
  %161 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive131 = getelementptr inbounds %struct.DState, %struct.DState* %161, i32 0, i32 8
  %162 = load i32, i32* %bsLive131, align 4
  %sub132 = sub nsw i32 %162, 8
  store i32 %sub132, i32* %bsLive131, align 4
  %163 = load i32, i32* %v125, align 4
  %conv133 = trunc i32 %163 to i8
  store i8 %conv133, i8* %uc, align 1
  br label %while.end168

if.end134:                                        ; preds = %while.body120
  %164 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm135 = getelementptr inbounds %struct.DState, %struct.DState* %164, i32 0, i32 0
  %165 = load %struct.bz_stream*, %struct.bz_stream** %strm135, align 8
  %avail_in136 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %165, i32 0, i32 1
  %166 = load i32, i32* %avail_in136, align 8
  %cmp137 = icmp eq i32 %166, 0
  br i1 %cmp137, label %if.then139, label %if.end140

if.then139:                                       ; preds = %if.end134
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end140:                                        ; preds = %if.end134
  %167 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff141 = getelementptr inbounds %struct.DState, %struct.DState* %167, i32 0, i32 7
  %168 = load i32, i32* %bsBuff141, align 8
  %shl142 = shl i32 %168, 8
  %169 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm143 = getelementptr inbounds %struct.DState, %struct.DState* %169, i32 0, i32 0
  %170 = load %struct.bz_stream*, %struct.bz_stream** %strm143, align 8
  %next_in144 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %170, i32 0, i32 0
  %171 = load i8*, i8** %next_in144, align 8
  %172 = load i8, i8* %171, align 1
  %conv145 = zext i8 %172 to i32
  %or146 = or i32 %shl142, %conv145
  %173 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff147 = getelementptr inbounds %struct.DState, %struct.DState* %173, i32 0, i32 7
  store i32 %or146, i32* %bsBuff147, align 8
  %174 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive148 = getelementptr inbounds %struct.DState, %struct.DState* %174, i32 0, i32 8
  %175 = load i32, i32* %bsLive148, align 4
  %add149 = add nsw i32 %175, 8
  store i32 %add149, i32* %bsLive148, align 4
  %176 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm150 = getelementptr inbounds %struct.DState, %struct.DState* %176, i32 0, i32 0
  %177 = load %struct.bz_stream*, %struct.bz_stream** %strm150, align 8
  %next_in151 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %177, i32 0, i32 0
  %178 = load i8*, i8** %next_in151, align 8
  %incdec.ptr152 = getelementptr inbounds i8, i8* %178, i32 1
  store i8* %incdec.ptr152, i8** %next_in151, align 8
  %179 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm153 = getelementptr inbounds %struct.DState, %struct.DState* %179, i32 0, i32 0
  %180 = load %struct.bz_stream*, %struct.bz_stream** %strm153, align 8
  %avail_in154 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %180, i32 0, i32 1
  %181 = load i32, i32* %avail_in154, align 8
  %dec155 = add i32 %181, -1
  store i32 %dec155, i32* %avail_in154, align 8
  %182 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm156 = getelementptr inbounds %struct.DState, %struct.DState* %182, i32 0, i32 0
  %183 = load %struct.bz_stream*, %struct.bz_stream** %strm156, align 8
  %total_in_lo32157 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %183, i32 0, i32 2
  %184 = load i32, i32* %total_in_lo32157, align 4
  %inc158 = add i32 %184, 1
  store i32 %inc158, i32* %total_in_lo32157, align 4
  %185 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm159 = getelementptr inbounds %struct.DState, %struct.DState* %185, i32 0, i32 0
  %186 = load %struct.bz_stream*, %struct.bz_stream** %strm159, align 8
  %total_in_lo32160 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %186, i32 0, i32 2
  %187 = load i32, i32* %total_in_lo32160, align 4
  %cmp161 = icmp eq i32 %187, 0
  br i1 %cmp161, label %if.then163, label %if.end167

if.then163:                                       ; preds = %if.end140
  %188 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm164 = getelementptr inbounds %struct.DState, %struct.DState* %188, i32 0, i32 0
  %189 = load %struct.bz_stream*, %struct.bz_stream** %strm164, align 8
  %total_in_hi32165 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %189, i32 0, i32 3
  %190 = load i32, i32* %total_in_hi32165, align 8
  %inc166 = add i32 %190, 1
  store i32 %inc166, i32* %total_in_hi32165, align 8
  br label %if.end167

if.end167:                                        ; preds = %if.then163, %if.end140
  br label %while.body120

while.end168:                                     ; preds = %if.then124
  %191 = load i8, i8* %uc, align 1
  %conv169 = zext i8 %191 to i32
  %cmp170 = icmp ne i32 %conv169, 104
  br i1 %cmp170, label %if.then172, label %if.end173

if.then172:                                       ; preds = %while.end168
  store i32 -5, i32* %retVal, align 4
  br label %save_state_and_return

if.end173:                                        ; preds = %while.end168
  br label %sw.bb174

sw.bb174:                                         ; preds = %if.end, %if.end173
  %192 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state175 = getelementptr inbounds %struct.DState, %struct.DState* %192, i32 0, i32 1
  store i32 13, i32* %state175, align 8
  br label %while.body176

while.body176:                                    ; preds = %sw.bb174, %if.end222
  %193 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive177 = getelementptr inbounds %struct.DState, %struct.DState* %193, i32 0, i32 8
  %194 = load i32, i32* %bsLive177, align 4
  %cmp178 = icmp sge i32 %194, 8
  br i1 %cmp178, label %if.then180, label %if.end189

if.then180:                                       ; preds = %while.body176
  %195 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff182 = getelementptr inbounds %struct.DState, %struct.DState* %195, i32 0, i32 7
  %196 = load i32, i32* %bsBuff182, align 8
  %197 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive183 = getelementptr inbounds %struct.DState, %struct.DState* %197, i32 0, i32 8
  %198 = load i32, i32* %bsLive183, align 4
  %sub184 = sub nsw i32 %198, 8
  %shr185 = lshr i32 %196, %sub184
  %and186 = and i32 %shr185, 255
  store i32 %and186, i32* %v181, align 4
  %199 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive187 = getelementptr inbounds %struct.DState, %struct.DState* %199, i32 0, i32 8
  %200 = load i32, i32* %bsLive187, align 4
  %sub188 = sub nsw i32 %200, 8
  store i32 %sub188, i32* %bsLive187, align 4
  %201 = load i32, i32* %v181, align 4
  %202 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %blockSize100k = getelementptr inbounds %struct.DState, %struct.DState* %202, i32 0, i32 9
  store i32 %201, i32* %blockSize100k, align 8
  br label %while.end223

if.end189:                                        ; preds = %while.body176
  %203 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm190 = getelementptr inbounds %struct.DState, %struct.DState* %203, i32 0, i32 0
  %204 = load %struct.bz_stream*, %struct.bz_stream** %strm190, align 8
  %avail_in191 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %204, i32 0, i32 1
  %205 = load i32, i32* %avail_in191, align 8
  %cmp192 = icmp eq i32 %205, 0
  br i1 %cmp192, label %if.then194, label %if.end195

if.then194:                                       ; preds = %if.end189
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end195:                                        ; preds = %if.end189
  %206 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff196 = getelementptr inbounds %struct.DState, %struct.DState* %206, i32 0, i32 7
  %207 = load i32, i32* %bsBuff196, align 8
  %shl197 = shl i32 %207, 8
  %208 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm198 = getelementptr inbounds %struct.DState, %struct.DState* %208, i32 0, i32 0
  %209 = load %struct.bz_stream*, %struct.bz_stream** %strm198, align 8
  %next_in199 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %209, i32 0, i32 0
  %210 = load i8*, i8** %next_in199, align 8
  %211 = load i8, i8* %210, align 1
  %conv200 = zext i8 %211 to i32
  %or201 = or i32 %shl197, %conv200
  %212 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff202 = getelementptr inbounds %struct.DState, %struct.DState* %212, i32 0, i32 7
  store i32 %or201, i32* %bsBuff202, align 8
  %213 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive203 = getelementptr inbounds %struct.DState, %struct.DState* %213, i32 0, i32 8
  %214 = load i32, i32* %bsLive203, align 4
  %add204 = add nsw i32 %214, 8
  store i32 %add204, i32* %bsLive203, align 4
  %215 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm205 = getelementptr inbounds %struct.DState, %struct.DState* %215, i32 0, i32 0
  %216 = load %struct.bz_stream*, %struct.bz_stream** %strm205, align 8
  %next_in206 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %216, i32 0, i32 0
  %217 = load i8*, i8** %next_in206, align 8
  %incdec.ptr207 = getelementptr inbounds i8, i8* %217, i32 1
  store i8* %incdec.ptr207, i8** %next_in206, align 8
  %218 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm208 = getelementptr inbounds %struct.DState, %struct.DState* %218, i32 0, i32 0
  %219 = load %struct.bz_stream*, %struct.bz_stream** %strm208, align 8
  %avail_in209 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %219, i32 0, i32 1
  %220 = load i32, i32* %avail_in209, align 8
  %dec210 = add i32 %220, -1
  store i32 %dec210, i32* %avail_in209, align 8
  %221 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm211 = getelementptr inbounds %struct.DState, %struct.DState* %221, i32 0, i32 0
  %222 = load %struct.bz_stream*, %struct.bz_stream** %strm211, align 8
  %total_in_lo32212 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %222, i32 0, i32 2
  %223 = load i32, i32* %total_in_lo32212, align 4
  %inc213 = add i32 %223, 1
  store i32 %inc213, i32* %total_in_lo32212, align 4
  %224 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm214 = getelementptr inbounds %struct.DState, %struct.DState* %224, i32 0, i32 0
  %225 = load %struct.bz_stream*, %struct.bz_stream** %strm214, align 8
  %total_in_lo32215 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %225, i32 0, i32 2
  %226 = load i32, i32* %total_in_lo32215, align 4
  %cmp216 = icmp eq i32 %226, 0
  br i1 %cmp216, label %if.then218, label %if.end222

if.then218:                                       ; preds = %if.end195
  %227 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm219 = getelementptr inbounds %struct.DState, %struct.DState* %227, i32 0, i32 0
  %228 = load %struct.bz_stream*, %struct.bz_stream** %strm219, align 8
  %total_in_hi32220 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %228, i32 0, i32 3
  %229 = load i32, i32* %total_in_hi32220, align 8
  %inc221 = add i32 %229, 1
  store i32 %inc221, i32* %total_in_hi32220, align 8
  br label %if.end222

if.end222:                                        ; preds = %if.then218, %if.end195
  br label %while.body176

while.end223:                                     ; preds = %if.then180
  %230 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %blockSize100k224 = getelementptr inbounds %struct.DState, %struct.DState* %230, i32 0, i32 9
  %231 = load i32, i32* %blockSize100k224, align 8
  %cmp225 = icmp slt i32 %231, 49
  br i1 %cmp225, label %if.then230, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end223
  %232 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %blockSize100k227 = getelementptr inbounds %struct.DState, %struct.DState* %232, i32 0, i32 9
  %233 = load i32, i32* %blockSize100k227, align 8
  %cmp228 = icmp sgt i32 %233, 57
  br i1 %cmp228, label %if.then230, label %if.end231

if.then230:                                       ; preds = %lor.lhs.false, %while.end223
  store i32 -5, i32* %retVal, align 4
  br label %save_state_and_return

if.end231:                                        ; preds = %lor.lhs.false
  %234 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %blockSize100k232 = getelementptr inbounds %struct.DState, %struct.DState* %234, i32 0, i32 9
  %235 = load i32, i32* %blockSize100k232, align 8
  %sub233 = sub nsw i32 %235, 48
  store i32 %sub233, i32* %blockSize100k232, align 8
  %236 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %smallDecompress = getelementptr inbounds %struct.DState, %struct.DState* %236, i32 0, i32 10
  %237 = load i8, i8* %smallDecompress, align 4
  %tobool = icmp ne i8 %237, 0
  br i1 %tobool, label %if.then234, label %if.else

if.then234:                                       ; preds = %if.end231
  %238 = load %struct.bz_stream*, %struct.bz_stream** %strm, align 8
  %bzalloc = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %238, i32 0, i32 9
  %239 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** %bzalloc, align 8
  %240 = load %struct.bz_stream*, %struct.bz_stream** %strm, align 8
  %opaque = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %240, i32 0, i32 11
  %241 = load i8*, i8** %opaque, align 8
  %242 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %blockSize100k235 = getelementptr inbounds %struct.DState, %struct.DState* %242, i32 0, i32 9
  %243 = load i32, i32* %blockSize100k235, align 8
  %mul = mul nsw i32 %243, 100000
  %conv236 = sext i32 %mul to i64
  %mul237 = mul i64 %conv236, 2
  %conv238 = trunc i64 %mul237 to i32
  %call = call i8* %239(i8* %241, i32 %conv238, i32 1)
  %244 = bitcast i8* %call to i16*
  %245 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll16 = getelementptr inbounds %struct.DState, %struct.DState* %245, i32 0, i32 21
  store i16* %244, i16** %ll16, align 8
  %246 = load %struct.bz_stream*, %struct.bz_stream** %strm, align 8
  %bzalloc239 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %246, i32 0, i32 9
  %247 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** %bzalloc239, align 8
  %248 = load %struct.bz_stream*, %struct.bz_stream** %strm, align 8
  %opaque240 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %248, i32 0, i32 11
  %249 = load i8*, i8** %opaque240, align 8
  %250 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %blockSize100k241 = getelementptr inbounds %struct.DState, %struct.DState* %250, i32 0, i32 9
  %251 = load i32, i32* %blockSize100k241, align 8
  %mul242 = mul nsw i32 %251, 100000
  %add243 = add nsw i32 1, %mul242
  %shr244 = ashr i32 %add243, 1
  %conv245 = sext i32 %shr244 to i64
  %mul246 = mul i64 %conv245, 1
  %conv247 = trunc i64 %mul246 to i32
  %call248 = call i8* %247(i8* %249, i32 %conv247, i32 1)
  %252 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll4 = getelementptr inbounds %struct.DState, %struct.DState* %252, i32 0, i32 22
  store i8* %call248, i8** %ll4, align 8
  %253 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll16249 = getelementptr inbounds %struct.DState, %struct.DState* %253, i32 0, i32 21
  %254 = load i16*, i16** %ll16249, align 8
  %cmp250 = icmp eq i16* %254, null
  br i1 %cmp250, label %if.then256, label %lor.lhs.false252

lor.lhs.false252:                                 ; preds = %if.then234
  %255 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll4253 = getelementptr inbounds %struct.DState, %struct.DState* %255, i32 0, i32 22
  %256 = load i8*, i8** %ll4253, align 8
  %cmp254 = icmp eq i8* %256, null
  br i1 %cmp254, label %if.then256, label %if.end257

if.then256:                                       ; preds = %lor.lhs.false252, %if.then234
  store i32 -3, i32* %retVal, align 4
  br label %save_state_and_return

if.end257:                                        ; preds = %lor.lhs.false252
  br label %if.end271

if.else:                                          ; preds = %if.end231
  %257 = load %struct.bz_stream*, %struct.bz_stream** %strm, align 8
  %bzalloc258 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %257, i32 0, i32 9
  %258 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** %bzalloc258, align 8
  %259 = load %struct.bz_stream*, %struct.bz_stream** %strm, align 8
  %opaque259 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %259, i32 0, i32 11
  %260 = load i8*, i8** %opaque259, align 8
  %261 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %blockSize100k260 = getelementptr inbounds %struct.DState, %struct.DState* %261, i32 0, i32 9
  %262 = load i32, i32* %blockSize100k260, align 8
  %mul261 = mul nsw i32 %262, 100000
  %conv262 = sext i32 %mul261 to i64
  %mul263 = mul i64 %conv262, 4
  %conv264 = trunc i64 %mul263 to i32
  %call265 = call i8* %258(i8* %260, i32 %conv264, i32 1)
  %263 = bitcast i8* %call265 to i32*
  %264 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tt = getelementptr inbounds %struct.DState, %struct.DState* %264, i32 0, i32 20
  store i32* %263, i32** %tt, align 8
  %265 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tt266 = getelementptr inbounds %struct.DState, %struct.DState* %265, i32 0, i32 20
  %266 = load i32*, i32** %tt266, align 8
  %cmp267 = icmp eq i32* %266, null
  br i1 %cmp267, label %if.then269, label %if.end270

if.then269:                                       ; preds = %if.else
  store i32 -3, i32* %retVal, align 4
  br label %save_state_and_return

if.end270:                                        ; preds = %if.else
  br label %if.end271

if.end271:                                        ; preds = %if.end270, %if.end257
  br label %sw.bb272

sw.bb272:                                         ; preds = %if.end, %if.end271
  %267 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state273 = getelementptr inbounds %struct.DState, %struct.DState* %267, i32 0, i32 1
  store i32 14, i32* %state273, align 8
  br label %while.body274

while.body274:                                    ; preds = %sw.bb272, %if.end321
  %268 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive275 = getelementptr inbounds %struct.DState, %struct.DState* %268, i32 0, i32 8
  %269 = load i32, i32* %bsLive275, align 4
  %cmp276 = icmp sge i32 %269, 8
  br i1 %cmp276, label %if.then278, label %if.end288

if.then278:                                       ; preds = %while.body274
  %270 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff280 = getelementptr inbounds %struct.DState, %struct.DState* %270, i32 0, i32 7
  %271 = load i32, i32* %bsBuff280, align 8
  %272 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive281 = getelementptr inbounds %struct.DState, %struct.DState* %272, i32 0, i32 8
  %273 = load i32, i32* %bsLive281, align 4
  %sub282 = sub nsw i32 %273, 8
  %shr283 = lshr i32 %271, %sub282
  %and284 = and i32 %shr283, 255
  store i32 %and284, i32* %v279, align 4
  %274 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive285 = getelementptr inbounds %struct.DState, %struct.DState* %274, i32 0, i32 8
  %275 = load i32, i32* %bsLive285, align 4
  %sub286 = sub nsw i32 %275, 8
  store i32 %sub286, i32* %bsLive285, align 4
  %276 = load i32, i32* %v279, align 4
  %conv287 = trunc i32 %276 to i8
  store i8 %conv287, i8* %uc, align 1
  br label %while.end322

if.end288:                                        ; preds = %while.body274
  %277 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm289 = getelementptr inbounds %struct.DState, %struct.DState* %277, i32 0, i32 0
  %278 = load %struct.bz_stream*, %struct.bz_stream** %strm289, align 8
  %avail_in290 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %278, i32 0, i32 1
  %279 = load i32, i32* %avail_in290, align 8
  %cmp291 = icmp eq i32 %279, 0
  br i1 %cmp291, label %if.then293, label %if.end294

if.then293:                                       ; preds = %if.end288
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end294:                                        ; preds = %if.end288
  %280 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff295 = getelementptr inbounds %struct.DState, %struct.DState* %280, i32 0, i32 7
  %281 = load i32, i32* %bsBuff295, align 8
  %shl296 = shl i32 %281, 8
  %282 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm297 = getelementptr inbounds %struct.DState, %struct.DState* %282, i32 0, i32 0
  %283 = load %struct.bz_stream*, %struct.bz_stream** %strm297, align 8
  %next_in298 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %283, i32 0, i32 0
  %284 = load i8*, i8** %next_in298, align 8
  %285 = load i8, i8* %284, align 1
  %conv299 = zext i8 %285 to i32
  %or300 = or i32 %shl296, %conv299
  %286 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff301 = getelementptr inbounds %struct.DState, %struct.DState* %286, i32 0, i32 7
  store i32 %or300, i32* %bsBuff301, align 8
  %287 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive302 = getelementptr inbounds %struct.DState, %struct.DState* %287, i32 0, i32 8
  %288 = load i32, i32* %bsLive302, align 4
  %add303 = add nsw i32 %288, 8
  store i32 %add303, i32* %bsLive302, align 4
  %289 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm304 = getelementptr inbounds %struct.DState, %struct.DState* %289, i32 0, i32 0
  %290 = load %struct.bz_stream*, %struct.bz_stream** %strm304, align 8
  %next_in305 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %290, i32 0, i32 0
  %291 = load i8*, i8** %next_in305, align 8
  %incdec.ptr306 = getelementptr inbounds i8, i8* %291, i32 1
  store i8* %incdec.ptr306, i8** %next_in305, align 8
  %292 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm307 = getelementptr inbounds %struct.DState, %struct.DState* %292, i32 0, i32 0
  %293 = load %struct.bz_stream*, %struct.bz_stream** %strm307, align 8
  %avail_in308 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %293, i32 0, i32 1
  %294 = load i32, i32* %avail_in308, align 8
  %dec309 = add i32 %294, -1
  store i32 %dec309, i32* %avail_in308, align 8
  %295 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm310 = getelementptr inbounds %struct.DState, %struct.DState* %295, i32 0, i32 0
  %296 = load %struct.bz_stream*, %struct.bz_stream** %strm310, align 8
  %total_in_lo32311 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %296, i32 0, i32 2
  %297 = load i32, i32* %total_in_lo32311, align 4
  %inc312 = add i32 %297, 1
  store i32 %inc312, i32* %total_in_lo32311, align 4
  %298 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm313 = getelementptr inbounds %struct.DState, %struct.DState* %298, i32 0, i32 0
  %299 = load %struct.bz_stream*, %struct.bz_stream** %strm313, align 8
  %total_in_lo32314 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %299, i32 0, i32 2
  %300 = load i32, i32* %total_in_lo32314, align 4
  %cmp315 = icmp eq i32 %300, 0
  br i1 %cmp315, label %if.then317, label %if.end321

if.then317:                                       ; preds = %if.end294
  %301 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm318 = getelementptr inbounds %struct.DState, %struct.DState* %301, i32 0, i32 0
  %302 = load %struct.bz_stream*, %struct.bz_stream** %strm318, align 8
  %total_in_hi32319 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %302, i32 0, i32 3
  %303 = load i32, i32* %total_in_hi32319, align 8
  %inc320 = add i32 %303, 1
  store i32 %inc320, i32* %total_in_hi32319, align 8
  br label %if.end321

if.end321:                                        ; preds = %if.then317, %if.end294
  br label %while.body274

while.end322:                                     ; preds = %if.then278
  %304 = load i8, i8* %uc, align 1
  %conv323 = zext i8 %304 to i32
  %cmp324 = icmp eq i32 %conv323, 23
  br i1 %cmp324, label %if.then326, label %if.end327

if.then326:                                       ; preds = %while.end322
  br label %endhdr_2

if.end327:                                        ; preds = %while.end322
  %305 = load i8, i8* %uc, align 1
  %conv328 = zext i8 %305 to i32
  %cmp329 = icmp ne i32 %conv328, 49
  br i1 %cmp329, label %if.then331, label %if.end332

if.then331:                                       ; preds = %if.end327
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end332:                                        ; preds = %if.end327
  br label %sw.bb333

sw.bb333:                                         ; preds = %if.end, %if.end332
  %306 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state334 = getelementptr inbounds %struct.DState, %struct.DState* %306, i32 0, i32 1
  store i32 15, i32* %state334, align 8
  br label %while.body335

while.body335:                                    ; preds = %sw.bb333, %if.end382
  %307 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive336 = getelementptr inbounds %struct.DState, %struct.DState* %307, i32 0, i32 8
  %308 = load i32, i32* %bsLive336, align 4
  %cmp337 = icmp sge i32 %308, 8
  br i1 %cmp337, label %if.then339, label %if.end349

if.then339:                                       ; preds = %while.body335
  %309 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff341 = getelementptr inbounds %struct.DState, %struct.DState* %309, i32 0, i32 7
  %310 = load i32, i32* %bsBuff341, align 8
  %311 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive342 = getelementptr inbounds %struct.DState, %struct.DState* %311, i32 0, i32 8
  %312 = load i32, i32* %bsLive342, align 4
  %sub343 = sub nsw i32 %312, 8
  %shr344 = lshr i32 %310, %sub343
  %and345 = and i32 %shr344, 255
  store i32 %and345, i32* %v340, align 4
  %313 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive346 = getelementptr inbounds %struct.DState, %struct.DState* %313, i32 0, i32 8
  %314 = load i32, i32* %bsLive346, align 4
  %sub347 = sub nsw i32 %314, 8
  store i32 %sub347, i32* %bsLive346, align 4
  %315 = load i32, i32* %v340, align 4
  %conv348 = trunc i32 %315 to i8
  store i8 %conv348, i8* %uc, align 1
  br label %while.end383

if.end349:                                        ; preds = %while.body335
  %316 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm350 = getelementptr inbounds %struct.DState, %struct.DState* %316, i32 0, i32 0
  %317 = load %struct.bz_stream*, %struct.bz_stream** %strm350, align 8
  %avail_in351 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %317, i32 0, i32 1
  %318 = load i32, i32* %avail_in351, align 8
  %cmp352 = icmp eq i32 %318, 0
  br i1 %cmp352, label %if.then354, label %if.end355

if.then354:                                       ; preds = %if.end349
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end355:                                        ; preds = %if.end349
  %319 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff356 = getelementptr inbounds %struct.DState, %struct.DState* %319, i32 0, i32 7
  %320 = load i32, i32* %bsBuff356, align 8
  %shl357 = shl i32 %320, 8
  %321 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm358 = getelementptr inbounds %struct.DState, %struct.DState* %321, i32 0, i32 0
  %322 = load %struct.bz_stream*, %struct.bz_stream** %strm358, align 8
  %next_in359 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %322, i32 0, i32 0
  %323 = load i8*, i8** %next_in359, align 8
  %324 = load i8, i8* %323, align 1
  %conv360 = zext i8 %324 to i32
  %or361 = or i32 %shl357, %conv360
  %325 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff362 = getelementptr inbounds %struct.DState, %struct.DState* %325, i32 0, i32 7
  store i32 %or361, i32* %bsBuff362, align 8
  %326 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive363 = getelementptr inbounds %struct.DState, %struct.DState* %326, i32 0, i32 8
  %327 = load i32, i32* %bsLive363, align 4
  %add364 = add nsw i32 %327, 8
  store i32 %add364, i32* %bsLive363, align 4
  %328 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm365 = getelementptr inbounds %struct.DState, %struct.DState* %328, i32 0, i32 0
  %329 = load %struct.bz_stream*, %struct.bz_stream** %strm365, align 8
  %next_in366 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %329, i32 0, i32 0
  %330 = load i8*, i8** %next_in366, align 8
  %incdec.ptr367 = getelementptr inbounds i8, i8* %330, i32 1
  store i8* %incdec.ptr367, i8** %next_in366, align 8
  %331 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm368 = getelementptr inbounds %struct.DState, %struct.DState* %331, i32 0, i32 0
  %332 = load %struct.bz_stream*, %struct.bz_stream** %strm368, align 8
  %avail_in369 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %332, i32 0, i32 1
  %333 = load i32, i32* %avail_in369, align 8
  %dec370 = add i32 %333, -1
  store i32 %dec370, i32* %avail_in369, align 8
  %334 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm371 = getelementptr inbounds %struct.DState, %struct.DState* %334, i32 0, i32 0
  %335 = load %struct.bz_stream*, %struct.bz_stream** %strm371, align 8
  %total_in_lo32372 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %335, i32 0, i32 2
  %336 = load i32, i32* %total_in_lo32372, align 4
  %inc373 = add i32 %336, 1
  store i32 %inc373, i32* %total_in_lo32372, align 4
  %337 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm374 = getelementptr inbounds %struct.DState, %struct.DState* %337, i32 0, i32 0
  %338 = load %struct.bz_stream*, %struct.bz_stream** %strm374, align 8
  %total_in_lo32375 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %338, i32 0, i32 2
  %339 = load i32, i32* %total_in_lo32375, align 4
  %cmp376 = icmp eq i32 %339, 0
  br i1 %cmp376, label %if.then378, label %if.end382

if.then378:                                       ; preds = %if.end355
  %340 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm379 = getelementptr inbounds %struct.DState, %struct.DState* %340, i32 0, i32 0
  %341 = load %struct.bz_stream*, %struct.bz_stream** %strm379, align 8
  %total_in_hi32380 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %341, i32 0, i32 3
  %342 = load i32, i32* %total_in_hi32380, align 8
  %inc381 = add i32 %342, 1
  store i32 %inc381, i32* %total_in_hi32380, align 8
  br label %if.end382

if.end382:                                        ; preds = %if.then378, %if.end355
  br label %while.body335

while.end383:                                     ; preds = %if.then339
  %343 = load i8, i8* %uc, align 1
  %conv384 = zext i8 %343 to i32
  %cmp385 = icmp ne i32 %conv384, 65
  br i1 %cmp385, label %if.then387, label %if.end388

if.then387:                                       ; preds = %while.end383
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end388:                                        ; preds = %while.end383
  br label %sw.bb389

sw.bb389:                                         ; preds = %if.end, %if.end388
  %344 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state390 = getelementptr inbounds %struct.DState, %struct.DState* %344, i32 0, i32 1
  store i32 16, i32* %state390, align 8
  br label %while.body391

while.body391:                                    ; preds = %sw.bb389, %if.end438
  %345 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive392 = getelementptr inbounds %struct.DState, %struct.DState* %345, i32 0, i32 8
  %346 = load i32, i32* %bsLive392, align 4
  %cmp393 = icmp sge i32 %346, 8
  br i1 %cmp393, label %if.then395, label %if.end405

if.then395:                                       ; preds = %while.body391
  %347 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff397 = getelementptr inbounds %struct.DState, %struct.DState* %347, i32 0, i32 7
  %348 = load i32, i32* %bsBuff397, align 8
  %349 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive398 = getelementptr inbounds %struct.DState, %struct.DState* %349, i32 0, i32 8
  %350 = load i32, i32* %bsLive398, align 4
  %sub399 = sub nsw i32 %350, 8
  %shr400 = lshr i32 %348, %sub399
  %and401 = and i32 %shr400, 255
  store i32 %and401, i32* %v396, align 4
  %351 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive402 = getelementptr inbounds %struct.DState, %struct.DState* %351, i32 0, i32 8
  %352 = load i32, i32* %bsLive402, align 4
  %sub403 = sub nsw i32 %352, 8
  store i32 %sub403, i32* %bsLive402, align 4
  %353 = load i32, i32* %v396, align 4
  %conv404 = trunc i32 %353 to i8
  store i8 %conv404, i8* %uc, align 1
  br label %while.end439

if.end405:                                        ; preds = %while.body391
  %354 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm406 = getelementptr inbounds %struct.DState, %struct.DState* %354, i32 0, i32 0
  %355 = load %struct.bz_stream*, %struct.bz_stream** %strm406, align 8
  %avail_in407 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %355, i32 0, i32 1
  %356 = load i32, i32* %avail_in407, align 8
  %cmp408 = icmp eq i32 %356, 0
  br i1 %cmp408, label %if.then410, label %if.end411

if.then410:                                       ; preds = %if.end405
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end411:                                        ; preds = %if.end405
  %357 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff412 = getelementptr inbounds %struct.DState, %struct.DState* %357, i32 0, i32 7
  %358 = load i32, i32* %bsBuff412, align 8
  %shl413 = shl i32 %358, 8
  %359 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm414 = getelementptr inbounds %struct.DState, %struct.DState* %359, i32 0, i32 0
  %360 = load %struct.bz_stream*, %struct.bz_stream** %strm414, align 8
  %next_in415 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %360, i32 0, i32 0
  %361 = load i8*, i8** %next_in415, align 8
  %362 = load i8, i8* %361, align 1
  %conv416 = zext i8 %362 to i32
  %or417 = or i32 %shl413, %conv416
  %363 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff418 = getelementptr inbounds %struct.DState, %struct.DState* %363, i32 0, i32 7
  store i32 %or417, i32* %bsBuff418, align 8
  %364 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive419 = getelementptr inbounds %struct.DState, %struct.DState* %364, i32 0, i32 8
  %365 = load i32, i32* %bsLive419, align 4
  %add420 = add nsw i32 %365, 8
  store i32 %add420, i32* %bsLive419, align 4
  %366 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm421 = getelementptr inbounds %struct.DState, %struct.DState* %366, i32 0, i32 0
  %367 = load %struct.bz_stream*, %struct.bz_stream** %strm421, align 8
  %next_in422 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %367, i32 0, i32 0
  %368 = load i8*, i8** %next_in422, align 8
  %incdec.ptr423 = getelementptr inbounds i8, i8* %368, i32 1
  store i8* %incdec.ptr423, i8** %next_in422, align 8
  %369 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm424 = getelementptr inbounds %struct.DState, %struct.DState* %369, i32 0, i32 0
  %370 = load %struct.bz_stream*, %struct.bz_stream** %strm424, align 8
  %avail_in425 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %370, i32 0, i32 1
  %371 = load i32, i32* %avail_in425, align 8
  %dec426 = add i32 %371, -1
  store i32 %dec426, i32* %avail_in425, align 8
  %372 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm427 = getelementptr inbounds %struct.DState, %struct.DState* %372, i32 0, i32 0
  %373 = load %struct.bz_stream*, %struct.bz_stream** %strm427, align 8
  %total_in_lo32428 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %373, i32 0, i32 2
  %374 = load i32, i32* %total_in_lo32428, align 4
  %inc429 = add i32 %374, 1
  store i32 %inc429, i32* %total_in_lo32428, align 4
  %375 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm430 = getelementptr inbounds %struct.DState, %struct.DState* %375, i32 0, i32 0
  %376 = load %struct.bz_stream*, %struct.bz_stream** %strm430, align 8
  %total_in_lo32431 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %376, i32 0, i32 2
  %377 = load i32, i32* %total_in_lo32431, align 4
  %cmp432 = icmp eq i32 %377, 0
  br i1 %cmp432, label %if.then434, label %if.end438

if.then434:                                       ; preds = %if.end411
  %378 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm435 = getelementptr inbounds %struct.DState, %struct.DState* %378, i32 0, i32 0
  %379 = load %struct.bz_stream*, %struct.bz_stream** %strm435, align 8
  %total_in_hi32436 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %379, i32 0, i32 3
  %380 = load i32, i32* %total_in_hi32436, align 8
  %inc437 = add i32 %380, 1
  store i32 %inc437, i32* %total_in_hi32436, align 8
  br label %if.end438

if.end438:                                        ; preds = %if.then434, %if.end411
  br label %while.body391

while.end439:                                     ; preds = %if.then395
  %381 = load i8, i8* %uc, align 1
  %conv440 = zext i8 %381 to i32
  %cmp441 = icmp ne i32 %conv440, 89
  br i1 %cmp441, label %if.then443, label %if.end444

if.then443:                                       ; preds = %while.end439
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end444:                                        ; preds = %while.end439
  br label %sw.bb445

sw.bb445:                                         ; preds = %if.end, %if.end444
  %382 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state446 = getelementptr inbounds %struct.DState, %struct.DState* %382, i32 0, i32 1
  store i32 17, i32* %state446, align 8
  br label %while.body447

while.body447:                                    ; preds = %sw.bb445, %if.end494
  %383 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive448 = getelementptr inbounds %struct.DState, %struct.DState* %383, i32 0, i32 8
  %384 = load i32, i32* %bsLive448, align 4
  %cmp449 = icmp sge i32 %384, 8
  br i1 %cmp449, label %if.then451, label %if.end461

if.then451:                                       ; preds = %while.body447
  %385 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff453 = getelementptr inbounds %struct.DState, %struct.DState* %385, i32 0, i32 7
  %386 = load i32, i32* %bsBuff453, align 8
  %387 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive454 = getelementptr inbounds %struct.DState, %struct.DState* %387, i32 0, i32 8
  %388 = load i32, i32* %bsLive454, align 4
  %sub455 = sub nsw i32 %388, 8
  %shr456 = lshr i32 %386, %sub455
  %and457 = and i32 %shr456, 255
  store i32 %and457, i32* %v452, align 4
  %389 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive458 = getelementptr inbounds %struct.DState, %struct.DState* %389, i32 0, i32 8
  %390 = load i32, i32* %bsLive458, align 4
  %sub459 = sub nsw i32 %390, 8
  store i32 %sub459, i32* %bsLive458, align 4
  %391 = load i32, i32* %v452, align 4
  %conv460 = trunc i32 %391 to i8
  store i8 %conv460, i8* %uc, align 1
  br label %while.end495

if.end461:                                        ; preds = %while.body447
  %392 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm462 = getelementptr inbounds %struct.DState, %struct.DState* %392, i32 0, i32 0
  %393 = load %struct.bz_stream*, %struct.bz_stream** %strm462, align 8
  %avail_in463 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %393, i32 0, i32 1
  %394 = load i32, i32* %avail_in463, align 8
  %cmp464 = icmp eq i32 %394, 0
  br i1 %cmp464, label %if.then466, label %if.end467

if.then466:                                       ; preds = %if.end461
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end467:                                        ; preds = %if.end461
  %395 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff468 = getelementptr inbounds %struct.DState, %struct.DState* %395, i32 0, i32 7
  %396 = load i32, i32* %bsBuff468, align 8
  %shl469 = shl i32 %396, 8
  %397 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm470 = getelementptr inbounds %struct.DState, %struct.DState* %397, i32 0, i32 0
  %398 = load %struct.bz_stream*, %struct.bz_stream** %strm470, align 8
  %next_in471 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %398, i32 0, i32 0
  %399 = load i8*, i8** %next_in471, align 8
  %400 = load i8, i8* %399, align 1
  %conv472 = zext i8 %400 to i32
  %or473 = or i32 %shl469, %conv472
  %401 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff474 = getelementptr inbounds %struct.DState, %struct.DState* %401, i32 0, i32 7
  store i32 %or473, i32* %bsBuff474, align 8
  %402 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive475 = getelementptr inbounds %struct.DState, %struct.DState* %402, i32 0, i32 8
  %403 = load i32, i32* %bsLive475, align 4
  %add476 = add nsw i32 %403, 8
  store i32 %add476, i32* %bsLive475, align 4
  %404 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm477 = getelementptr inbounds %struct.DState, %struct.DState* %404, i32 0, i32 0
  %405 = load %struct.bz_stream*, %struct.bz_stream** %strm477, align 8
  %next_in478 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %405, i32 0, i32 0
  %406 = load i8*, i8** %next_in478, align 8
  %incdec.ptr479 = getelementptr inbounds i8, i8* %406, i32 1
  store i8* %incdec.ptr479, i8** %next_in478, align 8
  %407 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm480 = getelementptr inbounds %struct.DState, %struct.DState* %407, i32 0, i32 0
  %408 = load %struct.bz_stream*, %struct.bz_stream** %strm480, align 8
  %avail_in481 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %408, i32 0, i32 1
  %409 = load i32, i32* %avail_in481, align 8
  %dec482 = add i32 %409, -1
  store i32 %dec482, i32* %avail_in481, align 8
  %410 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm483 = getelementptr inbounds %struct.DState, %struct.DState* %410, i32 0, i32 0
  %411 = load %struct.bz_stream*, %struct.bz_stream** %strm483, align 8
  %total_in_lo32484 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %411, i32 0, i32 2
  %412 = load i32, i32* %total_in_lo32484, align 4
  %inc485 = add i32 %412, 1
  store i32 %inc485, i32* %total_in_lo32484, align 4
  %413 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm486 = getelementptr inbounds %struct.DState, %struct.DState* %413, i32 0, i32 0
  %414 = load %struct.bz_stream*, %struct.bz_stream** %strm486, align 8
  %total_in_lo32487 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %414, i32 0, i32 2
  %415 = load i32, i32* %total_in_lo32487, align 4
  %cmp488 = icmp eq i32 %415, 0
  br i1 %cmp488, label %if.then490, label %if.end494

if.then490:                                       ; preds = %if.end467
  %416 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm491 = getelementptr inbounds %struct.DState, %struct.DState* %416, i32 0, i32 0
  %417 = load %struct.bz_stream*, %struct.bz_stream** %strm491, align 8
  %total_in_hi32492 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %417, i32 0, i32 3
  %418 = load i32, i32* %total_in_hi32492, align 8
  %inc493 = add i32 %418, 1
  store i32 %inc493, i32* %total_in_hi32492, align 8
  br label %if.end494

if.end494:                                        ; preds = %if.then490, %if.end467
  br label %while.body447

while.end495:                                     ; preds = %if.then451
  %419 = load i8, i8* %uc, align 1
  %conv496 = zext i8 %419 to i32
  %cmp497 = icmp ne i32 %conv496, 38
  br i1 %cmp497, label %if.then499, label %if.end500

if.then499:                                       ; preds = %while.end495
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end500:                                        ; preds = %while.end495
  br label %sw.bb501

sw.bb501:                                         ; preds = %if.end, %if.end500
  %420 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state502 = getelementptr inbounds %struct.DState, %struct.DState* %420, i32 0, i32 1
  store i32 18, i32* %state502, align 8
  br label %while.body503

while.body503:                                    ; preds = %sw.bb501, %if.end550
  %421 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive504 = getelementptr inbounds %struct.DState, %struct.DState* %421, i32 0, i32 8
  %422 = load i32, i32* %bsLive504, align 4
  %cmp505 = icmp sge i32 %422, 8
  br i1 %cmp505, label %if.then507, label %if.end517

if.then507:                                       ; preds = %while.body503
  %423 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff509 = getelementptr inbounds %struct.DState, %struct.DState* %423, i32 0, i32 7
  %424 = load i32, i32* %bsBuff509, align 8
  %425 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive510 = getelementptr inbounds %struct.DState, %struct.DState* %425, i32 0, i32 8
  %426 = load i32, i32* %bsLive510, align 4
  %sub511 = sub nsw i32 %426, 8
  %shr512 = lshr i32 %424, %sub511
  %and513 = and i32 %shr512, 255
  store i32 %and513, i32* %v508, align 4
  %427 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive514 = getelementptr inbounds %struct.DState, %struct.DState* %427, i32 0, i32 8
  %428 = load i32, i32* %bsLive514, align 4
  %sub515 = sub nsw i32 %428, 8
  store i32 %sub515, i32* %bsLive514, align 4
  %429 = load i32, i32* %v508, align 4
  %conv516 = trunc i32 %429 to i8
  store i8 %conv516, i8* %uc, align 1
  br label %while.end551

if.end517:                                        ; preds = %while.body503
  %430 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm518 = getelementptr inbounds %struct.DState, %struct.DState* %430, i32 0, i32 0
  %431 = load %struct.bz_stream*, %struct.bz_stream** %strm518, align 8
  %avail_in519 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %431, i32 0, i32 1
  %432 = load i32, i32* %avail_in519, align 8
  %cmp520 = icmp eq i32 %432, 0
  br i1 %cmp520, label %if.then522, label %if.end523

if.then522:                                       ; preds = %if.end517
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end523:                                        ; preds = %if.end517
  %433 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff524 = getelementptr inbounds %struct.DState, %struct.DState* %433, i32 0, i32 7
  %434 = load i32, i32* %bsBuff524, align 8
  %shl525 = shl i32 %434, 8
  %435 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm526 = getelementptr inbounds %struct.DState, %struct.DState* %435, i32 0, i32 0
  %436 = load %struct.bz_stream*, %struct.bz_stream** %strm526, align 8
  %next_in527 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %436, i32 0, i32 0
  %437 = load i8*, i8** %next_in527, align 8
  %438 = load i8, i8* %437, align 1
  %conv528 = zext i8 %438 to i32
  %or529 = or i32 %shl525, %conv528
  %439 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff530 = getelementptr inbounds %struct.DState, %struct.DState* %439, i32 0, i32 7
  store i32 %or529, i32* %bsBuff530, align 8
  %440 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive531 = getelementptr inbounds %struct.DState, %struct.DState* %440, i32 0, i32 8
  %441 = load i32, i32* %bsLive531, align 4
  %add532 = add nsw i32 %441, 8
  store i32 %add532, i32* %bsLive531, align 4
  %442 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm533 = getelementptr inbounds %struct.DState, %struct.DState* %442, i32 0, i32 0
  %443 = load %struct.bz_stream*, %struct.bz_stream** %strm533, align 8
  %next_in534 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %443, i32 0, i32 0
  %444 = load i8*, i8** %next_in534, align 8
  %incdec.ptr535 = getelementptr inbounds i8, i8* %444, i32 1
  store i8* %incdec.ptr535, i8** %next_in534, align 8
  %445 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm536 = getelementptr inbounds %struct.DState, %struct.DState* %445, i32 0, i32 0
  %446 = load %struct.bz_stream*, %struct.bz_stream** %strm536, align 8
  %avail_in537 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %446, i32 0, i32 1
  %447 = load i32, i32* %avail_in537, align 8
  %dec538 = add i32 %447, -1
  store i32 %dec538, i32* %avail_in537, align 8
  %448 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm539 = getelementptr inbounds %struct.DState, %struct.DState* %448, i32 0, i32 0
  %449 = load %struct.bz_stream*, %struct.bz_stream** %strm539, align 8
  %total_in_lo32540 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %449, i32 0, i32 2
  %450 = load i32, i32* %total_in_lo32540, align 4
  %inc541 = add i32 %450, 1
  store i32 %inc541, i32* %total_in_lo32540, align 4
  %451 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm542 = getelementptr inbounds %struct.DState, %struct.DState* %451, i32 0, i32 0
  %452 = load %struct.bz_stream*, %struct.bz_stream** %strm542, align 8
  %total_in_lo32543 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %452, i32 0, i32 2
  %453 = load i32, i32* %total_in_lo32543, align 4
  %cmp544 = icmp eq i32 %453, 0
  br i1 %cmp544, label %if.then546, label %if.end550

if.then546:                                       ; preds = %if.end523
  %454 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm547 = getelementptr inbounds %struct.DState, %struct.DState* %454, i32 0, i32 0
  %455 = load %struct.bz_stream*, %struct.bz_stream** %strm547, align 8
  %total_in_hi32548 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %455, i32 0, i32 3
  %456 = load i32, i32* %total_in_hi32548, align 8
  %inc549 = add i32 %456, 1
  store i32 %inc549, i32* %total_in_hi32548, align 8
  br label %if.end550

if.end550:                                        ; preds = %if.then546, %if.end523
  br label %while.body503

while.end551:                                     ; preds = %if.then507
  %457 = load i8, i8* %uc, align 1
  %conv552 = zext i8 %457 to i32
  %cmp553 = icmp ne i32 %conv552, 83
  br i1 %cmp553, label %if.then555, label %if.end556

if.then555:                                       ; preds = %while.end551
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end556:                                        ; preds = %while.end551
  br label %sw.bb557

sw.bb557:                                         ; preds = %if.end, %if.end556
  %458 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state558 = getelementptr inbounds %struct.DState, %struct.DState* %458, i32 0, i32 1
  store i32 19, i32* %state558, align 8
  br label %while.body559

while.body559:                                    ; preds = %sw.bb557, %if.end606
  %459 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive560 = getelementptr inbounds %struct.DState, %struct.DState* %459, i32 0, i32 8
  %460 = load i32, i32* %bsLive560, align 4
  %cmp561 = icmp sge i32 %460, 8
  br i1 %cmp561, label %if.then563, label %if.end573

if.then563:                                       ; preds = %while.body559
  %461 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff565 = getelementptr inbounds %struct.DState, %struct.DState* %461, i32 0, i32 7
  %462 = load i32, i32* %bsBuff565, align 8
  %463 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive566 = getelementptr inbounds %struct.DState, %struct.DState* %463, i32 0, i32 8
  %464 = load i32, i32* %bsLive566, align 4
  %sub567 = sub nsw i32 %464, 8
  %shr568 = lshr i32 %462, %sub567
  %and569 = and i32 %shr568, 255
  store i32 %and569, i32* %v564, align 4
  %465 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive570 = getelementptr inbounds %struct.DState, %struct.DState* %465, i32 0, i32 8
  %466 = load i32, i32* %bsLive570, align 4
  %sub571 = sub nsw i32 %466, 8
  store i32 %sub571, i32* %bsLive570, align 4
  %467 = load i32, i32* %v564, align 4
  %conv572 = trunc i32 %467 to i8
  store i8 %conv572, i8* %uc, align 1
  br label %while.end607

if.end573:                                        ; preds = %while.body559
  %468 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm574 = getelementptr inbounds %struct.DState, %struct.DState* %468, i32 0, i32 0
  %469 = load %struct.bz_stream*, %struct.bz_stream** %strm574, align 8
  %avail_in575 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %469, i32 0, i32 1
  %470 = load i32, i32* %avail_in575, align 8
  %cmp576 = icmp eq i32 %470, 0
  br i1 %cmp576, label %if.then578, label %if.end579

if.then578:                                       ; preds = %if.end573
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end579:                                        ; preds = %if.end573
  %471 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff580 = getelementptr inbounds %struct.DState, %struct.DState* %471, i32 0, i32 7
  %472 = load i32, i32* %bsBuff580, align 8
  %shl581 = shl i32 %472, 8
  %473 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm582 = getelementptr inbounds %struct.DState, %struct.DState* %473, i32 0, i32 0
  %474 = load %struct.bz_stream*, %struct.bz_stream** %strm582, align 8
  %next_in583 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %474, i32 0, i32 0
  %475 = load i8*, i8** %next_in583, align 8
  %476 = load i8, i8* %475, align 1
  %conv584 = zext i8 %476 to i32
  %or585 = or i32 %shl581, %conv584
  %477 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff586 = getelementptr inbounds %struct.DState, %struct.DState* %477, i32 0, i32 7
  store i32 %or585, i32* %bsBuff586, align 8
  %478 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive587 = getelementptr inbounds %struct.DState, %struct.DState* %478, i32 0, i32 8
  %479 = load i32, i32* %bsLive587, align 4
  %add588 = add nsw i32 %479, 8
  store i32 %add588, i32* %bsLive587, align 4
  %480 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm589 = getelementptr inbounds %struct.DState, %struct.DState* %480, i32 0, i32 0
  %481 = load %struct.bz_stream*, %struct.bz_stream** %strm589, align 8
  %next_in590 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %481, i32 0, i32 0
  %482 = load i8*, i8** %next_in590, align 8
  %incdec.ptr591 = getelementptr inbounds i8, i8* %482, i32 1
  store i8* %incdec.ptr591, i8** %next_in590, align 8
  %483 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm592 = getelementptr inbounds %struct.DState, %struct.DState* %483, i32 0, i32 0
  %484 = load %struct.bz_stream*, %struct.bz_stream** %strm592, align 8
  %avail_in593 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %484, i32 0, i32 1
  %485 = load i32, i32* %avail_in593, align 8
  %dec594 = add i32 %485, -1
  store i32 %dec594, i32* %avail_in593, align 8
  %486 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm595 = getelementptr inbounds %struct.DState, %struct.DState* %486, i32 0, i32 0
  %487 = load %struct.bz_stream*, %struct.bz_stream** %strm595, align 8
  %total_in_lo32596 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %487, i32 0, i32 2
  %488 = load i32, i32* %total_in_lo32596, align 4
  %inc597 = add i32 %488, 1
  store i32 %inc597, i32* %total_in_lo32596, align 4
  %489 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm598 = getelementptr inbounds %struct.DState, %struct.DState* %489, i32 0, i32 0
  %490 = load %struct.bz_stream*, %struct.bz_stream** %strm598, align 8
  %total_in_lo32599 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %490, i32 0, i32 2
  %491 = load i32, i32* %total_in_lo32599, align 4
  %cmp600 = icmp eq i32 %491, 0
  br i1 %cmp600, label %if.then602, label %if.end606

if.then602:                                       ; preds = %if.end579
  %492 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm603 = getelementptr inbounds %struct.DState, %struct.DState* %492, i32 0, i32 0
  %493 = load %struct.bz_stream*, %struct.bz_stream** %strm603, align 8
  %total_in_hi32604 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %493, i32 0, i32 3
  %494 = load i32, i32* %total_in_hi32604, align 8
  %inc605 = add i32 %494, 1
  store i32 %inc605, i32* %total_in_hi32604, align 8
  br label %if.end606

if.end606:                                        ; preds = %if.then602, %if.end579
  br label %while.body559

while.end607:                                     ; preds = %if.then563
  %495 = load i8, i8* %uc, align 1
  %conv608 = zext i8 %495 to i32
  %cmp609 = icmp ne i32 %conv608, 89
  br i1 %cmp609, label %if.then611, label %if.end612

if.then611:                                       ; preds = %while.end607
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end612:                                        ; preds = %while.end607
  %496 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %currBlockNo = getelementptr inbounds %struct.DState, %struct.DState* %496, i32 0, i32 11
  %497 = load i32, i32* %currBlockNo, align 8
  %inc613 = add nsw i32 %497, 1
  store i32 %inc613, i32* %currBlockNo, align 8
  %498 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %verbosity = getelementptr inbounds %struct.DState, %struct.DState* %498, i32 0, i32 12
  %499 = load i32, i32* %verbosity, align 4
  %cmp614 = icmp sge i32 %499, 2
  br i1 %cmp614, label %if.then616, label %if.end619

if.then616:                                       ; preds = %if.end612
  %500 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %501 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %currBlockNo617 = getelementptr inbounds %struct.DState, %struct.DState* %501, i32 0, i32 11
  %502 = load i32, i32* %currBlockNo617, align 8
  %call618 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %500, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %502)
  br label %if.end619

if.end619:                                        ; preds = %if.then616, %if.end612
  %503 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %storedBlockCRC = getelementptr inbounds %struct.DState, %struct.DState* %503, i32 0, i32 23
  store i32 0, i32* %storedBlockCRC, align 8
  br label %sw.bb620

sw.bb620:                                         ; preds = %if.end, %if.end619
  %504 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state621 = getelementptr inbounds %struct.DState, %struct.DState* %504, i32 0, i32 1
  store i32 20, i32* %state621, align 8
  br label %while.body622

while.body622:                                    ; preds = %sw.bb620, %if.end669
  %505 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive623 = getelementptr inbounds %struct.DState, %struct.DState* %505, i32 0, i32 8
  %506 = load i32, i32* %bsLive623, align 4
  %cmp624 = icmp sge i32 %506, 8
  br i1 %cmp624, label %if.then626, label %if.end636

if.then626:                                       ; preds = %while.body622
  %507 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff628 = getelementptr inbounds %struct.DState, %struct.DState* %507, i32 0, i32 7
  %508 = load i32, i32* %bsBuff628, align 8
  %509 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive629 = getelementptr inbounds %struct.DState, %struct.DState* %509, i32 0, i32 8
  %510 = load i32, i32* %bsLive629, align 4
  %sub630 = sub nsw i32 %510, 8
  %shr631 = lshr i32 %508, %sub630
  %and632 = and i32 %shr631, 255
  store i32 %and632, i32* %v627, align 4
  %511 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive633 = getelementptr inbounds %struct.DState, %struct.DState* %511, i32 0, i32 8
  %512 = load i32, i32* %bsLive633, align 4
  %sub634 = sub nsw i32 %512, 8
  store i32 %sub634, i32* %bsLive633, align 4
  %513 = load i32, i32* %v627, align 4
  %conv635 = trunc i32 %513 to i8
  store i8 %conv635, i8* %uc, align 1
  br label %while.end670

if.end636:                                        ; preds = %while.body622
  %514 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm637 = getelementptr inbounds %struct.DState, %struct.DState* %514, i32 0, i32 0
  %515 = load %struct.bz_stream*, %struct.bz_stream** %strm637, align 8
  %avail_in638 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %515, i32 0, i32 1
  %516 = load i32, i32* %avail_in638, align 8
  %cmp639 = icmp eq i32 %516, 0
  br i1 %cmp639, label %if.then641, label %if.end642

if.then641:                                       ; preds = %if.end636
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end642:                                        ; preds = %if.end636
  %517 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff643 = getelementptr inbounds %struct.DState, %struct.DState* %517, i32 0, i32 7
  %518 = load i32, i32* %bsBuff643, align 8
  %shl644 = shl i32 %518, 8
  %519 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm645 = getelementptr inbounds %struct.DState, %struct.DState* %519, i32 0, i32 0
  %520 = load %struct.bz_stream*, %struct.bz_stream** %strm645, align 8
  %next_in646 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %520, i32 0, i32 0
  %521 = load i8*, i8** %next_in646, align 8
  %522 = load i8, i8* %521, align 1
  %conv647 = zext i8 %522 to i32
  %or648 = or i32 %shl644, %conv647
  %523 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff649 = getelementptr inbounds %struct.DState, %struct.DState* %523, i32 0, i32 7
  store i32 %or648, i32* %bsBuff649, align 8
  %524 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive650 = getelementptr inbounds %struct.DState, %struct.DState* %524, i32 0, i32 8
  %525 = load i32, i32* %bsLive650, align 4
  %add651 = add nsw i32 %525, 8
  store i32 %add651, i32* %bsLive650, align 4
  %526 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm652 = getelementptr inbounds %struct.DState, %struct.DState* %526, i32 0, i32 0
  %527 = load %struct.bz_stream*, %struct.bz_stream** %strm652, align 8
  %next_in653 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %527, i32 0, i32 0
  %528 = load i8*, i8** %next_in653, align 8
  %incdec.ptr654 = getelementptr inbounds i8, i8* %528, i32 1
  store i8* %incdec.ptr654, i8** %next_in653, align 8
  %529 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm655 = getelementptr inbounds %struct.DState, %struct.DState* %529, i32 0, i32 0
  %530 = load %struct.bz_stream*, %struct.bz_stream** %strm655, align 8
  %avail_in656 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %530, i32 0, i32 1
  %531 = load i32, i32* %avail_in656, align 8
  %dec657 = add i32 %531, -1
  store i32 %dec657, i32* %avail_in656, align 8
  %532 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm658 = getelementptr inbounds %struct.DState, %struct.DState* %532, i32 0, i32 0
  %533 = load %struct.bz_stream*, %struct.bz_stream** %strm658, align 8
  %total_in_lo32659 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %533, i32 0, i32 2
  %534 = load i32, i32* %total_in_lo32659, align 4
  %inc660 = add i32 %534, 1
  store i32 %inc660, i32* %total_in_lo32659, align 4
  %535 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm661 = getelementptr inbounds %struct.DState, %struct.DState* %535, i32 0, i32 0
  %536 = load %struct.bz_stream*, %struct.bz_stream** %strm661, align 8
  %total_in_lo32662 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %536, i32 0, i32 2
  %537 = load i32, i32* %total_in_lo32662, align 4
  %cmp663 = icmp eq i32 %537, 0
  br i1 %cmp663, label %if.then665, label %if.end669

if.then665:                                       ; preds = %if.end642
  %538 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm666 = getelementptr inbounds %struct.DState, %struct.DState* %538, i32 0, i32 0
  %539 = load %struct.bz_stream*, %struct.bz_stream** %strm666, align 8
  %total_in_hi32667 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %539, i32 0, i32 3
  %540 = load i32, i32* %total_in_hi32667, align 8
  %inc668 = add i32 %540, 1
  store i32 %inc668, i32* %total_in_hi32667, align 8
  br label %if.end669

if.end669:                                        ; preds = %if.then665, %if.end642
  br label %while.body622

while.end670:                                     ; preds = %if.then626
  %541 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %storedBlockCRC671 = getelementptr inbounds %struct.DState, %struct.DState* %541, i32 0, i32 23
  %542 = load i32, i32* %storedBlockCRC671, align 8
  %shl672 = shl i32 %542, 8
  %543 = load i8, i8* %uc, align 1
  %conv673 = zext i8 %543 to i32
  %or674 = or i32 %shl672, %conv673
  %544 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %storedBlockCRC675 = getelementptr inbounds %struct.DState, %struct.DState* %544, i32 0, i32 23
  store i32 %or674, i32* %storedBlockCRC675, align 8
  br label %sw.bb676

sw.bb676:                                         ; preds = %if.end, %while.end670
  %545 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state677 = getelementptr inbounds %struct.DState, %struct.DState* %545, i32 0, i32 1
  store i32 21, i32* %state677, align 8
  br label %while.body678

while.body678:                                    ; preds = %sw.bb676, %if.end725
  %546 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive679 = getelementptr inbounds %struct.DState, %struct.DState* %546, i32 0, i32 8
  %547 = load i32, i32* %bsLive679, align 4
  %cmp680 = icmp sge i32 %547, 8
  br i1 %cmp680, label %if.then682, label %if.end692

if.then682:                                       ; preds = %while.body678
  %548 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff684 = getelementptr inbounds %struct.DState, %struct.DState* %548, i32 0, i32 7
  %549 = load i32, i32* %bsBuff684, align 8
  %550 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive685 = getelementptr inbounds %struct.DState, %struct.DState* %550, i32 0, i32 8
  %551 = load i32, i32* %bsLive685, align 4
  %sub686 = sub nsw i32 %551, 8
  %shr687 = lshr i32 %549, %sub686
  %and688 = and i32 %shr687, 255
  store i32 %and688, i32* %v683, align 4
  %552 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive689 = getelementptr inbounds %struct.DState, %struct.DState* %552, i32 0, i32 8
  %553 = load i32, i32* %bsLive689, align 4
  %sub690 = sub nsw i32 %553, 8
  store i32 %sub690, i32* %bsLive689, align 4
  %554 = load i32, i32* %v683, align 4
  %conv691 = trunc i32 %554 to i8
  store i8 %conv691, i8* %uc, align 1
  br label %while.end726

if.end692:                                        ; preds = %while.body678
  %555 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm693 = getelementptr inbounds %struct.DState, %struct.DState* %555, i32 0, i32 0
  %556 = load %struct.bz_stream*, %struct.bz_stream** %strm693, align 8
  %avail_in694 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %556, i32 0, i32 1
  %557 = load i32, i32* %avail_in694, align 8
  %cmp695 = icmp eq i32 %557, 0
  br i1 %cmp695, label %if.then697, label %if.end698

if.then697:                                       ; preds = %if.end692
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end698:                                        ; preds = %if.end692
  %558 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff699 = getelementptr inbounds %struct.DState, %struct.DState* %558, i32 0, i32 7
  %559 = load i32, i32* %bsBuff699, align 8
  %shl700 = shl i32 %559, 8
  %560 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm701 = getelementptr inbounds %struct.DState, %struct.DState* %560, i32 0, i32 0
  %561 = load %struct.bz_stream*, %struct.bz_stream** %strm701, align 8
  %next_in702 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %561, i32 0, i32 0
  %562 = load i8*, i8** %next_in702, align 8
  %563 = load i8, i8* %562, align 1
  %conv703 = zext i8 %563 to i32
  %or704 = or i32 %shl700, %conv703
  %564 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff705 = getelementptr inbounds %struct.DState, %struct.DState* %564, i32 0, i32 7
  store i32 %or704, i32* %bsBuff705, align 8
  %565 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive706 = getelementptr inbounds %struct.DState, %struct.DState* %565, i32 0, i32 8
  %566 = load i32, i32* %bsLive706, align 4
  %add707 = add nsw i32 %566, 8
  store i32 %add707, i32* %bsLive706, align 4
  %567 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm708 = getelementptr inbounds %struct.DState, %struct.DState* %567, i32 0, i32 0
  %568 = load %struct.bz_stream*, %struct.bz_stream** %strm708, align 8
  %next_in709 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %568, i32 0, i32 0
  %569 = load i8*, i8** %next_in709, align 8
  %incdec.ptr710 = getelementptr inbounds i8, i8* %569, i32 1
  store i8* %incdec.ptr710, i8** %next_in709, align 8
  %570 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm711 = getelementptr inbounds %struct.DState, %struct.DState* %570, i32 0, i32 0
  %571 = load %struct.bz_stream*, %struct.bz_stream** %strm711, align 8
  %avail_in712 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %571, i32 0, i32 1
  %572 = load i32, i32* %avail_in712, align 8
  %dec713 = add i32 %572, -1
  store i32 %dec713, i32* %avail_in712, align 8
  %573 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm714 = getelementptr inbounds %struct.DState, %struct.DState* %573, i32 0, i32 0
  %574 = load %struct.bz_stream*, %struct.bz_stream** %strm714, align 8
  %total_in_lo32715 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %574, i32 0, i32 2
  %575 = load i32, i32* %total_in_lo32715, align 4
  %inc716 = add i32 %575, 1
  store i32 %inc716, i32* %total_in_lo32715, align 4
  %576 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm717 = getelementptr inbounds %struct.DState, %struct.DState* %576, i32 0, i32 0
  %577 = load %struct.bz_stream*, %struct.bz_stream** %strm717, align 8
  %total_in_lo32718 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %577, i32 0, i32 2
  %578 = load i32, i32* %total_in_lo32718, align 4
  %cmp719 = icmp eq i32 %578, 0
  br i1 %cmp719, label %if.then721, label %if.end725

if.then721:                                       ; preds = %if.end698
  %579 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm722 = getelementptr inbounds %struct.DState, %struct.DState* %579, i32 0, i32 0
  %580 = load %struct.bz_stream*, %struct.bz_stream** %strm722, align 8
  %total_in_hi32723 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %580, i32 0, i32 3
  %581 = load i32, i32* %total_in_hi32723, align 8
  %inc724 = add i32 %581, 1
  store i32 %inc724, i32* %total_in_hi32723, align 8
  br label %if.end725

if.end725:                                        ; preds = %if.then721, %if.end698
  br label %while.body678

while.end726:                                     ; preds = %if.then682
  %582 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %storedBlockCRC727 = getelementptr inbounds %struct.DState, %struct.DState* %582, i32 0, i32 23
  %583 = load i32, i32* %storedBlockCRC727, align 8
  %shl728 = shl i32 %583, 8
  %584 = load i8, i8* %uc, align 1
  %conv729 = zext i8 %584 to i32
  %or730 = or i32 %shl728, %conv729
  %585 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %storedBlockCRC731 = getelementptr inbounds %struct.DState, %struct.DState* %585, i32 0, i32 23
  store i32 %or730, i32* %storedBlockCRC731, align 8
  br label %sw.bb732

sw.bb732:                                         ; preds = %if.end, %while.end726
  %586 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state733 = getelementptr inbounds %struct.DState, %struct.DState* %586, i32 0, i32 1
  store i32 22, i32* %state733, align 8
  br label %while.body734

while.body734:                                    ; preds = %sw.bb732, %if.end781
  %587 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive735 = getelementptr inbounds %struct.DState, %struct.DState* %587, i32 0, i32 8
  %588 = load i32, i32* %bsLive735, align 4
  %cmp736 = icmp sge i32 %588, 8
  br i1 %cmp736, label %if.then738, label %if.end748

if.then738:                                       ; preds = %while.body734
  %589 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff740 = getelementptr inbounds %struct.DState, %struct.DState* %589, i32 0, i32 7
  %590 = load i32, i32* %bsBuff740, align 8
  %591 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive741 = getelementptr inbounds %struct.DState, %struct.DState* %591, i32 0, i32 8
  %592 = load i32, i32* %bsLive741, align 4
  %sub742 = sub nsw i32 %592, 8
  %shr743 = lshr i32 %590, %sub742
  %and744 = and i32 %shr743, 255
  store i32 %and744, i32* %v739, align 4
  %593 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive745 = getelementptr inbounds %struct.DState, %struct.DState* %593, i32 0, i32 8
  %594 = load i32, i32* %bsLive745, align 4
  %sub746 = sub nsw i32 %594, 8
  store i32 %sub746, i32* %bsLive745, align 4
  %595 = load i32, i32* %v739, align 4
  %conv747 = trunc i32 %595 to i8
  store i8 %conv747, i8* %uc, align 1
  br label %while.end782

if.end748:                                        ; preds = %while.body734
  %596 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm749 = getelementptr inbounds %struct.DState, %struct.DState* %596, i32 0, i32 0
  %597 = load %struct.bz_stream*, %struct.bz_stream** %strm749, align 8
  %avail_in750 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %597, i32 0, i32 1
  %598 = load i32, i32* %avail_in750, align 8
  %cmp751 = icmp eq i32 %598, 0
  br i1 %cmp751, label %if.then753, label %if.end754

if.then753:                                       ; preds = %if.end748
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end754:                                        ; preds = %if.end748
  %599 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff755 = getelementptr inbounds %struct.DState, %struct.DState* %599, i32 0, i32 7
  %600 = load i32, i32* %bsBuff755, align 8
  %shl756 = shl i32 %600, 8
  %601 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm757 = getelementptr inbounds %struct.DState, %struct.DState* %601, i32 0, i32 0
  %602 = load %struct.bz_stream*, %struct.bz_stream** %strm757, align 8
  %next_in758 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %602, i32 0, i32 0
  %603 = load i8*, i8** %next_in758, align 8
  %604 = load i8, i8* %603, align 1
  %conv759 = zext i8 %604 to i32
  %or760 = or i32 %shl756, %conv759
  %605 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff761 = getelementptr inbounds %struct.DState, %struct.DState* %605, i32 0, i32 7
  store i32 %or760, i32* %bsBuff761, align 8
  %606 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive762 = getelementptr inbounds %struct.DState, %struct.DState* %606, i32 0, i32 8
  %607 = load i32, i32* %bsLive762, align 4
  %add763 = add nsw i32 %607, 8
  store i32 %add763, i32* %bsLive762, align 4
  %608 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm764 = getelementptr inbounds %struct.DState, %struct.DState* %608, i32 0, i32 0
  %609 = load %struct.bz_stream*, %struct.bz_stream** %strm764, align 8
  %next_in765 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %609, i32 0, i32 0
  %610 = load i8*, i8** %next_in765, align 8
  %incdec.ptr766 = getelementptr inbounds i8, i8* %610, i32 1
  store i8* %incdec.ptr766, i8** %next_in765, align 8
  %611 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm767 = getelementptr inbounds %struct.DState, %struct.DState* %611, i32 0, i32 0
  %612 = load %struct.bz_stream*, %struct.bz_stream** %strm767, align 8
  %avail_in768 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %612, i32 0, i32 1
  %613 = load i32, i32* %avail_in768, align 8
  %dec769 = add i32 %613, -1
  store i32 %dec769, i32* %avail_in768, align 8
  %614 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm770 = getelementptr inbounds %struct.DState, %struct.DState* %614, i32 0, i32 0
  %615 = load %struct.bz_stream*, %struct.bz_stream** %strm770, align 8
  %total_in_lo32771 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %615, i32 0, i32 2
  %616 = load i32, i32* %total_in_lo32771, align 4
  %inc772 = add i32 %616, 1
  store i32 %inc772, i32* %total_in_lo32771, align 4
  %617 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm773 = getelementptr inbounds %struct.DState, %struct.DState* %617, i32 0, i32 0
  %618 = load %struct.bz_stream*, %struct.bz_stream** %strm773, align 8
  %total_in_lo32774 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %618, i32 0, i32 2
  %619 = load i32, i32* %total_in_lo32774, align 4
  %cmp775 = icmp eq i32 %619, 0
  br i1 %cmp775, label %if.then777, label %if.end781

if.then777:                                       ; preds = %if.end754
  %620 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm778 = getelementptr inbounds %struct.DState, %struct.DState* %620, i32 0, i32 0
  %621 = load %struct.bz_stream*, %struct.bz_stream** %strm778, align 8
  %total_in_hi32779 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %621, i32 0, i32 3
  %622 = load i32, i32* %total_in_hi32779, align 8
  %inc780 = add i32 %622, 1
  store i32 %inc780, i32* %total_in_hi32779, align 8
  br label %if.end781

if.end781:                                        ; preds = %if.then777, %if.end754
  br label %while.body734

while.end782:                                     ; preds = %if.then738
  %623 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %storedBlockCRC783 = getelementptr inbounds %struct.DState, %struct.DState* %623, i32 0, i32 23
  %624 = load i32, i32* %storedBlockCRC783, align 8
  %shl784 = shl i32 %624, 8
  %625 = load i8, i8* %uc, align 1
  %conv785 = zext i8 %625 to i32
  %or786 = or i32 %shl784, %conv785
  %626 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %storedBlockCRC787 = getelementptr inbounds %struct.DState, %struct.DState* %626, i32 0, i32 23
  store i32 %or786, i32* %storedBlockCRC787, align 8
  br label %sw.bb788

sw.bb788:                                         ; preds = %if.end, %while.end782
  %627 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state789 = getelementptr inbounds %struct.DState, %struct.DState* %627, i32 0, i32 1
  store i32 23, i32* %state789, align 8
  br label %while.body790

while.body790:                                    ; preds = %sw.bb788, %if.end837
  %628 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive791 = getelementptr inbounds %struct.DState, %struct.DState* %628, i32 0, i32 8
  %629 = load i32, i32* %bsLive791, align 4
  %cmp792 = icmp sge i32 %629, 8
  br i1 %cmp792, label %if.then794, label %if.end804

if.then794:                                       ; preds = %while.body790
  %630 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff796 = getelementptr inbounds %struct.DState, %struct.DState* %630, i32 0, i32 7
  %631 = load i32, i32* %bsBuff796, align 8
  %632 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive797 = getelementptr inbounds %struct.DState, %struct.DState* %632, i32 0, i32 8
  %633 = load i32, i32* %bsLive797, align 4
  %sub798 = sub nsw i32 %633, 8
  %shr799 = lshr i32 %631, %sub798
  %and800 = and i32 %shr799, 255
  store i32 %and800, i32* %v795, align 4
  %634 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive801 = getelementptr inbounds %struct.DState, %struct.DState* %634, i32 0, i32 8
  %635 = load i32, i32* %bsLive801, align 4
  %sub802 = sub nsw i32 %635, 8
  store i32 %sub802, i32* %bsLive801, align 4
  %636 = load i32, i32* %v795, align 4
  %conv803 = trunc i32 %636 to i8
  store i8 %conv803, i8* %uc, align 1
  br label %while.end838

if.end804:                                        ; preds = %while.body790
  %637 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm805 = getelementptr inbounds %struct.DState, %struct.DState* %637, i32 0, i32 0
  %638 = load %struct.bz_stream*, %struct.bz_stream** %strm805, align 8
  %avail_in806 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %638, i32 0, i32 1
  %639 = load i32, i32* %avail_in806, align 8
  %cmp807 = icmp eq i32 %639, 0
  br i1 %cmp807, label %if.then809, label %if.end810

if.then809:                                       ; preds = %if.end804
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end810:                                        ; preds = %if.end804
  %640 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff811 = getelementptr inbounds %struct.DState, %struct.DState* %640, i32 0, i32 7
  %641 = load i32, i32* %bsBuff811, align 8
  %shl812 = shl i32 %641, 8
  %642 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm813 = getelementptr inbounds %struct.DState, %struct.DState* %642, i32 0, i32 0
  %643 = load %struct.bz_stream*, %struct.bz_stream** %strm813, align 8
  %next_in814 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %643, i32 0, i32 0
  %644 = load i8*, i8** %next_in814, align 8
  %645 = load i8, i8* %644, align 1
  %conv815 = zext i8 %645 to i32
  %or816 = or i32 %shl812, %conv815
  %646 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff817 = getelementptr inbounds %struct.DState, %struct.DState* %646, i32 0, i32 7
  store i32 %or816, i32* %bsBuff817, align 8
  %647 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive818 = getelementptr inbounds %struct.DState, %struct.DState* %647, i32 0, i32 8
  %648 = load i32, i32* %bsLive818, align 4
  %add819 = add nsw i32 %648, 8
  store i32 %add819, i32* %bsLive818, align 4
  %649 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm820 = getelementptr inbounds %struct.DState, %struct.DState* %649, i32 0, i32 0
  %650 = load %struct.bz_stream*, %struct.bz_stream** %strm820, align 8
  %next_in821 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %650, i32 0, i32 0
  %651 = load i8*, i8** %next_in821, align 8
  %incdec.ptr822 = getelementptr inbounds i8, i8* %651, i32 1
  store i8* %incdec.ptr822, i8** %next_in821, align 8
  %652 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm823 = getelementptr inbounds %struct.DState, %struct.DState* %652, i32 0, i32 0
  %653 = load %struct.bz_stream*, %struct.bz_stream** %strm823, align 8
  %avail_in824 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %653, i32 0, i32 1
  %654 = load i32, i32* %avail_in824, align 8
  %dec825 = add i32 %654, -1
  store i32 %dec825, i32* %avail_in824, align 8
  %655 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm826 = getelementptr inbounds %struct.DState, %struct.DState* %655, i32 0, i32 0
  %656 = load %struct.bz_stream*, %struct.bz_stream** %strm826, align 8
  %total_in_lo32827 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %656, i32 0, i32 2
  %657 = load i32, i32* %total_in_lo32827, align 4
  %inc828 = add i32 %657, 1
  store i32 %inc828, i32* %total_in_lo32827, align 4
  %658 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm829 = getelementptr inbounds %struct.DState, %struct.DState* %658, i32 0, i32 0
  %659 = load %struct.bz_stream*, %struct.bz_stream** %strm829, align 8
  %total_in_lo32830 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %659, i32 0, i32 2
  %660 = load i32, i32* %total_in_lo32830, align 4
  %cmp831 = icmp eq i32 %660, 0
  br i1 %cmp831, label %if.then833, label %if.end837

if.then833:                                       ; preds = %if.end810
  %661 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm834 = getelementptr inbounds %struct.DState, %struct.DState* %661, i32 0, i32 0
  %662 = load %struct.bz_stream*, %struct.bz_stream** %strm834, align 8
  %total_in_hi32835 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %662, i32 0, i32 3
  %663 = load i32, i32* %total_in_hi32835, align 8
  %inc836 = add i32 %663, 1
  store i32 %inc836, i32* %total_in_hi32835, align 8
  br label %if.end837

if.end837:                                        ; preds = %if.then833, %if.end810
  br label %while.body790

while.end838:                                     ; preds = %if.then794
  %664 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %storedBlockCRC839 = getelementptr inbounds %struct.DState, %struct.DState* %664, i32 0, i32 23
  %665 = load i32, i32* %storedBlockCRC839, align 8
  %shl840 = shl i32 %665, 8
  %666 = load i8, i8* %uc, align 1
  %conv841 = zext i8 %666 to i32
  %or842 = or i32 %shl840, %conv841
  %667 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %storedBlockCRC843 = getelementptr inbounds %struct.DState, %struct.DState* %667, i32 0, i32 23
  store i32 %or842, i32* %storedBlockCRC843, align 8
  br label %sw.bb844

sw.bb844:                                         ; preds = %if.end, %while.end838
  %668 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state845 = getelementptr inbounds %struct.DState, %struct.DState* %668, i32 0, i32 1
  store i32 24, i32* %state845, align 8
  br label %while.body846

while.body846:                                    ; preds = %sw.bb844, %if.end893
  %669 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive847 = getelementptr inbounds %struct.DState, %struct.DState* %669, i32 0, i32 8
  %670 = load i32, i32* %bsLive847, align 4
  %cmp848 = icmp sge i32 %670, 1
  br i1 %cmp848, label %if.then850, label %if.end860

if.then850:                                       ; preds = %while.body846
  %671 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff852 = getelementptr inbounds %struct.DState, %struct.DState* %671, i32 0, i32 7
  %672 = load i32, i32* %bsBuff852, align 8
  %673 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive853 = getelementptr inbounds %struct.DState, %struct.DState* %673, i32 0, i32 8
  %674 = load i32, i32* %bsLive853, align 4
  %sub854 = sub nsw i32 %674, 1
  %shr855 = lshr i32 %672, %sub854
  %and856 = and i32 %shr855, 1
  store i32 %and856, i32* %v851, align 4
  %675 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive857 = getelementptr inbounds %struct.DState, %struct.DState* %675, i32 0, i32 8
  %676 = load i32, i32* %bsLive857, align 4
  %sub858 = sub nsw i32 %676, 1
  store i32 %sub858, i32* %bsLive857, align 4
  %677 = load i32, i32* %v851, align 4
  %conv859 = trunc i32 %677 to i8
  %678 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %blockRandomised = getelementptr inbounds %struct.DState, %struct.DState* %678, i32 0, i32 4
  store i8 %conv859, i8* %blockRandomised, align 4
  br label %while.end894

if.end860:                                        ; preds = %while.body846
  %679 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm861 = getelementptr inbounds %struct.DState, %struct.DState* %679, i32 0, i32 0
  %680 = load %struct.bz_stream*, %struct.bz_stream** %strm861, align 8
  %avail_in862 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %680, i32 0, i32 1
  %681 = load i32, i32* %avail_in862, align 8
  %cmp863 = icmp eq i32 %681, 0
  br i1 %cmp863, label %if.then865, label %if.end866

if.then865:                                       ; preds = %if.end860
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end866:                                        ; preds = %if.end860
  %682 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff867 = getelementptr inbounds %struct.DState, %struct.DState* %682, i32 0, i32 7
  %683 = load i32, i32* %bsBuff867, align 8
  %shl868 = shl i32 %683, 8
  %684 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm869 = getelementptr inbounds %struct.DState, %struct.DState* %684, i32 0, i32 0
  %685 = load %struct.bz_stream*, %struct.bz_stream** %strm869, align 8
  %next_in870 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %685, i32 0, i32 0
  %686 = load i8*, i8** %next_in870, align 8
  %687 = load i8, i8* %686, align 1
  %conv871 = zext i8 %687 to i32
  %or872 = or i32 %shl868, %conv871
  %688 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff873 = getelementptr inbounds %struct.DState, %struct.DState* %688, i32 0, i32 7
  store i32 %or872, i32* %bsBuff873, align 8
  %689 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive874 = getelementptr inbounds %struct.DState, %struct.DState* %689, i32 0, i32 8
  %690 = load i32, i32* %bsLive874, align 4
  %add875 = add nsw i32 %690, 8
  store i32 %add875, i32* %bsLive874, align 4
  %691 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm876 = getelementptr inbounds %struct.DState, %struct.DState* %691, i32 0, i32 0
  %692 = load %struct.bz_stream*, %struct.bz_stream** %strm876, align 8
  %next_in877 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %692, i32 0, i32 0
  %693 = load i8*, i8** %next_in877, align 8
  %incdec.ptr878 = getelementptr inbounds i8, i8* %693, i32 1
  store i8* %incdec.ptr878, i8** %next_in877, align 8
  %694 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm879 = getelementptr inbounds %struct.DState, %struct.DState* %694, i32 0, i32 0
  %695 = load %struct.bz_stream*, %struct.bz_stream** %strm879, align 8
  %avail_in880 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %695, i32 0, i32 1
  %696 = load i32, i32* %avail_in880, align 8
  %dec881 = add i32 %696, -1
  store i32 %dec881, i32* %avail_in880, align 8
  %697 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm882 = getelementptr inbounds %struct.DState, %struct.DState* %697, i32 0, i32 0
  %698 = load %struct.bz_stream*, %struct.bz_stream** %strm882, align 8
  %total_in_lo32883 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %698, i32 0, i32 2
  %699 = load i32, i32* %total_in_lo32883, align 4
  %inc884 = add i32 %699, 1
  store i32 %inc884, i32* %total_in_lo32883, align 4
  %700 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm885 = getelementptr inbounds %struct.DState, %struct.DState* %700, i32 0, i32 0
  %701 = load %struct.bz_stream*, %struct.bz_stream** %strm885, align 8
  %total_in_lo32886 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %701, i32 0, i32 2
  %702 = load i32, i32* %total_in_lo32886, align 4
  %cmp887 = icmp eq i32 %702, 0
  br i1 %cmp887, label %if.then889, label %if.end893

if.then889:                                       ; preds = %if.end866
  %703 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm890 = getelementptr inbounds %struct.DState, %struct.DState* %703, i32 0, i32 0
  %704 = load %struct.bz_stream*, %struct.bz_stream** %strm890, align 8
  %total_in_hi32891 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %704, i32 0, i32 3
  %705 = load i32, i32* %total_in_hi32891, align 8
  %inc892 = add i32 %705, 1
  store i32 %inc892, i32* %total_in_hi32891, align 8
  br label %if.end893

if.end893:                                        ; preds = %if.then889, %if.end866
  br label %while.body846

while.end894:                                     ; preds = %if.then850
  %706 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %origPtr = getelementptr inbounds %struct.DState, %struct.DState* %706, i32 0, i32 13
  store i32 0, i32* %origPtr, align 8
  br label %sw.bb895

sw.bb895:                                         ; preds = %if.end, %while.end894
  %707 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state896 = getelementptr inbounds %struct.DState, %struct.DState* %707, i32 0, i32 1
  store i32 25, i32* %state896, align 8
  br label %while.body897

while.body897:                                    ; preds = %sw.bb895, %if.end944
  %708 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive898 = getelementptr inbounds %struct.DState, %struct.DState* %708, i32 0, i32 8
  %709 = load i32, i32* %bsLive898, align 4
  %cmp899 = icmp sge i32 %709, 8
  br i1 %cmp899, label %if.then901, label %if.end911

if.then901:                                       ; preds = %while.body897
  %710 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff903 = getelementptr inbounds %struct.DState, %struct.DState* %710, i32 0, i32 7
  %711 = load i32, i32* %bsBuff903, align 8
  %712 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive904 = getelementptr inbounds %struct.DState, %struct.DState* %712, i32 0, i32 8
  %713 = load i32, i32* %bsLive904, align 4
  %sub905 = sub nsw i32 %713, 8
  %shr906 = lshr i32 %711, %sub905
  %and907 = and i32 %shr906, 255
  store i32 %and907, i32* %v902, align 4
  %714 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive908 = getelementptr inbounds %struct.DState, %struct.DState* %714, i32 0, i32 8
  %715 = load i32, i32* %bsLive908, align 4
  %sub909 = sub nsw i32 %715, 8
  store i32 %sub909, i32* %bsLive908, align 4
  %716 = load i32, i32* %v902, align 4
  %conv910 = trunc i32 %716 to i8
  store i8 %conv910, i8* %uc, align 1
  br label %while.end945

if.end911:                                        ; preds = %while.body897
  %717 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm912 = getelementptr inbounds %struct.DState, %struct.DState* %717, i32 0, i32 0
  %718 = load %struct.bz_stream*, %struct.bz_stream** %strm912, align 8
  %avail_in913 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %718, i32 0, i32 1
  %719 = load i32, i32* %avail_in913, align 8
  %cmp914 = icmp eq i32 %719, 0
  br i1 %cmp914, label %if.then916, label %if.end917

if.then916:                                       ; preds = %if.end911
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end917:                                        ; preds = %if.end911
  %720 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff918 = getelementptr inbounds %struct.DState, %struct.DState* %720, i32 0, i32 7
  %721 = load i32, i32* %bsBuff918, align 8
  %shl919 = shl i32 %721, 8
  %722 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm920 = getelementptr inbounds %struct.DState, %struct.DState* %722, i32 0, i32 0
  %723 = load %struct.bz_stream*, %struct.bz_stream** %strm920, align 8
  %next_in921 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %723, i32 0, i32 0
  %724 = load i8*, i8** %next_in921, align 8
  %725 = load i8, i8* %724, align 1
  %conv922 = zext i8 %725 to i32
  %or923 = or i32 %shl919, %conv922
  %726 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff924 = getelementptr inbounds %struct.DState, %struct.DState* %726, i32 0, i32 7
  store i32 %or923, i32* %bsBuff924, align 8
  %727 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive925 = getelementptr inbounds %struct.DState, %struct.DState* %727, i32 0, i32 8
  %728 = load i32, i32* %bsLive925, align 4
  %add926 = add nsw i32 %728, 8
  store i32 %add926, i32* %bsLive925, align 4
  %729 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm927 = getelementptr inbounds %struct.DState, %struct.DState* %729, i32 0, i32 0
  %730 = load %struct.bz_stream*, %struct.bz_stream** %strm927, align 8
  %next_in928 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %730, i32 0, i32 0
  %731 = load i8*, i8** %next_in928, align 8
  %incdec.ptr929 = getelementptr inbounds i8, i8* %731, i32 1
  store i8* %incdec.ptr929, i8** %next_in928, align 8
  %732 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm930 = getelementptr inbounds %struct.DState, %struct.DState* %732, i32 0, i32 0
  %733 = load %struct.bz_stream*, %struct.bz_stream** %strm930, align 8
  %avail_in931 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %733, i32 0, i32 1
  %734 = load i32, i32* %avail_in931, align 8
  %dec932 = add i32 %734, -1
  store i32 %dec932, i32* %avail_in931, align 8
  %735 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm933 = getelementptr inbounds %struct.DState, %struct.DState* %735, i32 0, i32 0
  %736 = load %struct.bz_stream*, %struct.bz_stream** %strm933, align 8
  %total_in_lo32934 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %736, i32 0, i32 2
  %737 = load i32, i32* %total_in_lo32934, align 4
  %inc935 = add i32 %737, 1
  store i32 %inc935, i32* %total_in_lo32934, align 4
  %738 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm936 = getelementptr inbounds %struct.DState, %struct.DState* %738, i32 0, i32 0
  %739 = load %struct.bz_stream*, %struct.bz_stream** %strm936, align 8
  %total_in_lo32937 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %739, i32 0, i32 2
  %740 = load i32, i32* %total_in_lo32937, align 4
  %cmp938 = icmp eq i32 %740, 0
  br i1 %cmp938, label %if.then940, label %if.end944

if.then940:                                       ; preds = %if.end917
  %741 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm941 = getelementptr inbounds %struct.DState, %struct.DState* %741, i32 0, i32 0
  %742 = load %struct.bz_stream*, %struct.bz_stream** %strm941, align 8
  %total_in_hi32942 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %742, i32 0, i32 3
  %743 = load i32, i32* %total_in_hi32942, align 8
  %inc943 = add i32 %743, 1
  store i32 %inc943, i32* %total_in_hi32942, align 8
  br label %if.end944

if.end944:                                        ; preds = %if.then940, %if.end917
  br label %while.body897

while.end945:                                     ; preds = %if.then901
  %744 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %origPtr946 = getelementptr inbounds %struct.DState, %struct.DState* %744, i32 0, i32 13
  %745 = load i32, i32* %origPtr946, align 8
  %shl947 = shl i32 %745, 8
  %746 = load i8, i8* %uc, align 1
  %conv948 = zext i8 %746 to i32
  %or949 = or i32 %shl947, %conv948
  %747 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %origPtr950 = getelementptr inbounds %struct.DState, %struct.DState* %747, i32 0, i32 13
  store i32 %or949, i32* %origPtr950, align 8
  br label %sw.bb951

sw.bb951:                                         ; preds = %if.end, %while.end945
  %748 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state952 = getelementptr inbounds %struct.DState, %struct.DState* %748, i32 0, i32 1
  store i32 26, i32* %state952, align 8
  br label %while.body953

while.body953:                                    ; preds = %sw.bb951, %if.end1000
  %749 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive954 = getelementptr inbounds %struct.DState, %struct.DState* %749, i32 0, i32 8
  %750 = load i32, i32* %bsLive954, align 4
  %cmp955 = icmp sge i32 %750, 8
  br i1 %cmp955, label %if.then957, label %if.end967

if.then957:                                       ; preds = %while.body953
  %751 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff959 = getelementptr inbounds %struct.DState, %struct.DState* %751, i32 0, i32 7
  %752 = load i32, i32* %bsBuff959, align 8
  %753 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive960 = getelementptr inbounds %struct.DState, %struct.DState* %753, i32 0, i32 8
  %754 = load i32, i32* %bsLive960, align 4
  %sub961 = sub nsw i32 %754, 8
  %shr962 = lshr i32 %752, %sub961
  %and963 = and i32 %shr962, 255
  store i32 %and963, i32* %v958, align 4
  %755 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive964 = getelementptr inbounds %struct.DState, %struct.DState* %755, i32 0, i32 8
  %756 = load i32, i32* %bsLive964, align 4
  %sub965 = sub nsw i32 %756, 8
  store i32 %sub965, i32* %bsLive964, align 4
  %757 = load i32, i32* %v958, align 4
  %conv966 = trunc i32 %757 to i8
  store i8 %conv966, i8* %uc, align 1
  br label %while.end1001

if.end967:                                        ; preds = %while.body953
  %758 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm968 = getelementptr inbounds %struct.DState, %struct.DState* %758, i32 0, i32 0
  %759 = load %struct.bz_stream*, %struct.bz_stream** %strm968, align 8
  %avail_in969 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %759, i32 0, i32 1
  %760 = load i32, i32* %avail_in969, align 8
  %cmp970 = icmp eq i32 %760, 0
  br i1 %cmp970, label %if.then972, label %if.end973

if.then972:                                       ; preds = %if.end967
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end973:                                        ; preds = %if.end967
  %761 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff974 = getelementptr inbounds %struct.DState, %struct.DState* %761, i32 0, i32 7
  %762 = load i32, i32* %bsBuff974, align 8
  %shl975 = shl i32 %762, 8
  %763 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm976 = getelementptr inbounds %struct.DState, %struct.DState* %763, i32 0, i32 0
  %764 = load %struct.bz_stream*, %struct.bz_stream** %strm976, align 8
  %next_in977 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %764, i32 0, i32 0
  %765 = load i8*, i8** %next_in977, align 8
  %766 = load i8, i8* %765, align 1
  %conv978 = zext i8 %766 to i32
  %or979 = or i32 %shl975, %conv978
  %767 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff980 = getelementptr inbounds %struct.DState, %struct.DState* %767, i32 0, i32 7
  store i32 %or979, i32* %bsBuff980, align 8
  %768 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive981 = getelementptr inbounds %struct.DState, %struct.DState* %768, i32 0, i32 8
  %769 = load i32, i32* %bsLive981, align 4
  %add982 = add nsw i32 %769, 8
  store i32 %add982, i32* %bsLive981, align 4
  %770 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm983 = getelementptr inbounds %struct.DState, %struct.DState* %770, i32 0, i32 0
  %771 = load %struct.bz_stream*, %struct.bz_stream** %strm983, align 8
  %next_in984 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %771, i32 0, i32 0
  %772 = load i8*, i8** %next_in984, align 8
  %incdec.ptr985 = getelementptr inbounds i8, i8* %772, i32 1
  store i8* %incdec.ptr985, i8** %next_in984, align 8
  %773 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm986 = getelementptr inbounds %struct.DState, %struct.DState* %773, i32 0, i32 0
  %774 = load %struct.bz_stream*, %struct.bz_stream** %strm986, align 8
  %avail_in987 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %774, i32 0, i32 1
  %775 = load i32, i32* %avail_in987, align 8
  %dec988 = add i32 %775, -1
  store i32 %dec988, i32* %avail_in987, align 8
  %776 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm989 = getelementptr inbounds %struct.DState, %struct.DState* %776, i32 0, i32 0
  %777 = load %struct.bz_stream*, %struct.bz_stream** %strm989, align 8
  %total_in_lo32990 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %777, i32 0, i32 2
  %778 = load i32, i32* %total_in_lo32990, align 4
  %inc991 = add i32 %778, 1
  store i32 %inc991, i32* %total_in_lo32990, align 4
  %779 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm992 = getelementptr inbounds %struct.DState, %struct.DState* %779, i32 0, i32 0
  %780 = load %struct.bz_stream*, %struct.bz_stream** %strm992, align 8
  %total_in_lo32993 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %780, i32 0, i32 2
  %781 = load i32, i32* %total_in_lo32993, align 4
  %cmp994 = icmp eq i32 %781, 0
  br i1 %cmp994, label %if.then996, label %if.end1000

if.then996:                                       ; preds = %if.end973
  %782 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm997 = getelementptr inbounds %struct.DState, %struct.DState* %782, i32 0, i32 0
  %783 = load %struct.bz_stream*, %struct.bz_stream** %strm997, align 8
  %total_in_hi32998 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %783, i32 0, i32 3
  %784 = load i32, i32* %total_in_hi32998, align 8
  %inc999 = add i32 %784, 1
  store i32 %inc999, i32* %total_in_hi32998, align 8
  br label %if.end1000

if.end1000:                                       ; preds = %if.then996, %if.end973
  br label %while.body953

while.end1001:                                    ; preds = %if.then957
  %785 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %origPtr1002 = getelementptr inbounds %struct.DState, %struct.DState* %785, i32 0, i32 13
  %786 = load i32, i32* %origPtr1002, align 8
  %shl1003 = shl i32 %786, 8
  %787 = load i8, i8* %uc, align 1
  %conv1004 = zext i8 %787 to i32
  %or1005 = or i32 %shl1003, %conv1004
  %788 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %origPtr1006 = getelementptr inbounds %struct.DState, %struct.DState* %788, i32 0, i32 13
  store i32 %or1005, i32* %origPtr1006, align 8
  br label %sw.bb1007

sw.bb1007:                                        ; preds = %if.end, %while.end1001
  %789 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state1008 = getelementptr inbounds %struct.DState, %struct.DState* %789, i32 0, i32 1
  store i32 27, i32* %state1008, align 8
  br label %while.body1009

while.body1009:                                   ; preds = %sw.bb1007, %if.end1056
  %790 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1010 = getelementptr inbounds %struct.DState, %struct.DState* %790, i32 0, i32 8
  %791 = load i32, i32* %bsLive1010, align 4
  %cmp1011 = icmp sge i32 %791, 8
  br i1 %cmp1011, label %if.then1013, label %if.end1023

if.then1013:                                      ; preds = %while.body1009
  %792 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1015 = getelementptr inbounds %struct.DState, %struct.DState* %792, i32 0, i32 7
  %793 = load i32, i32* %bsBuff1015, align 8
  %794 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1016 = getelementptr inbounds %struct.DState, %struct.DState* %794, i32 0, i32 8
  %795 = load i32, i32* %bsLive1016, align 4
  %sub1017 = sub nsw i32 %795, 8
  %shr1018 = lshr i32 %793, %sub1017
  %and1019 = and i32 %shr1018, 255
  store i32 %and1019, i32* %v1014, align 4
  %796 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1020 = getelementptr inbounds %struct.DState, %struct.DState* %796, i32 0, i32 8
  %797 = load i32, i32* %bsLive1020, align 4
  %sub1021 = sub nsw i32 %797, 8
  store i32 %sub1021, i32* %bsLive1020, align 4
  %798 = load i32, i32* %v1014, align 4
  %conv1022 = trunc i32 %798 to i8
  store i8 %conv1022, i8* %uc, align 1
  br label %while.end1057

if.end1023:                                       ; preds = %while.body1009
  %799 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1024 = getelementptr inbounds %struct.DState, %struct.DState* %799, i32 0, i32 0
  %800 = load %struct.bz_stream*, %struct.bz_stream** %strm1024, align 8
  %avail_in1025 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %800, i32 0, i32 1
  %801 = load i32, i32* %avail_in1025, align 8
  %cmp1026 = icmp eq i32 %801, 0
  br i1 %cmp1026, label %if.then1028, label %if.end1029

if.then1028:                                      ; preds = %if.end1023
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end1029:                                       ; preds = %if.end1023
  %802 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1030 = getelementptr inbounds %struct.DState, %struct.DState* %802, i32 0, i32 7
  %803 = load i32, i32* %bsBuff1030, align 8
  %shl1031 = shl i32 %803, 8
  %804 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1032 = getelementptr inbounds %struct.DState, %struct.DState* %804, i32 0, i32 0
  %805 = load %struct.bz_stream*, %struct.bz_stream** %strm1032, align 8
  %next_in1033 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %805, i32 0, i32 0
  %806 = load i8*, i8** %next_in1033, align 8
  %807 = load i8, i8* %806, align 1
  %conv1034 = zext i8 %807 to i32
  %or1035 = or i32 %shl1031, %conv1034
  %808 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1036 = getelementptr inbounds %struct.DState, %struct.DState* %808, i32 0, i32 7
  store i32 %or1035, i32* %bsBuff1036, align 8
  %809 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1037 = getelementptr inbounds %struct.DState, %struct.DState* %809, i32 0, i32 8
  %810 = load i32, i32* %bsLive1037, align 4
  %add1038 = add nsw i32 %810, 8
  store i32 %add1038, i32* %bsLive1037, align 4
  %811 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1039 = getelementptr inbounds %struct.DState, %struct.DState* %811, i32 0, i32 0
  %812 = load %struct.bz_stream*, %struct.bz_stream** %strm1039, align 8
  %next_in1040 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %812, i32 0, i32 0
  %813 = load i8*, i8** %next_in1040, align 8
  %incdec.ptr1041 = getelementptr inbounds i8, i8* %813, i32 1
  store i8* %incdec.ptr1041, i8** %next_in1040, align 8
  %814 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1042 = getelementptr inbounds %struct.DState, %struct.DState* %814, i32 0, i32 0
  %815 = load %struct.bz_stream*, %struct.bz_stream** %strm1042, align 8
  %avail_in1043 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %815, i32 0, i32 1
  %816 = load i32, i32* %avail_in1043, align 8
  %dec1044 = add i32 %816, -1
  store i32 %dec1044, i32* %avail_in1043, align 8
  %817 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1045 = getelementptr inbounds %struct.DState, %struct.DState* %817, i32 0, i32 0
  %818 = load %struct.bz_stream*, %struct.bz_stream** %strm1045, align 8
  %total_in_lo321046 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %818, i32 0, i32 2
  %819 = load i32, i32* %total_in_lo321046, align 4
  %inc1047 = add i32 %819, 1
  store i32 %inc1047, i32* %total_in_lo321046, align 4
  %820 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1048 = getelementptr inbounds %struct.DState, %struct.DState* %820, i32 0, i32 0
  %821 = load %struct.bz_stream*, %struct.bz_stream** %strm1048, align 8
  %total_in_lo321049 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %821, i32 0, i32 2
  %822 = load i32, i32* %total_in_lo321049, align 4
  %cmp1050 = icmp eq i32 %822, 0
  br i1 %cmp1050, label %if.then1052, label %if.end1056

if.then1052:                                      ; preds = %if.end1029
  %823 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1053 = getelementptr inbounds %struct.DState, %struct.DState* %823, i32 0, i32 0
  %824 = load %struct.bz_stream*, %struct.bz_stream** %strm1053, align 8
  %total_in_hi321054 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %824, i32 0, i32 3
  %825 = load i32, i32* %total_in_hi321054, align 8
  %inc1055 = add i32 %825, 1
  store i32 %inc1055, i32* %total_in_hi321054, align 8
  br label %if.end1056

if.end1056:                                       ; preds = %if.then1052, %if.end1029
  br label %while.body1009

while.end1057:                                    ; preds = %if.then1013
  %826 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %origPtr1058 = getelementptr inbounds %struct.DState, %struct.DState* %826, i32 0, i32 13
  %827 = load i32, i32* %origPtr1058, align 8
  %shl1059 = shl i32 %827, 8
  %828 = load i8, i8* %uc, align 1
  %conv1060 = zext i8 %828 to i32
  %or1061 = or i32 %shl1059, %conv1060
  %829 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %origPtr1062 = getelementptr inbounds %struct.DState, %struct.DState* %829, i32 0, i32 13
  store i32 %or1061, i32* %origPtr1062, align 8
  %830 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %origPtr1063 = getelementptr inbounds %struct.DState, %struct.DState* %830, i32 0, i32 13
  %831 = load i32, i32* %origPtr1063, align 8
  %cmp1064 = icmp slt i32 %831, 0
  br i1 %cmp1064, label %if.then1066, label %if.end1067

if.then1066:                                      ; preds = %while.end1057
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end1067:                                       ; preds = %while.end1057
  %832 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %origPtr1068 = getelementptr inbounds %struct.DState, %struct.DState* %832, i32 0, i32 13
  %833 = load i32, i32* %origPtr1068, align 8
  %834 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %blockSize100k1069 = getelementptr inbounds %struct.DState, %struct.DState* %834, i32 0, i32 9
  %835 = load i32, i32* %blockSize100k1069, align 8
  %mul1070 = mul nsw i32 100000, %835
  %add1071 = add nsw i32 10, %mul1070
  %cmp1072 = icmp sgt i32 %833, %add1071
  br i1 %cmp1072, label %if.then1074, label %if.end1075

if.then1074:                                      ; preds = %if.end1067
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end1075:                                       ; preds = %if.end1067
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end1075
  %836 = load i32, i32* %i, align 4
  %cmp1076 = icmp slt i32 %836, 16
  br i1 %cmp1076, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %sw.bb1078

sw.bb1078:                                        ; preds = %if.end, %for.body
  %837 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state1079 = getelementptr inbounds %struct.DState, %struct.DState* %837, i32 0, i32 1
  store i32 28, i32* %state1079, align 8
  br label %while.body1080

while.body1080:                                   ; preds = %sw.bb1078, %if.end1127
  %838 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1081 = getelementptr inbounds %struct.DState, %struct.DState* %838, i32 0, i32 8
  %839 = load i32, i32* %bsLive1081, align 4
  %cmp1082 = icmp sge i32 %839, 1
  br i1 %cmp1082, label %if.then1084, label %if.end1094

if.then1084:                                      ; preds = %while.body1080
  %840 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1086 = getelementptr inbounds %struct.DState, %struct.DState* %840, i32 0, i32 7
  %841 = load i32, i32* %bsBuff1086, align 8
  %842 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1087 = getelementptr inbounds %struct.DState, %struct.DState* %842, i32 0, i32 8
  %843 = load i32, i32* %bsLive1087, align 4
  %sub1088 = sub nsw i32 %843, 1
  %shr1089 = lshr i32 %841, %sub1088
  %and1090 = and i32 %shr1089, 1
  store i32 %and1090, i32* %v1085, align 4
  %844 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1091 = getelementptr inbounds %struct.DState, %struct.DState* %844, i32 0, i32 8
  %845 = load i32, i32* %bsLive1091, align 4
  %sub1092 = sub nsw i32 %845, 1
  store i32 %sub1092, i32* %bsLive1091, align 4
  %846 = load i32, i32* %v1085, align 4
  %conv1093 = trunc i32 %846 to i8
  store i8 %conv1093, i8* %uc, align 1
  br label %while.end1128

if.end1094:                                       ; preds = %while.body1080
  %847 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1095 = getelementptr inbounds %struct.DState, %struct.DState* %847, i32 0, i32 0
  %848 = load %struct.bz_stream*, %struct.bz_stream** %strm1095, align 8
  %avail_in1096 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %848, i32 0, i32 1
  %849 = load i32, i32* %avail_in1096, align 8
  %cmp1097 = icmp eq i32 %849, 0
  br i1 %cmp1097, label %if.then1099, label %if.end1100

if.then1099:                                      ; preds = %if.end1094
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end1100:                                       ; preds = %if.end1094
  %850 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1101 = getelementptr inbounds %struct.DState, %struct.DState* %850, i32 0, i32 7
  %851 = load i32, i32* %bsBuff1101, align 8
  %shl1102 = shl i32 %851, 8
  %852 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1103 = getelementptr inbounds %struct.DState, %struct.DState* %852, i32 0, i32 0
  %853 = load %struct.bz_stream*, %struct.bz_stream** %strm1103, align 8
  %next_in1104 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %853, i32 0, i32 0
  %854 = load i8*, i8** %next_in1104, align 8
  %855 = load i8, i8* %854, align 1
  %conv1105 = zext i8 %855 to i32
  %or1106 = or i32 %shl1102, %conv1105
  %856 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1107 = getelementptr inbounds %struct.DState, %struct.DState* %856, i32 0, i32 7
  store i32 %or1106, i32* %bsBuff1107, align 8
  %857 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1108 = getelementptr inbounds %struct.DState, %struct.DState* %857, i32 0, i32 8
  %858 = load i32, i32* %bsLive1108, align 4
  %add1109 = add nsw i32 %858, 8
  store i32 %add1109, i32* %bsLive1108, align 4
  %859 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1110 = getelementptr inbounds %struct.DState, %struct.DState* %859, i32 0, i32 0
  %860 = load %struct.bz_stream*, %struct.bz_stream** %strm1110, align 8
  %next_in1111 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %860, i32 0, i32 0
  %861 = load i8*, i8** %next_in1111, align 8
  %incdec.ptr1112 = getelementptr inbounds i8, i8* %861, i32 1
  store i8* %incdec.ptr1112, i8** %next_in1111, align 8
  %862 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1113 = getelementptr inbounds %struct.DState, %struct.DState* %862, i32 0, i32 0
  %863 = load %struct.bz_stream*, %struct.bz_stream** %strm1113, align 8
  %avail_in1114 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %863, i32 0, i32 1
  %864 = load i32, i32* %avail_in1114, align 8
  %dec1115 = add i32 %864, -1
  store i32 %dec1115, i32* %avail_in1114, align 8
  %865 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1116 = getelementptr inbounds %struct.DState, %struct.DState* %865, i32 0, i32 0
  %866 = load %struct.bz_stream*, %struct.bz_stream** %strm1116, align 8
  %total_in_lo321117 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %866, i32 0, i32 2
  %867 = load i32, i32* %total_in_lo321117, align 4
  %inc1118 = add i32 %867, 1
  store i32 %inc1118, i32* %total_in_lo321117, align 4
  %868 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1119 = getelementptr inbounds %struct.DState, %struct.DState* %868, i32 0, i32 0
  %869 = load %struct.bz_stream*, %struct.bz_stream** %strm1119, align 8
  %total_in_lo321120 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %869, i32 0, i32 2
  %870 = load i32, i32* %total_in_lo321120, align 4
  %cmp1121 = icmp eq i32 %870, 0
  br i1 %cmp1121, label %if.then1123, label %if.end1127

if.then1123:                                      ; preds = %if.end1100
  %871 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1124 = getelementptr inbounds %struct.DState, %struct.DState* %871, i32 0, i32 0
  %872 = load %struct.bz_stream*, %struct.bz_stream** %strm1124, align 8
  %total_in_hi321125 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %872, i32 0, i32 3
  %873 = load i32, i32* %total_in_hi321125, align 8
  %inc1126 = add i32 %873, 1
  store i32 %inc1126, i32* %total_in_hi321125, align 8
  br label %if.end1127

if.end1127:                                       ; preds = %if.then1123, %if.end1100
  br label %while.body1080

while.end1128:                                    ; preds = %if.then1084
  %874 = load i8, i8* %uc, align 1
  %conv1129 = zext i8 %874 to i32
  %cmp1130 = icmp eq i32 %conv1129, 1
  br i1 %cmp1130, label %if.then1132, label %if.else1133

if.then1132:                                      ; preds = %while.end1128
  %875 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %inUse16 = getelementptr inbounds %struct.DState, %struct.DState* %875, i32 0, i32 29
  %876 = load i32, i32* %i, align 4
  %idxprom = sext i32 %876 to i64
  %arrayidx = getelementptr inbounds [16 x i8], [16 x i8]* %inUse16, i64 0, i64 %idxprom
  store i8 1, i8* %arrayidx, align 1
  br label %if.end1137

if.else1133:                                      ; preds = %while.end1128
  %877 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %inUse161134 = getelementptr inbounds %struct.DState, %struct.DState* %877, i32 0, i32 29
  %878 = load i32, i32* %i, align 4
  %idxprom1135 = sext i32 %878 to i64
  %arrayidx1136 = getelementptr inbounds [16 x i8], [16 x i8]* %inUse161134, i64 0, i64 %idxprom1135
  store i8 0, i8* %arrayidx1136, align 1
  br label %if.end1137

if.end1137:                                       ; preds = %if.else1133, %if.then1132
  br label %for.inc

for.inc:                                          ; preds = %if.end1137
  %879 = load i32, i32* %i, align 4
  %inc1138 = add nsw i32 %879, 1
  store i32 %inc1138, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond1139

for.cond1139:                                     ; preds = %for.inc1145, %for.end
  %880 = load i32, i32* %i, align 4
  %cmp1140 = icmp slt i32 %880, 256
  br i1 %cmp1140, label %for.body1142, label %for.end1147

for.body1142:                                     ; preds = %for.cond1139
  %881 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %inUse = getelementptr inbounds %struct.DState, %struct.DState* %881, i32 0, i32 28
  %882 = load i32, i32* %i, align 4
  %idxprom1143 = sext i32 %882 to i64
  %arrayidx1144 = getelementptr inbounds [256 x i8], [256 x i8]* %inUse, i64 0, i64 %idxprom1143
  store i8 0, i8* %arrayidx1144, align 1
  br label %for.inc1145

for.inc1145:                                      ; preds = %for.body1142
  %883 = load i32, i32* %i, align 4
  %inc1146 = add nsw i32 %883, 1
  store i32 %inc1146, i32* %i, align 4
  br label %for.cond1139

for.end1147:                                      ; preds = %for.cond1139
  store i32 0, i32* %i, align 4
  br label %for.cond1148

for.cond1148:                                     ; preds = %for.inc1226, %for.end1147
  %884 = load i32, i32* %i, align 4
  %cmp1149 = icmp slt i32 %884, 16
  br i1 %cmp1149, label %for.body1151, label %for.end1228

for.body1151:                                     ; preds = %for.cond1148
  %885 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %inUse161152 = getelementptr inbounds %struct.DState, %struct.DState* %885, i32 0, i32 29
  %886 = load i32, i32* %i, align 4
  %idxprom1153 = sext i32 %886 to i64
  %arrayidx1154 = getelementptr inbounds [16 x i8], [16 x i8]* %inUse161152, i64 0, i64 %idxprom1153
  %887 = load i8, i8* %arrayidx1154, align 1
  %tobool1155 = icmp ne i8 %887, 0
  br i1 %tobool1155, label %if.then1156, label %if.end1225

if.then1156:                                      ; preds = %for.body1151
  store i32 0, i32* %j, align 4
  br label %for.cond1157

for.cond1157:                                     ; preds = %for.inc1222, %if.then1156
  %888 = load i32, i32* %j, align 4
  %cmp1158 = icmp slt i32 %888, 16
  br i1 %cmp1158, label %for.body1160, label %for.end1224

for.body1160:                                     ; preds = %for.cond1157
  br label %sw.bb1161

sw.bb1161:                                        ; preds = %if.end, %for.body1160
  %889 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state1162 = getelementptr inbounds %struct.DState, %struct.DState* %889, i32 0, i32 1
  store i32 29, i32* %state1162, align 8
  br label %while.body1163

while.body1163:                                   ; preds = %sw.bb1161, %if.end1210
  %890 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1164 = getelementptr inbounds %struct.DState, %struct.DState* %890, i32 0, i32 8
  %891 = load i32, i32* %bsLive1164, align 4
  %cmp1165 = icmp sge i32 %891, 1
  br i1 %cmp1165, label %if.then1167, label %if.end1177

if.then1167:                                      ; preds = %while.body1163
  %892 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1169 = getelementptr inbounds %struct.DState, %struct.DState* %892, i32 0, i32 7
  %893 = load i32, i32* %bsBuff1169, align 8
  %894 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1170 = getelementptr inbounds %struct.DState, %struct.DState* %894, i32 0, i32 8
  %895 = load i32, i32* %bsLive1170, align 4
  %sub1171 = sub nsw i32 %895, 1
  %shr1172 = lshr i32 %893, %sub1171
  %and1173 = and i32 %shr1172, 1
  store i32 %and1173, i32* %v1168, align 4
  %896 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1174 = getelementptr inbounds %struct.DState, %struct.DState* %896, i32 0, i32 8
  %897 = load i32, i32* %bsLive1174, align 4
  %sub1175 = sub nsw i32 %897, 1
  store i32 %sub1175, i32* %bsLive1174, align 4
  %898 = load i32, i32* %v1168, align 4
  %conv1176 = trunc i32 %898 to i8
  store i8 %conv1176, i8* %uc, align 1
  br label %while.end1211

if.end1177:                                       ; preds = %while.body1163
  %899 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1178 = getelementptr inbounds %struct.DState, %struct.DState* %899, i32 0, i32 0
  %900 = load %struct.bz_stream*, %struct.bz_stream** %strm1178, align 8
  %avail_in1179 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %900, i32 0, i32 1
  %901 = load i32, i32* %avail_in1179, align 8
  %cmp1180 = icmp eq i32 %901, 0
  br i1 %cmp1180, label %if.then1182, label %if.end1183

if.then1182:                                      ; preds = %if.end1177
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end1183:                                       ; preds = %if.end1177
  %902 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1184 = getelementptr inbounds %struct.DState, %struct.DState* %902, i32 0, i32 7
  %903 = load i32, i32* %bsBuff1184, align 8
  %shl1185 = shl i32 %903, 8
  %904 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1186 = getelementptr inbounds %struct.DState, %struct.DState* %904, i32 0, i32 0
  %905 = load %struct.bz_stream*, %struct.bz_stream** %strm1186, align 8
  %next_in1187 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %905, i32 0, i32 0
  %906 = load i8*, i8** %next_in1187, align 8
  %907 = load i8, i8* %906, align 1
  %conv1188 = zext i8 %907 to i32
  %or1189 = or i32 %shl1185, %conv1188
  %908 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1190 = getelementptr inbounds %struct.DState, %struct.DState* %908, i32 0, i32 7
  store i32 %or1189, i32* %bsBuff1190, align 8
  %909 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1191 = getelementptr inbounds %struct.DState, %struct.DState* %909, i32 0, i32 8
  %910 = load i32, i32* %bsLive1191, align 4
  %add1192 = add nsw i32 %910, 8
  store i32 %add1192, i32* %bsLive1191, align 4
  %911 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1193 = getelementptr inbounds %struct.DState, %struct.DState* %911, i32 0, i32 0
  %912 = load %struct.bz_stream*, %struct.bz_stream** %strm1193, align 8
  %next_in1194 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %912, i32 0, i32 0
  %913 = load i8*, i8** %next_in1194, align 8
  %incdec.ptr1195 = getelementptr inbounds i8, i8* %913, i32 1
  store i8* %incdec.ptr1195, i8** %next_in1194, align 8
  %914 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1196 = getelementptr inbounds %struct.DState, %struct.DState* %914, i32 0, i32 0
  %915 = load %struct.bz_stream*, %struct.bz_stream** %strm1196, align 8
  %avail_in1197 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %915, i32 0, i32 1
  %916 = load i32, i32* %avail_in1197, align 8
  %dec1198 = add i32 %916, -1
  store i32 %dec1198, i32* %avail_in1197, align 8
  %917 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1199 = getelementptr inbounds %struct.DState, %struct.DState* %917, i32 0, i32 0
  %918 = load %struct.bz_stream*, %struct.bz_stream** %strm1199, align 8
  %total_in_lo321200 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %918, i32 0, i32 2
  %919 = load i32, i32* %total_in_lo321200, align 4
  %inc1201 = add i32 %919, 1
  store i32 %inc1201, i32* %total_in_lo321200, align 4
  %920 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1202 = getelementptr inbounds %struct.DState, %struct.DState* %920, i32 0, i32 0
  %921 = load %struct.bz_stream*, %struct.bz_stream** %strm1202, align 8
  %total_in_lo321203 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %921, i32 0, i32 2
  %922 = load i32, i32* %total_in_lo321203, align 4
  %cmp1204 = icmp eq i32 %922, 0
  br i1 %cmp1204, label %if.then1206, label %if.end1210

if.then1206:                                      ; preds = %if.end1183
  %923 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1207 = getelementptr inbounds %struct.DState, %struct.DState* %923, i32 0, i32 0
  %924 = load %struct.bz_stream*, %struct.bz_stream** %strm1207, align 8
  %total_in_hi321208 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %924, i32 0, i32 3
  %925 = load i32, i32* %total_in_hi321208, align 8
  %inc1209 = add i32 %925, 1
  store i32 %inc1209, i32* %total_in_hi321208, align 8
  br label %if.end1210

if.end1210:                                       ; preds = %if.then1206, %if.end1183
  br label %while.body1163

while.end1211:                                    ; preds = %if.then1167
  %926 = load i8, i8* %uc, align 1
  %conv1212 = zext i8 %926 to i32
  %cmp1213 = icmp eq i32 %conv1212, 1
  br i1 %cmp1213, label %if.then1215, label %if.end1221

if.then1215:                                      ; preds = %while.end1211
  %927 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %inUse1216 = getelementptr inbounds %struct.DState, %struct.DState* %927, i32 0, i32 28
  %928 = load i32, i32* %i, align 4
  %mul1217 = mul nsw i32 %928, 16
  %929 = load i32, i32* %j, align 4
  %add1218 = add nsw i32 %mul1217, %929
  %idxprom1219 = sext i32 %add1218 to i64
  %arrayidx1220 = getelementptr inbounds [256 x i8], [256 x i8]* %inUse1216, i64 0, i64 %idxprom1219
  store i8 1, i8* %arrayidx1220, align 1
  br label %if.end1221

if.end1221:                                       ; preds = %if.then1215, %while.end1211
  br label %for.inc1222

for.inc1222:                                      ; preds = %if.end1221
  %930 = load i32, i32* %j, align 4
  %inc1223 = add nsw i32 %930, 1
  store i32 %inc1223, i32* %j, align 4
  br label %for.cond1157

for.end1224:                                      ; preds = %for.cond1157
  br label %if.end1225

if.end1225:                                       ; preds = %for.end1224, %for.body1151
  br label %for.inc1226

for.inc1226:                                      ; preds = %if.end1225
  %931 = load i32, i32* %i, align 4
  %inc1227 = add nsw i32 %931, 1
  store i32 %inc1227, i32* %i, align 4
  br label %for.cond1148

for.end1228:                                      ; preds = %for.cond1148
  %932 = load %struct.DState*, %struct.DState** %s.addr, align 8
  call void @makeMaps_d(%struct.DState* %932)
  %933 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nInUse = getelementptr inbounds %struct.DState, %struct.DState* %933, i32 0, i32 27
  %934 = load i32, i32* %nInUse, align 8
  %cmp1229 = icmp eq i32 %934, 0
  br i1 %cmp1229, label %if.then1231, label %if.end1232

if.then1231:                                      ; preds = %for.end1228
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end1232:                                       ; preds = %for.end1228
  %935 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nInUse1233 = getelementptr inbounds %struct.DState, %struct.DState* %935, i32 0, i32 27
  %936 = load i32, i32* %nInUse1233, align 8
  %add1234 = add nsw i32 %936, 2
  store i32 %add1234, i32* %alphaSize, align 4
  br label %sw.bb1235

sw.bb1235:                                        ; preds = %if.end, %if.end1232
  %937 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state1236 = getelementptr inbounds %struct.DState, %struct.DState* %937, i32 0, i32 1
  store i32 30, i32* %state1236, align 8
  br label %while.body1237

while.body1237:                                   ; preds = %sw.bb1235, %if.end1283
  %938 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1238 = getelementptr inbounds %struct.DState, %struct.DState* %938, i32 0, i32 8
  %939 = load i32, i32* %bsLive1238, align 4
  %cmp1239 = icmp sge i32 %939, 3
  br i1 %cmp1239, label %if.then1241, label %if.end1250

if.then1241:                                      ; preds = %while.body1237
  %940 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1243 = getelementptr inbounds %struct.DState, %struct.DState* %940, i32 0, i32 7
  %941 = load i32, i32* %bsBuff1243, align 8
  %942 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1244 = getelementptr inbounds %struct.DState, %struct.DState* %942, i32 0, i32 8
  %943 = load i32, i32* %bsLive1244, align 4
  %sub1245 = sub nsw i32 %943, 3
  %shr1246 = lshr i32 %941, %sub1245
  %and1247 = and i32 %shr1246, 7
  store i32 %and1247, i32* %v1242, align 4
  %944 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1248 = getelementptr inbounds %struct.DState, %struct.DState* %944, i32 0, i32 8
  %945 = load i32, i32* %bsLive1248, align 4
  %sub1249 = sub nsw i32 %945, 3
  store i32 %sub1249, i32* %bsLive1248, align 4
  %946 = load i32, i32* %v1242, align 4
  store i32 %946, i32* %nGroups, align 4
  br label %while.end1284

if.end1250:                                       ; preds = %while.body1237
  %947 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1251 = getelementptr inbounds %struct.DState, %struct.DState* %947, i32 0, i32 0
  %948 = load %struct.bz_stream*, %struct.bz_stream** %strm1251, align 8
  %avail_in1252 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %948, i32 0, i32 1
  %949 = load i32, i32* %avail_in1252, align 8
  %cmp1253 = icmp eq i32 %949, 0
  br i1 %cmp1253, label %if.then1255, label %if.end1256

if.then1255:                                      ; preds = %if.end1250
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end1256:                                       ; preds = %if.end1250
  %950 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1257 = getelementptr inbounds %struct.DState, %struct.DState* %950, i32 0, i32 7
  %951 = load i32, i32* %bsBuff1257, align 8
  %shl1258 = shl i32 %951, 8
  %952 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1259 = getelementptr inbounds %struct.DState, %struct.DState* %952, i32 0, i32 0
  %953 = load %struct.bz_stream*, %struct.bz_stream** %strm1259, align 8
  %next_in1260 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %953, i32 0, i32 0
  %954 = load i8*, i8** %next_in1260, align 8
  %955 = load i8, i8* %954, align 1
  %conv1261 = zext i8 %955 to i32
  %or1262 = or i32 %shl1258, %conv1261
  %956 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1263 = getelementptr inbounds %struct.DState, %struct.DState* %956, i32 0, i32 7
  store i32 %or1262, i32* %bsBuff1263, align 8
  %957 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1264 = getelementptr inbounds %struct.DState, %struct.DState* %957, i32 0, i32 8
  %958 = load i32, i32* %bsLive1264, align 4
  %add1265 = add nsw i32 %958, 8
  store i32 %add1265, i32* %bsLive1264, align 4
  %959 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1266 = getelementptr inbounds %struct.DState, %struct.DState* %959, i32 0, i32 0
  %960 = load %struct.bz_stream*, %struct.bz_stream** %strm1266, align 8
  %next_in1267 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %960, i32 0, i32 0
  %961 = load i8*, i8** %next_in1267, align 8
  %incdec.ptr1268 = getelementptr inbounds i8, i8* %961, i32 1
  store i8* %incdec.ptr1268, i8** %next_in1267, align 8
  %962 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1269 = getelementptr inbounds %struct.DState, %struct.DState* %962, i32 0, i32 0
  %963 = load %struct.bz_stream*, %struct.bz_stream** %strm1269, align 8
  %avail_in1270 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %963, i32 0, i32 1
  %964 = load i32, i32* %avail_in1270, align 8
  %dec1271 = add i32 %964, -1
  store i32 %dec1271, i32* %avail_in1270, align 8
  %965 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1272 = getelementptr inbounds %struct.DState, %struct.DState* %965, i32 0, i32 0
  %966 = load %struct.bz_stream*, %struct.bz_stream** %strm1272, align 8
  %total_in_lo321273 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %966, i32 0, i32 2
  %967 = load i32, i32* %total_in_lo321273, align 4
  %inc1274 = add i32 %967, 1
  store i32 %inc1274, i32* %total_in_lo321273, align 4
  %968 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1275 = getelementptr inbounds %struct.DState, %struct.DState* %968, i32 0, i32 0
  %969 = load %struct.bz_stream*, %struct.bz_stream** %strm1275, align 8
  %total_in_lo321276 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %969, i32 0, i32 2
  %970 = load i32, i32* %total_in_lo321276, align 4
  %cmp1277 = icmp eq i32 %970, 0
  br i1 %cmp1277, label %if.then1279, label %if.end1283

if.then1279:                                      ; preds = %if.end1256
  %971 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1280 = getelementptr inbounds %struct.DState, %struct.DState* %971, i32 0, i32 0
  %972 = load %struct.bz_stream*, %struct.bz_stream** %strm1280, align 8
  %total_in_hi321281 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %972, i32 0, i32 3
  %973 = load i32, i32* %total_in_hi321281, align 8
  %inc1282 = add i32 %973, 1
  store i32 %inc1282, i32* %total_in_hi321281, align 8
  br label %if.end1283

if.end1283:                                       ; preds = %if.then1279, %if.end1256
  br label %while.body1237

while.end1284:                                    ; preds = %if.then1241
  %974 = load i32, i32* %nGroups, align 4
  %cmp1285 = icmp slt i32 %974, 2
  br i1 %cmp1285, label %if.then1290, label %lor.lhs.false1287

lor.lhs.false1287:                                ; preds = %while.end1284
  %975 = load i32, i32* %nGroups, align 4
  %cmp1288 = icmp sgt i32 %975, 6
  br i1 %cmp1288, label %if.then1290, label %if.end1291

if.then1290:                                      ; preds = %lor.lhs.false1287, %while.end1284
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end1291:                                       ; preds = %lor.lhs.false1287
  br label %sw.bb1292

sw.bb1292:                                        ; preds = %if.end, %if.end1291
  %976 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state1293 = getelementptr inbounds %struct.DState, %struct.DState* %976, i32 0, i32 1
  store i32 31, i32* %state1293, align 8
  br label %while.body1294

while.body1294:                                   ; preds = %sw.bb1292, %if.end1340
  %977 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1295 = getelementptr inbounds %struct.DState, %struct.DState* %977, i32 0, i32 8
  %978 = load i32, i32* %bsLive1295, align 4
  %cmp1296 = icmp sge i32 %978, 15
  br i1 %cmp1296, label %if.then1298, label %if.end1307

if.then1298:                                      ; preds = %while.body1294
  %979 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1300 = getelementptr inbounds %struct.DState, %struct.DState* %979, i32 0, i32 7
  %980 = load i32, i32* %bsBuff1300, align 8
  %981 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1301 = getelementptr inbounds %struct.DState, %struct.DState* %981, i32 0, i32 8
  %982 = load i32, i32* %bsLive1301, align 4
  %sub1302 = sub nsw i32 %982, 15
  %shr1303 = lshr i32 %980, %sub1302
  %and1304 = and i32 %shr1303, 32767
  store i32 %and1304, i32* %v1299, align 4
  %983 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1305 = getelementptr inbounds %struct.DState, %struct.DState* %983, i32 0, i32 8
  %984 = load i32, i32* %bsLive1305, align 4
  %sub1306 = sub nsw i32 %984, 15
  store i32 %sub1306, i32* %bsLive1305, align 4
  %985 = load i32, i32* %v1299, align 4
  store i32 %985, i32* %nSelectors, align 4
  br label %while.end1341

if.end1307:                                       ; preds = %while.body1294
  %986 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1308 = getelementptr inbounds %struct.DState, %struct.DState* %986, i32 0, i32 0
  %987 = load %struct.bz_stream*, %struct.bz_stream** %strm1308, align 8
  %avail_in1309 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %987, i32 0, i32 1
  %988 = load i32, i32* %avail_in1309, align 8
  %cmp1310 = icmp eq i32 %988, 0
  br i1 %cmp1310, label %if.then1312, label %if.end1313

if.then1312:                                      ; preds = %if.end1307
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end1313:                                       ; preds = %if.end1307
  %989 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1314 = getelementptr inbounds %struct.DState, %struct.DState* %989, i32 0, i32 7
  %990 = load i32, i32* %bsBuff1314, align 8
  %shl1315 = shl i32 %990, 8
  %991 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1316 = getelementptr inbounds %struct.DState, %struct.DState* %991, i32 0, i32 0
  %992 = load %struct.bz_stream*, %struct.bz_stream** %strm1316, align 8
  %next_in1317 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %992, i32 0, i32 0
  %993 = load i8*, i8** %next_in1317, align 8
  %994 = load i8, i8* %993, align 1
  %conv1318 = zext i8 %994 to i32
  %or1319 = or i32 %shl1315, %conv1318
  %995 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1320 = getelementptr inbounds %struct.DState, %struct.DState* %995, i32 0, i32 7
  store i32 %or1319, i32* %bsBuff1320, align 8
  %996 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1321 = getelementptr inbounds %struct.DState, %struct.DState* %996, i32 0, i32 8
  %997 = load i32, i32* %bsLive1321, align 4
  %add1322 = add nsw i32 %997, 8
  store i32 %add1322, i32* %bsLive1321, align 4
  %998 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1323 = getelementptr inbounds %struct.DState, %struct.DState* %998, i32 0, i32 0
  %999 = load %struct.bz_stream*, %struct.bz_stream** %strm1323, align 8
  %next_in1324 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %999, i32 0, i32 0
  %1000 = load i8*, i8** %next_in1324, align 8
  %incdec.ptr1325 = getelementptr inbounds i8, i8* %1000, i32 1
  store i8* %incdec.ptr1325, i8** %next_in1324, align 8
  %1001 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1326 = getelementptr inbounds %struct.DState, %struct.DState* %1001, i32 0, i32 0
  %1002 = load %struct.bz_stream*, %struct.bz_stream** %strm1326, align 8
  %avail_in1327 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1002, i32 0, i32 1
  %1003 = load i32, i32* %avail_in1327, align 8
  %dec1328 = add i32 %1003, -1
  store i32 %dec1328, i32* %avail_in1327, align 8
  %1004 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1329 = getelementptr inbounds %struct.DState, %struct.DState* %1004, i32 0, i32 0
  %1005 = load %struct.bz_stream*, %struct.bz_stream** %strm1329, align 8
  %total_in_lo321330 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1005, i32 0, i32 2
  %1006 = load i32, i32* %total_in_lo321330, align 4
  %inc1331 = add i32 %1006, 1
  store i32 %inc1331, i32* %total_in_lo321330, align 4
  %1007 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1332 = getelementptr inbounds %struct.DState, %struct.DState* %1007, i32 0, i32 0
  %1008 = load %struct.bz_stream*, %struct.bz_stream** %strm1332, align 8
  %total_in_lo321333 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1008, i32 0, i32 2
  %1009 = load i32, i32* %total_in_lo321333, align 4
  %cmp1334 = icmp eq i32 %1009, 0
  br i1 %cmp1334, label %if.then1336, label %if.end1340

if.then1336:                                      ; preds = %if.end1313
  %1010 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1337 = getelementptr inbounds %struct.DState, %struct.DState* %1010, i32 0, i32 0
  %1011 = load %struct.bz_stream*, %struct.bz_stream** %strm1337, align 8
  %total_in_hi321338 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1011, i32 0, i32 3
  %1012 = load i32, i32* %total_in_hi321338, align 8
  %inc1339 = add i32 %1012, 1
  store i32 %inc1339, i32* %total_in_hi321338, align 8
  br label %if.end1340

if.end1340:                                       ; preds = %if.then1336, %if.end1313
  br label %while.body1294

while.end1341:                                    ; preds = %if.then1298
  %1013 = load i32, i32* %nSelectors, align 4
  %cmp1342 = icmp slt i32 %1013, 1
  br i1 %cmp1342, label %if.then1344, label %if.end1345

if.then1344:                                      ; preds = %while.end1341
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end1345:                                       ; preds = %while.end1341
  store i32 0, i32* %i, align 4
  br label %for.cond1346

for.cond1346:                                     ; preds = %for.inc1417, %if.end1345
  %1014 = load i32, i32* %i, align 4
  %1015 = load i32, i32* %nSelectors, align 4
  %cmp1347 = icmp slt i32 %1014, %1015
  br i1 %cmp1347, label %for.body1349, label %for.end1419

for.body1349:                                     ; preds = %for.cond1346
  store i32 0, i32* %j, align 4
  br label %while.body1350

while.body1350:                                   ; preds = %for.body1349, %if.end1412
  br label %sw.bb1351

sw.bb1351:                                        ; preds = %if.end, %while.body1350
  %1016 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state1352 = getelementptr inbounds %struct.DState, %struct.DState* %1016, i32 0, i32 1
  store i32 32, i32* %state1352, align 8
  br label %while.body1354

while.body1354:                                   ; preds = %sw.bb1351, %if.end1401
  %1017 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1355 = getelementptr inbounds %struct.DState, %struct.DState* %1017, i32 0, i32 8
  %1018 = load i32, i32* %bsLive1355, align 4
  %cmp1356 = icmp sge i32 %1018, 1
  br i1 %cmp1356, label %if.then1358, label %if.end1368

if.then1358:                                      ; preds = %while.body1354
  %1019 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1360 = getelementptr inbounds %struct.DState, %struct.DState* %1019, i32 0, i32 7
  %1020 = load i32, i32* %bsBuff1360, align 8
  %1021 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1361 = getelementptr inbounds %struct.DState, %struct.DState* %1021, i32 0, i32 8
  %1022 = load i32, i32* %bsLive1361, align 4
  %sub1362 = sub nsw i32 %1022, 1
  %shr1363 = lshr i32 %1020, %sub1362
  %and1364 = and i32 %shr1363, 1
  store i32 %and1364, i32* %v1359, align 4
  %1023 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1365 = getelementptr inbounds %struct.DState, %struct.DState* %1023, i32 0, i32 8
  %1024 = load i32, i32* %bsLive1365, align 4
  %sub1366 = sub nsw i32 %1024, 1
  store i32 %sub1366, i32* %bsLive1365, align 4
  %1025 = load i32, i32* %v1359, align 4
  %conv1367 = trunc i32 %1025 to i8
  store i8 %conv1367, i8* %uc, align 1
  br label %while.end1402

if.end1368:                                       ; preds = %while.body1354
  %1026 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1369 = getelementptr inbounds %struct.DState, %struct.DState* %1026, i32 0, i32 0
  %1027 = load %struct.bz_stream*, %struct.bz_stream** %strm1369, align 8
  %avail_in1370 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1027, i32 0, i32 1
  %1028 = load i32, i32* %avail_in1370, align 8
  %cmp1371 = icmp eq i32 %1028, 0
  br i1 %cmp1371, label %if.then1373, label %if.end1374

if.then1373:                                      ; preds = %if.end1368
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end1374:                                       ; preds = %if.end1368
  %1029 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1375 = getelementptr inbounds %struct.DState, %struct.DState* %1029, i32 0, i32 7
  %1030 = load i32, i32* %bsBuff1375, align 8
  %shl1376 = shl i32 %1030, 8
  %1031 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1377 = getelementptr inbounds %struct.DState, %struct.DState* %1031, i32 0, i32 0
  %1032 = load %struct.bz_stream*, %struct.bz_stream** %strm1377, align 8
  %next_in1378 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1032, i32 0, i32 0
  %1033 = load i8*, i8** %next_in1378, align 8
  %1034 = load i8, i8* %1033, align 1
  %conv1379 = zext i8 %1034 to i32
  %or1380 = or i32 %shl1376, %conv1379
  %1035 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1381 = getelementptr inbounds %struct.DState, %struct.DState* %1035, i32 0, i32 7
  store i32 %or1380, i32* %bsBuff1381, align 8
  %1036 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1382 = getelementptr inbounds %struct.DState, %struct.DState* %1036, i32 0, i32 8
  %1037 = load i32, i32* %bsLive1382, align 4
  %add1383 = add nsw i32 %1037, 8
  store i32 %add1383, i32* %bsLive1382, align 4
  %1038 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1384 = getelementptr inbounds %struct.DState, %struct.DState* %1038, i32 0, i32 0
  %1039 = load %struct.bz_stream*, %struct.bz_stream** %strm1384, align 8
  %next_in1385 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1039, i32 0, i32 0
  %1040 = load i8*, i8** %next_in1385, align 8
  %incdec.ptr1386 = getelementptr inbounds i8, i8* %1040, i32 1
  store i8* %incdec.ptr1386, i8** %next_in1385, align 8
  %1041 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1387 = getelementptr inbounds %struct.DState, %struct.DState* %1041, i32 0, i32 0
  %1042 = load %struct.bz_stream*, %struct.bz_stream** %strm1387, align 8
  %avail_in1388 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1042, i32 0, i32 1
  %1043 = load i32, i32* %avail_in1388, align 8
  %dec1389 = add i32 %1043, -1
  store i32 %dec1389, i32* %avail_in1388, align 8
  %1044 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1390 = getelementptr inbounds %struct.DState, %struct.DState* %1044, i32 0, i32 0
  %1045 = load %struct.bz_stream*, %struct.bz_stream** %strm1390, align 8
  %total_in_lo321391 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1045, i32 0, i32 2
  %1046 = load i32, i32* %total_in_lo321391, align 4
  %inc1392 = add i32 %1046, 1
  store i32 %inc1392, i32* %total_in_lo321391, align 4
  %1047 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1393 = getelementptr inbounds %struct.DState, %struct.DState* %1047, i32 0, i32 0
  %1048 = load %struct.bz_stream*, %struct.bz_stream** %strm1393, align 8
  %total_in_lo321394 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1048, i32 0, i32 2
  %1049 = load i32, i32* %total_in_lo321394, align 4
  %cmp1395 = icmp eq i32 %1049, 0
  br i1 %cmp1395, label %if.then1397, label %if.end1401

if.then1397:                                      ; preds = %if.end1374
  %1050 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1398 = getelementptr inbounds %struct.DState, %struct.DState* %1050, i32 0, i32 0
  %1051 = load %struct.bz_stream*, %struct.bz_stream** %strm1398, align 8
  %total_in_hi321399 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1051, i32 0, i32 3
  %1052 = load i32, i32* %total_in_hi321399, align 8
  %inc1400 = add i32 %1052, 1
  store i32 %inc1400, i32* %total_in_hi321399, align 8
  br label %if.end1401

if.end1401:                                       ; preds = %if.then1397, %if.end1374
  br label %while.body1354

while.end1402:                                    ; preds = %if.then1358
  %1053 = load i8, i8* %uc, align 1
  %conv1403 = zext i8 %1053 to i32
  %cmp1404 = icmp eq i32 %conv1403, 0
  br i1 %cmp1404, label %if.then1406, label %if.end1407

if.then1406:                                      ; preds = %while.end1402
  br label %while.end1413

if.end1407:                                       ; preds = %while.end1402
  %1054 = load i32, i32* %j, align 4
  %inc1408 = add nsw i32 %1054, 1
  store i32 %inc1408, i32* %j, align 4
  %1055 = load i32, i32* %j, align 4
  %1056 = load i32, i32* %nGroups, align 4
  %cmp1409 = icmp sge i32 %1055, %1056
  br i1 %cmp1409, label %if.then1411, label %if.end1412

if.then1411:                                      ; preds = %if.end1407
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end1412:                                       ; preds = %if.end1407
  br label %while.body1350

while.end1413:                                    ; preds = %if.then1406
  %1057 = load i32, i32* %j, align 4
  %conv1414 = trunc i32 %1057 to i8
  %1058 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %selectorMtf = getelementptr inbounds %struct.DState, %struct.DState* %1058, i32 0, i32 34
  %1059 = load i32, i32* %i, align 4
  %idxprom1415 = sext i32 %1059 to i64
  %arrayidx1416 = getelementptr inbounds [18002 x i8], [18002 x i8]* %selectorMtf, i64 0, i64 %idxprom1415
  store i8 %conv1414, i8* %arrayidx1416, align 1
  br label %for.inc1417

for.inc1417:                                      ; preds = %while.end1413
  %1060 = load i32, i32* %i, align 4
  %inc1418 = add nsw i32 %1060, 1
  store i32 %inc1418, i32* %i, align 4
  br label %for.cond1346

for.end1419:                                      ; preds = %for.cond1346
  store i8 0, i8* %v1420, align 1
  br label %for.cond1421

for.cond1421:                                     ; preds = %for.inc1428, %for.end1419
  %1061 = load i8, i8* %v1420, align 1
  %conv1422 = zext i8 %1061 to i32
  %1062 = load i32, i32* %nGroups, align 4
  %cmp1423 = icmp slt i32 %conv1422, %1062
  br i1 %cmp1423, label %for.body1425, label %for.end1430

for.body1425:                                     ; preds = %for.cond1421
  %1063 = load i8, i8* %v1420, align 1
  %1064 = load i8, i8* %v1420, align 1
  %idxprom1426 = zext i8 %1064 to i64
  %arrayidx1427 = getelementptr inbounds [6 x i8], [6 x i8]* %pos, i64 0, i64 %idxprom1426
  store i8 %1063, i8* %arrayidx1427, align 1
  br label %for.inc1428

for.inc1428:                                      ; preds = %for.body1425
  %1065 = load i8, i8* %v1420, align 1
  %inc1429 = add i8 %1065, 1
  store i8 %inc1429, i8* %v1420, align 1
  br label %for.cond1421

for.end1430:                                      ; preds = %for.cond1421
  store i32 0, i32* %i, align 4
  br label %for.cond1431

for.cond1431:                                     ; preds = %for.inc1455, %for.end1430
  %1066 = load i32, i32* %i, align 4
  %1067 = load i32, i32* %nSelectors, align 4
  %cmp1432 = icmp slt i32 %1066, %1067
  br i1 %cmp1432, label %for.body1434, label %for.end1457

for.body1434:                                     ; preds = %for.cond1431
  %1068 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %selectorMtf1435 = getelementptr inbounds %struct.DState, %struct.DState* %1068, i32 0, i32 34
  %1069 = load i32, i32* %i, align 4
  %idxprom1436 = sext i32 %1069 to i64
  %arrayidx1437 = getelementptr inbounds [18002 x i8], [18002 x i8]* %selectorMtf1435, i64 0, i64 %idxprom1436
  %1070 = load i8, i8* %arrayidx1437, align 1
  store i8 %1070, i8* %v1420, align 1
  %1071 = load i8, i8* %v1420, align 1
  %idxprom1438 = zext i8 %1071 to i64
  %arrayidx1439 = getelementptr inbounds [6 x i8], [6 x i8]* %pos, i64 0, i64 %idxprom1438
  %1072 = load i8, i8* %arrayidx1439, align 1
  store i8 %1072, i8* %tmp, align 1
  br label %while.cond

while.cond:                                       ; preds = %while.body1443, %for.body1434
  %1073 = load i8, i8* %v1420, align 1
  %conv1440 = zext i8 %1073 to i32
  %cmp1441 = icmp sgt i32 %conv1440, 0
  br i1 %cmp1441, label %while.body1443, label %while.end1451

while.body1443:                                   ; preds = %while.cond
  %1074 = load i8, i8* %v1420, align 1
  %conv1444 = zext i8 %1074 to i32
  %sub1445 = sub nsw i32 %conv1444, 1
  %idxprom1446 = sext i32 %sub1445 to i64
  %arrayidx1447 = getelementptr inbounds [6 x i8], [6 x i8]* %pos, i64 0, i64 %idxprom1446
  %1075 = load i8, i8* %arrayidx1447, align 1
  %1076 = load i8, i8* %v1420, align 1
  %idxprom1448 = zext i8 %1076 to i64
  %arrayidx1449 = getelementptr inbounds [6 x i8], [6 x i8]* %pos, i64 0, i64 %idxprom1448
  store i8 %1075, i8* %arrayidx1449, align 1
  %1077 = load i8, i8* %v1420, align 1
  %dec1450 = add i8 %1077, -1
  store i8 %dec1450, i8* %v1420, align 1
  br label %while.cond

while.end1451:                                    ; preds = %while.cond
  %1078 = load i8, i8* %tmp, align 1
  %arrayidx1452 = getelementptr inbounds [6 x i8], [6 x i8]* %pos, i64 0, i64 0
  store i8 %1078, i8* %arrayidx1452, align 1
  %1079 = load i8, i8* %tmp, align 1
  %1080 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %selector = getelementptr inbounds %struct.DState, %struct.DState* %1080, i32 0, i32 33
  %1081 = load i32, i32* %i, align 4
  %idxprom1453 = sext i32 %1081 to i64
  %arrayidx1454 = getelementptr inbounds [18002 x i8], [18002 x i8]* %selector, i64 0, i64 %idxprom1453
  store i8 %1079, i8* %arrayidx1454, align 1
  br label %for.inc1455

for.inc1455:                                      ; preds = %while.end1451
  %1082 = load i32, i32* %i, align 4
  %inc1456 = add nsw i32 %1082, 1
  store i32 %inc1456, i32* %i, align 4
  br label %for.cond1431

for.end1457:                                      ; preds = %for.cond1431
  store i32 0, i32* %t, align 4
  br label %for.cond1458

for.cond1458:                                     ; preds = %for.inc1652, %for.end1457
  %1083 = load i32, i32* %t, align 4
  %1084 = load i32, i32* %nGroups, align 4
  %cmp1459 = icmp slt i32 %1083, %1084
  br i1 %cmp1459, label %for.body1461, label %for.end1654

for.body1461:                                     ; preds = %for.cond1458
  br label %sw.bb1462

sw.bb1462:                                        ; preds = %if.end, %for.body1461
  %1085 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state1463 = getelementptr inbounds %struct.DState, %struct.DState* %1085, i32 0, i32 1
  store i32 33, i32* %state1463, align 8
  br label %while.body1465

while.body1465:                                   ; preds = %sw.bb1462, %if.end1511
  %1086 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1466 = getelementptr inbounds %struct.DState, %struct.DState* %1086, i32 0, i32 8
  %1087 = load i32, i32* %bsLive1466, align 4
  %cmp1467 = icmp sge i32 %1087, 5
  br i1 %cmp1467, label %if.then1469, label %if.end1478

if.then1469:                                      ; preds = %while.body1465
  %1088 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1471 = getelementptr inbounds %struct.DState, %struct.DState* %1088, i32 0, i32 7
  %1089 = load i32, i32* %bsBuff1471, align 8
  %1090 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1472 = getelementptr inbounds %struct.DState, %struct.DState* %1090, i32 0, i32 8
  %1091 = load i32, i32* %bsLive1472, align 4
  %sub1473 = sub nsw i32 %1091, 5
  %shr1474 = lshr i32 %1089, %sub1473
  %and1475 = and i32 %shr1474, 31
  store i32 %and1475, i32* %v1470, align 4
  %1092 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1476 = getelementptr inbounds %struct.DState, %struct.DState* %1092, i32 0, i32 8
  %1093 = load i32, i32* %bsLive1476, align 4
  %sub1477 = sub nsw i32 %1093, 5
  store i32 %sub1477, i32* %bsLive1476, align 4
  %1094 = load i32, i32* %v1470, align 4
  store i32 %1094, i32* %curr, align 4
  br label %while.end1512

if.end1478:                                       ; preds = %while.body1465
  %1095 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1479 = getelementptr inbounds %struct.DState, %struct.DState* %1095, i32 0, i32 0
  %1096 = load %struct.bz_stream*, %struct.bz_stream** %strm1479, align 8
  %avail_in1480 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1096, i32 0, i32 1
  %1097 = load i32, i32* %avail_in1480, align 8
  %cmp1481 = icmp eq i32 %1097, 0
  br i1 %cmp1481, label %if.then1483, label %if.end1484

if.then1483:                                      ; preds = %if.end1478
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end1484:                                       ; preds = %if.end1478
  %1098 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1485 = getelementptr inbounds %struct.DState, %struct.DState* %1098, i32 0, i32 7
  %1099 = load i32, i32* %bsBuff1485, align 8
  %shl1486 = shl i32 %1099, 8
  %1100 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1487 = getelementptr inbounds %struct.DState, %struct.DState* %1100, i32 0, i32 0
  %1101 = load %struct.bz_stream*, %struct.bz_stream** %strm1487, align 8
  %next_in1488 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1101, i32 0, i32 0
  %1102 = load i8*, i8** %next_in1488, align 8
  %1103 = load i8, i8* %1102, align 1
  %conv1489 = zext i8 %1103 to i32
  %or1490 = or i32 %shl1486, %conv1489
  %1104 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1491 = getelementptr inbounds %struct.DState, %struct.DState* %1104, i32 0, i32 7
  store i32 %or1490, i32* %bsBuff1491, align 8
  %1105 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1492 = getelementptr inbounds %struct.DState, %struct.DState* %1105, i32 0, i32 8
  %1106 = load i32, i32* %bsLive1492, align 4
  %add1493 = add nsw i32 %1106, 8
  store i32 %add1493, i32* %bsLive1492, align 4
  %1107 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1494 = getelementptr inbounds %struct.DState, %struct.DState* %1107, i32 0, i32 0
  %1108 = load %struct.bz_stream*, %struct.bz_stream** %strm1494, align 8
  %next_in1495 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1108, i32 0, i32 0
  %1109 = load i8*, i8** %next_in1495, align 8
  %incdec.ptr1496 = getelementptr inbounds i8, i8* %1109, i32 1
  store i8* %incdec.ptr1496, i8** %next_in1495, align 8
  %1110 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1497 = getelementptr inbounds %struct.DState, %struct.DState* %1110, i32 0, i32 0
  %1111 = load %struct.bz_stream*, %struct.bz_stream** %strm1497, align 8
  %avail_in1498 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1111, i32 0, i32 1
  %1112 = load i32, i32* %avail_in1498, align 8
  %dec1499 = add i32 %1112, -1
  store i32 %dec1499, i32* %avail_in1498, align 8
  %1113 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1500 = getelementptr inbounds %struct.DState, %struct.DState* %1113, i32 0, i32 0
  %1114 = load %struct.bz_stream*, %struct.bz_stream** %strm1500, align 8
  %total_in_lo321501 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1114, i32 0, i32 2
  %1115 = load i32, i32* %total_in_lo321501, align 4
  %inc1502 = add i32 %1115, 1
  store i32 %inc1502, i32* %total_in_lo321501, align 4
  %1116 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1503 = getelementptr inbounds %struct.DState, %struct.DState* %1116, i32 0, i32 0
  %1117 = load %struct.bz_stream*, %struct.bz_stream** %strm1503, align 8
  %total_in_lo321504 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1117, i32 0, i32 2
  %1118 = load i32, i32* %total_in_lo321504, align 4
  %cmp1505 = icmp eq i32 %1118, 0
  br i1 %cmp1505, label %if.then1507, label %if.end1511

if.then1507:                                      ; preds = %if.end1484
  %1119 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1508 = getelementptr inbounds %struct.DState, %struct.DState* %1119, i32 0, i32 0
  %1120 = load %struct.bz_stream*, %struct.bz_stream** %strm1508, align 8
  %total_in_hi321509 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1120, i32 0, i32 3
  %1121 = load i32, i32* %total_in_hi321509, align 8
  %inc1510 = add i32 %1121, 1
  store i32 %inc1510, i32* %total_in_hi321509, align 8
  br label %if.end1511

if.end1511:                                       ; preds = %if.then1507, %if.end1484
  br label %while.body1465

while.end1512:                                    ; preds = %if.then1469
  store i32 0, i32* %i, align 4
  br label %for.cond1513

for.cond1513:                                     ; preds = %for.inc1649, %while.end1512
  %1122 = load i32, i32* %i, align 4
  %1123 = load i32, i32* %alphaSize, align 4
  %cmp1514 = icmp slt i32 %1122, %1123
  br i1 %cmp1514, label %for.body1516, label %for.end1651

for.body1516:                                     ; preds = %for.cond1513
  br label %while.body1518

while.body1518:                                   ; preds = %for.body1516, %if.end1642
  %1124 = load i32, i32* %curr, align 4
  %cmp1519 = icmp slt i32 %1124, 1
  br i1 %cmp1519, label %if.then1524, label %lor.lhs.false1521

lor.lhs.false1521:                                ; preds = %while.body1518
  %1125 = load i32, i32* %curr, align 4
  %cmp1522 = icmp sgt i32 %1125, 20
  br i1 %cmp1522, label %if.then1524, label %if.end1525

if.then1524:                                      ; preds = %lor.lhs.false1521, %while.body1518
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end1525:                                       ; preds = %lor.lhs.false1521
  br label %sw.bb1526

sw.bb1526:                                        ; preds = %if.end, %if.end1525
  %1126 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state1527 = getelementptr inbounds %struct.DState, %struct.DState* %1126, i32 0, i32 1
  store i32 34, i32* %state1527, align 8
  br label %while.body1529

while.body1529:                                   ; preds = %sw.bb1526, %if.end1576
  %1127 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1530 = getelementptr inbounds %struct.DState, %struct.DState* %1127, i32 0, i32 8
  %1128 = load i32, i32* %bsLive1530, align 4
  %cmp1531 = icmp sge i32 %1128, 1
  br i1 %cmp1531, label %if.then1533, label %if.end1543

if.then1533:                                      ; preds = %while.body1529
  %1129 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1535 = getelementptr inbounds %struct.DState, %struct.DState* %1129, i32 0, i32 7
  %1130 = load i32, i32* %bsBuff1535, align 8
  %1131 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1536 = getelementptr inbounds %struct.DState, %struct.DState* %1131, i32 0, i32 8
  %1132 = load i32, i32* %bsLive1536, align 4
  %sub1537 = sub nsw i32 %1132, 1
  %shr1538 = lshr i32 %1130, %sub1537
  %and1539 = and i32 %shr1538, 1
  store i32 %and1539, i32* %v1534, align 4
  %1133 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1540 = getelementptr inbounds %struct.DState, %struct.DState* %1133, i32 0, i32 8
  %1134 = load i32, i32* %bsLive1540, align 4
  %sub1541 = sub nsw i32 %1134, 1
  store i32 %sub1541, i32* %bsLive1540, align 4
  %1135 = load i32, i32* %v1534, align 4
  %conv1542 = trunc i32 %1135 to i8
  store i8 %conv1542, i8* %uc, align 1
  br label %while.end1577

if.end1543:                                       ; preds = %while.body1529
  %1136 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1544 = getelementptr inbounds %struct.DState, %struct.DState* %1136, i32 0, i32 0
  %1137 = load %struct.bz_stream*, %struct.bz_stream** %strm1544, align 8
  %avail_in1545 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1137, i32 0, i32 1
  %1138 = load i32, i32* %avail_in1545, align 8
  %cmp1546 = icmp eq i32 %1138, 0
  br i1 %cmp1546, label %if.then1548, label %if.end1549

if.then1548:                                      ; preds = %if.end1543
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end1549:                                       ; preds = %if.end1543
  %1139 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1550 = getelementptr inbounds %struct.DState, %struct.DState* %1139, i32 0, i32 7
  %1140 = load i32, i32* %bsBuff1550, align 8
  %shl1551 = shl i32 %1140, 8
  %1141 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1552 = getelementptr inbounds %struct.DState, %struct.DState* %1141, i32 0, i32 0
  %1142 = load %struct.bz_stream*, %struct.bz_stream** %strm1552, align 8
  %next_in1553 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1142, i32 0, i32 0
  %1143 = load i8*, i8** %next_in1553, align 8
  %1144 = load i8, i8* %1143, align 1
  %conv1554 = zext i8 %1144 to i32
  %or1555 = or i32 %shl1551, %conv1554
  %1145 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1556 = getelementptr inbounds %struct.DState, %struct.DState* %1145, i32 0, i32 7
  store i32 %or1555, i32* %bsBuff1556, align 8
  %1146 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1557 = getelementptr inbounds %struct.DState, %struct.DState* %1146, i32 0, i32 8
  %1147 = load i32, i32* %bsLive1557, align 4
  %add1558 = add nsw i32 %1147, 8
  store i32 %add1558, i32* %bsLive1557, align 4
  %1148 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1559 = getelementptr inbounds %struct.DState, %struct.DState* %1148, i32 0, i32 0
  %1149 = load %struct.bz_stream*, %struct.bz_stream** %strm1559, align 8
  %next_in1560 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1149, i32 0, i32 0
  %1150 = load i8*, i8** %next_in1560, align 8
  %incdec.ptr1561 = getelementptr inbounds i8, i8* %1150, i32 1
  store i8* %incdec.ptr1561, i8** %next_in1560, align 8
  %1151 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1562 = getelementptr inbounds %struct.DState, %struct.DState* %1151, i32 0, i32 0
  %1152 = load %struct.bz_stream*, %struct.bz_stream** %strm1562, align 8
  %avail_in1563 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1152, i32 0, i32 1
  %1153 = load i32, i32* %avail_in1563, align 8
  %dec1564 = add i32 %1153, -1
  store i32 %dec1564, i32* %avail_in1563, align 8
  %1154 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1565 = getelementptr inbounds %struct.DState, %struct.DState* %1154, i32 0, i32 0
  %1155 = load %struct.bz_stream*, %struct.bz_stream** %strm1565, align 8
  %total_in_lo321566 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1155, i32 0, i32 2
  %1156 = load i32, i32* %total_in_lo321566, align 4
  %inc1567 = add i32 %1156, 1
  store i32 %inc1567, i32* %total_in_lo321566, align 4
  %1157 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1568 = getelementptr inbounds %struct.DState, %struct.DState* %1157, i32 0, i32 0
  %1158 = load %struct.bz_stream*, %struct.bz_stream** %strm1568, align 8
  %total_in_lo321569 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1158, i32 0, i32 2
  %1159 = load i32, i32* %total_in_lo321569, align 4
  %cmp1570 = icmp eq i32 %1159, 0
  br i1 %cmp1570, label %if.then1572, label %if.end1576

if.then1572:                                      ; preds = %if.end1549
  %1160 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1573 = getelementptr inbounds %struct.DState, %struct.DState* %1160, i32 0, i32 0
  %1161 = load %struct.bz_stream*, %struct.bz_stream** %strm1573, align 8
  %total_in_hi321574 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1161, i32 0, i32 3
  %1162 = load i32, i32* %total_in_hi321574, align 8
  %inc1575 = add i32 %1162, 1
  store i32 %inc1575, i32* %total_in_hi321574, align 8
  br label %if.end1576

if.end1576:                                       ; preds = %if.then1572, %if.end1549
  br label %while.body1529

while.end1577:                                    ; preds = %if.then1533
  %1163 = load i8, i8* %uc, align 1
  %conv1578 = zext i8 %1163 to i32
  %cmp1579 = icmp eq i32 %conv1578, 0
  br i1 %cmp1579, label %if.then1581, label %if.end1582

if.then1581:                                      ; preds = %while.end1577
  br label %while.end1643

if.end1582:                                       ; preds = %while.end1577
  br label %sw.bb1583

sw.bb1583:                                        ; preds = %if.end, %if.end1582
  %1164 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state1584 = getelementptr inbounds %struct.DState, %struct.DState* %1164, i32 0, i32 1
  store i32 35, i32* %state1584, align 8
  br label %while.body1586

while.body1586:                                   ; preds = %sw.bb1583, %if.end1633
  %1165 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1587 = getelementptr inbounds %struct.DState, %struct.DState* %1165, i32 0, i32 8
  %1166 = load i32, i32* %bsLive1587, align 4
  %cmp1588 = icmp sge i32 %1166, 1
  br i1 %cmp1588, label %if.then1590, label %if.end1600

if.then1590:                                      ; preds = %while.body1586
  %1167 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1592 = getelementptr inbounds %struct.DState, %struct.DState* %1167, i32 0, i32 7
  %1168 = load i32, i32* %bsBuff1592, align 8
  %1169 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1593 = getelementptr inbounds %struct.DState, %struct.DState* %1169, i32 0, i32 8
  %1170 = load i32, i32* %bsLive1593, align 4
  %sub1594 = sub nsw i32 %1170, 1
  %shr1595 = lshr i32 %1168, %sub1594
  %and1596 = and i32 %shr1595, 1
  store i32 %and1596, i32* %v1591, align 4
  %1171 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1597 = getelementptr inbounds %struct.DState, %struct.DState* %1171, i32 0, i32 8
  %1172 = load i32, i32* %bsLive1597, align 4
  %sub1598 = sub nsw i32 %1172, 1
  store i32 %sub1598, i32* %bsLive1597, align 4
  %1173 = load i32, i32* %v1591, align 4
  %conv1599 = trunc i32 %1173 to i8
  store i8 %conv1599, i8* %uc, align 1
  br label %while.end1634

if.end1600:                                       ; preds = %while.body1586
  %1174 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1601 = getelementptr inbounds %struct.DState, %struct.DState* %1174, i32 0, i32 0
  %1175 = load %struct.bz_stream*, %struct.bz_stream** %strm1601, align 8
  %avail_in1602 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1175, i32 0, i32 1
  %1176 = load i32, i32* %avail_in1602, align 8
  %cmp1603 = icmp eq i32 %1176, 0
  br i1 %cmp1603, label %if.then1605, label %if.end1606

if.then1605:                                      ; preds = %if.end1600
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end1606:                                       ; preds = %if.end1600
  %1177 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1607 = getelementptr inbounds %struct.DState, %struct.DState* %1177, i32 0, i32 7
  %1178 = load i32, i32* %bsBuff1607, align 8
  %shl1608 = shl i32 %1178, 8
  %1179 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1609 = getelementptr inbounds %struct.DState, %struct.DState* %1179, i32 0, i32 0
  %1180 = load %struct.bz_stream*, %struct.bz_stream** %strm1609, align 8
  %next_in1610 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1180, i32 0, i32 0
  %1181 = load i8*, i8** %next_in1610, align 8
  %1182 = load i8, i8* %1181, align 1
  %conv1611 = zext i8 %1182 to i32
  %or1612 = or i32 %shl1608, %conv1611
  %1183 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1613 = getelementptr inbounds %struct.DState, %struct.DState* %1183, i32 0, i32 7
  store i32 %or1612, i32* %bsBuff1613, align 8
  %1184 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1614 = getelementptr inbounds %struct.DState, %struct.DState* %1184, i32 0, i32 8
  %1185 = load i32, i32* %bsLive1614, align 4
  %add1615 = add nsw i32 %1185, 8
  store i32 %add1615, i32* %bsLive1614, align 4
  %1186 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1616 = getelementptr inbounds %struct.DState, %struct.DState* %1186, i32 0, i32 0
  %1187 = load %struct.bz_stream*, %struct.bz_stream** %strm1616, align 8
  %next_in1617 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1187, i32 0, i32 0
  %1188 = load i8*, i8** %next_in1617, align 8
  %incdec.ptr1618 = getelementptr inbounds i8, i8* %1188, i32 1
  store i8* %incdec.ptr1618, i8** %next_in1617, align 8
  %1189 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1619 = getelementptr inbounds %struct.DState, %struct.DState* %1189, i32 0, i32 0
  %1190 = load %struct.bz_stream*, %struct.bz_stream** %strm1619, align 8
  %avail_in1620 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1190, i32 0, i32 1
  %1191 = load i32, i32* %avail_in1620, align 8
  %dec1621 = add i32 %1191, -1
  store i32 %dec1621, i32* %avail_in1620, align 8
  %1192 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1622 = getelementptr inbounds %struct.DState, %struct.DState* %1192, i32 0, i32 0
  %1193 = load %struct.bz_stream*, %struct.bz_stream** %strm1622, align 8
  %total_in_lo321623 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1193, i32 0, i32 2
  %1194 = load i32, i32* %total_in_lo321623, align 4
  %inc1624 = add i32 %1194, 1
  store i32 %inc1624, i32* %total_in_lo321623, align 4
  %1195 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1625 = getelementptr inbounds %struct.DState, %struct.DState* %1195, i32 0, i32 0
  %1196 = load %struct.bz_stream*, %struct.bz_stream** %strm1625, align 8
  %total_in_lo321626 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1196, i32 0, i32 2
  %1197 = load i32, i32* %total_in_lo321626, align 4
  %cmp1627 = icmp eq i32 %1197, 0
  br i1 %cmp1627, label %if.then1629, label %if.end1633

if.then1629:                                      ; preds = %if.end1606
  %1198 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1630 = getelementptr inbounds %struct.DState, %struct.DState* %1198, i32 0, i32 0
  %1199 = load %struct.bz_stream*, %struct.bz_stream** %strm1630, align 8
  %total_in_hi321631 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1199, i32 0, i32 3
  %1200 = load i32, i32* %total_in_hi321631, align 8
  %inc1632 = add i32 %1200, 1
  store i32 %inc1632, i32* %total_in_hi321631, align 8
  br label %if.end1633

if.end1633:                                       ; preds = %if.then1629, %if.end1606
  br label %while.body1586

while.end1634:                                    ; preds = %if.then1590
  %1201 = load i8, i8* %uc, align 1
  %conv1635 = zext i8 %1201 to i32
  %cmp1636 = icmp eq i32 %conv1635, 0
  br i1 %cmp1636, label %if.then1638, label %if.else1640

if.then1638:                                      ; preds = %while.end1634
  %1202 = load i32, i32* %curr, align 4
  %inc1639 = add nsw i32 %1202, 1
  store i32 %inc1639, i32* %curr, align 4
  br label %if.end1642

if.else1640:                                      ; preds = %while.end1634
  %1203 = load i32, i32* %curr, align 4
  %dec1641 = add nsw i32 %1203, -1
  store i32 %dec1641, i32* %curr, align 4
  br label %if.end1642

if.end1642:                                       ; preds = %if.else1640, %if.then1638
  br label %while.body1518

while.end1643:                                    ; preds = %if.then1581
  %1204 = load i32, i32* %curr, align 4
  %conv1644 = trunc i32 %1204 to i8
  %1205 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %len = getelementptr inbounds %struct.DState, %struct.DState* %1205, i32 0, i32 35
  %1206 = load i32, i32* %t, align 4
  %idxprom1645 = sext i32 %1206 to i64
  %arrayidx1646 = getelementptr inbounds [6 x [258 x i8]], [6 x [258 x i8]]* %len, i64 0, i64 %idxprom1645
  %1207 = load i32, i32* %i, align 4
  %idxprom1647 = sext i32 %1207 to i64
  %arrayidx1648 = getelementptr inbounds [258 x i8], [258 x i8]* %arrayidx1646, i64 0, i64 %idxprom1647
  store i8 %conv1644, i8* %arrayidx1648, align 1
  br label %for.inc1649

for.inc1649:                                      ; preds = %while.end1643
  %1208 = load i32, i32* %i, align 4
  %inc1650 = add nsw i32 %1208, 1
  store i32 %inc1650, i32* %i, align 4
  br label %for.cond1513

for.end1651:                                      ; preds = %for.cond1513
  br label %for.inc1652

for.inc1652:                                      ; preds = %for.end1651
  %1209 = load i32, i32* %t, align 4
  %inc1653 = add nsw i32 %1209, 1
  store i32 %inc1653, i32* %t, align 4
  br label %for.cond1458

for.end1654:                                      ; preds = %for.cond1458
  store i32 0, i32* %t, align 4
  br label %for.cond1655

for.cond1655:                                     ; preds = %for.inc1713, %for.end1654
  %1210 = load i32, i32* %t, align 4
  %1211 = load i32, i32* %nGroups, align 4
  %cmp1656 = icmp slt i32 %1210, %1211
  br i1 %cmp1656, label %for.body1658, label %for.end1715

for.body1658:                                     ; preds = %for.cond1655
  store i32 32, i32* %minLen, align 4
  store i32 0, i32* %maxLen, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond1659

for.cond1659:                                     ; preds = %for.inc1695, %for.body1658
  %1212 = load i32, i32* %i, align 4
  %1213 = load i32, i32* %alphaSize, align 4
  %cmp1660 = icmp slt i32 %1212, %1213
  br i1 %cmp1660, label %for.body1662, label %for.end1697

for.body1662:                                     ; preds = %for.cond1659
  %1214 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %len1663 = getelementptr inbounds %struct.DState, %struct.DState* %1214, i32 0, i32 35
  %1215 = load i32, i32* %t, align 4
  %idxprom1664 = sext i32 %1215 to i64
  %arrayidx1665 = getelementptr inbounds [6 x [258 x i8]], [6 x [258 x i8]]* %len1663, i64 0, i64 %idxprom1664
  %1216 = load i32, i32* %i, align 4
  %idxprom1666 = sext i32 %1216 to i64
  %arrayidx1667 = getelementptr inbounds [258 x i8], [258 x i8]* %arrayidx1665, i64 0, i64 %idxprom1666
  %1217 = load i8, i8* %arrayidx1667, align 1
  %conv1668 = zext i8 %1217 to i32
  %1218 = load i32, i32* %maxLen, align 4
  %cmp1669 = icmp sgt i32 %conv1668, %1218
  br i1 %cmp1669, label %if.then1671, label %if.end1678

if.then1671:                                      ; preds = %for.body1662
  %1219 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %len1672 = getelementptr inbounds %struct.DState, %struct.DState* %1219, i32 0, i32 35
  %1220 = load i32, i32* %t, align 4
  %idxprom1673 = sext i32 %1220 to i64
  %arrayidx1674 = getelementptr inbounds [6 x [258 x i8]], [6 x [258 x i8]]* %len1672, i64 0, i64 %idxprom1673
  %1221 = load i32, i32* %i, align 4
  %idxprom1675 = sext i32 %1221 to i64
  %arrayidx1676 = getelementptr inbounds [258 x i8], [258 x i8]* %arrayidx1674, i64 0, i64 %idxprom1675
  %1222 = load i8, i8* %arrayidx1676, align 1
  %conv1677 = zext i8 %1222 to i32
  store i32 %conv1677, i32* %maxLen, align 4
  br label %if.end1678

if.end1678:                                       ; preds = %if.then1671, %for.body1662
  %1223 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %len1679 = getelementptr inbounds %struct.DState, %struct.DState* %1223, i32 0, i32 35
  %1224 = load i32, i32* %t, align 4
  %idxprom1680 = sext i32 %1224 to i64
  %arrayidx1681 = getelementptr inbounds [6 x [258 x i8]], [6 x [258 x i8]]* %len1679, i64 0, i64 %idxprom1680
  %1225 = load i32, i32* %i, align 4
  %idxprom1682 = sext i32 %1225 to i64
  %arrayidx1683 = getelementptr inbounds [258 x i8], [258 x i8]* %arrayidx1681, i64 0, i64 %idxprom1682
  %1226 = load i8, i8* %arrayidx1683, align 1
  %conv1684 = zext i8 %1226 to i32
  %1227 = load i32, i32* %minLen, align 4
  %cmp1685 = icmp slt i32 %conv1684, %1227
  br i1 %cmp1685, label %if.then1687, label %if.end1694

if.then1687:                                      ; preds = %if.end1678
  %1228 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %len1688 = getelementptr inbounds %struct.DState, %struct.DState* %1228, i32 0, i32 35
  %1229 = load i32, i32* %t, align 4
  %idxprom1689 = sext i32 %1229 to i64
  %arrayidx1690 = getelementptr inbounds [6 x [258 x i8]], [6 x [258 x i8]]* %len1688, i64 0, i64 %idxprom1689
  %1230 = load i32, i32* %i, align 4
  %idxprom1691 = sext i32 %1230 to i64
  %arrayidx1692 = getelementptr inbounds [258 x i8], [258 x i8]* %arrayidx1690, i64 0, i64 %idxprom1691
  %1231 = load i8, i8* %arrayidx1692, align 1
  %conv1693 = zext i8 %1231 to i32
  store i32 %conv1693, i32* %minLen, align 4
  br label %if.end1694

if.end1694:                                       ; preds = %if.then1687, %if.end1678
  br label %for.inc1695

for.inc1695:                                      ; preds = %if.end1694
  %1232 = load i32, i32* %i, align 4
  %inc1696 = add nsw i32 %1232, 1
  store i32 %inc1696, i32* %i, align 4
  br label %for.cond1659

for.end1697:                                      ; preds = %for.cond1659
  %1233 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %limit = getelementptr inbounds %struct.DState, %struct.DState* %1233, i32 0, i32 36
  %1234 = load i32, i32* %t, align 4
  %idxprom1698 = sext i32 %1234 to i64
  %arrayidx1699 = getelementptr inbounds [6 x [258 x i32]], [6 x [258 x i32]]* %limit, i64 0, i64 %idxprom1698
  %arrayidx1700 = getelementptr inbounds [258 x i32], [258 x i32]* %arrayidx1699, i64 0, i64 0
  %1235 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %base = getelementptr inbounds %struct.DState, %struct.DState* %1235, i32 0, i32 37
  %1236 = load i32, i32* %t, align 4
  %idxprom1701 = sext i32 %1236 to i64
  %arrayidx1702 = getelementptr inbounds [6 x [258 x i32]], [6 x [258 x i32]]* %base, i64 0, i64 %idxprom1701
  %arrayidx1703 = getelementptr inbounds [258 x i32], [258 x i32]* %arrayidx1702, i64 0, i64 0
  %1237 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %perm = getelementptr inbounds %struct.DState, %struct.DState* %1237, i32 0, i32 38
  %1238 = load i32, i32* %t, align 4
  %idxprom1704 = sext i32 %1238 to i64
  %arrayidx1705 = getelementptr inbounds [6 x [258 x i32]], [6 x [258 x i32]]* %perm, i64 0, i64 %idxprom1704
  %arrayidx1706 = getelementptr inbounds [258 x i32], [258 x i32]* %arrayidx1705, i64 0, i64 0
  %1239 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %len1707 = getelementptr inbounds %struct.DState, %struct.DState* %1239, i32 0, i32 35
  %1240 = load i32, i32* %t, align 4
  %idxprom1708 = sext i32 %1240 to i64
  %arrayidx1709 = getelementptr inbounds [6 x [258 x i8]], [6 x [258 x i8]]* %len1707, i64 0, i64 %idxprom1708
  %arrayidx1710 = getelementptr inbounds [258 x i8], [258 x i8]* %arrayidx1709, i64 0, i64 0
  %1241 = load i32, i32* %minLen, align 4
  %1242 = load i32, i32* %maxLen, align 4
  %1243 = load i32, i32* %alphaSize, align 4
  call void @BZ2_hbCreateDecodeTables(i32* %arrayidx1700, i32* %arrayidx1703, i32* %arrayidx1706, i8* %arrayidx1710, i32 %1241, i32 %1242, i32 %1243)
  %1244 = load i32, i32* %minLen, align 4
  %1245 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %minLens = getelementptr inbounds %struct.DState, %struct.DState* %1245, i32 0, i32 39
  %1246 = load i32, i32* %t, align 4
  %idxprom1711 = sext i32 %1246 to i64
  %arrayidx1712 = getelementptr inbounds [6 x i32], [6 x i32]* %minLens, i64 0, i64 %idxprom1711
  store i32 %1244, i32* %arrayidx1712, align 4
  br label %for.inc1713

for.inc1713:                                      ; preds = %for.end1697
  %1247 = load i32, i32* %t, align 4
  %inc1714 = add nsw i32 %1247, 1
  store i32 %inc1714, i32* %t, align 4
  br label %for.cond1655

for.end1715:                                      ; preds = %for.cond1655
  %1248 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nInUse1716 = getelementptr inbounds %struct.DState, %struct.DState* %1248, i32 0, i32 27
  %1249 = load i32, i32* %nInUse1716, align 8
  %add1717 = add nsw i32 %1249, 1
  store i32 %add1717, i32* %EOB, align 4
  %1250 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %blockSize100k1718 = getelementptr inbounds %struct.DState, %struct.DState* %1250, i32 0, i32 9
  %1251 = load i32, i32* %blockSize100k1718, align 8
  %mul1719 = mul nsw i32 100000, %1251
  store i32 %mul1719, i32* %nblockMAX, align 4
  store i32 -1, i32* %groupNo, align 4
  store i32 0, i32* %groupPos, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond1720

for.cond1720:                                     ; preds = %for.inc1726, %for.end1715
  %1252 = load i32, i32* %i, align 4
  %cmp1721 = icmp sle i32 %1252, 255
  br i1 %cmp1721, label %for.body1723, label %for.end1728

for.body1723:                                     ; preds = %for.cond1720
  %1253 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %unzftab = getelementptr inbounds %struct.DState, %struct.DState* %1253, i32 0, i32 16
  %1254 = load i32, i32* %i, align 4
  %idxprom1724 = sext i32 %1254 to i64
  %arrayidx1725 = getelementptr inbounds [256 x i32], [256 x i32]* %unzftab, i64 0, i64 %idxprom1724
  store i32 0, i32* %arrayidx1725, align 4
  br label %for.inc1726

for.inc1726:                                      ; preds = %for.body1723
  %1255 = load i32, i32* %i, align 4
  %inc1727 = add nsw i32 %1255, 1
  store i32 %inc1727, i32* %i, align 4
  br label %for.cond1720

for.end1728:                                      ; preds = %for.cond1720
  store i32 4095, i32* %kk, align 4
  store i32 15, i32* %ii, align 4
  br label %for.cond1729

for.cond1729:                                     ; preds = %for.inc1749, %for.end1728
  %1256 = load i32, i32* %ii, align 4
  %cmp1730 = icmp sge i32 %1256, 0
  br i1 %cmp1730, label %for.body1732, label %for.end1751

for.body1732:                                     ; preds = %for.cond1729
  store i32 15, i32* %jj, align 4
  br label %for.cond1733

for.cond1733:                                     ; preds = %for.inc1743, %for.body1732
  %1257 = load i32, i32* %jj, align 4
  %cmp1734 = icmp sge i32 %1257, 0
  br i1 %cmp1734, label %for.body1736, label %for.end1745

for.body1736:                                     ; preds = %for.cond1733
  %1258 = load i32, i32* %ii, align 4
  %mul1737 = mul nsw i32 %1258, 16
  %1259 = load i32, i32* %jj, align 4
  %add1738 = add nsw i32 %mul1737, %1259
  %conv1739 = trunc i32 %add1738 to i8
  %1260 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfa = getelementptr inbounds %struct.DState, %struct.DState* %1260, i32 0, i32 31
  %1261 = load i32, i32* %kk, align 4
  %idxprom1740 = sext i32 %1261 to i64
  %arrayidx1741 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa, i64 0, i64 %idxprom1740
  store i8 %conv1739, i8* %arrayidx1741, align 1
  %1262 = load i32, i32* %kk, align 4
  %dec1742 = add nsw i32 %1262, -1
  store i32 %dec1742, i32* %kk, align 4
  br label %for.inc1743

for.inc1743:                                      ; preds = %for.body1736
  %1263 = load i32, i32* %jj, align 4
  %dec1744 = add nsw i32 %1263, -1
  store i32 %dec1744, i32* %jj, align 4
  br label %for.cond1733

for.end1745:                                      ; preds = %for.cond1733
  %1264 = load i32, i32* %kk, align 4
  %add1746 = add nsw i32 %1264, 1
  %1265 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfbase = getelementptr inbounds %struct.DState, %struct.DState* %1265, i32 0, i32 32
  %1266 = load i32, i32* %ii, align 4
  %idxprom1747 = sext i32 %1266 to i64
  %arrayidx1748 = getelementptr inbounds [16 x i32], [16 x i32]* %mtfbase, i64 0, i64 %idxprom1747
  store i32 %add1746, i32* %arrayidx1748, align 4
  br label %for.inc1749

for.inc1749:                                      ; preds = %for.end1745
  %1267 = load i32, i32* %ii, align 4
  %dec1750 = add nsw i32 %1267, -1
  store i32 %dec1750, i32* %ii, align 4
  br label %for.cond1729

for.end1751:                                      ; preds = %for.cond1729
  store i32 0, i32* %nblock, align 4
  %1268 = load i32, i32* %groupPos, align 4
  %cmp1752 = icmp eq i32 %1268, 0
  br i1 %cmp1752, label %if.then1754, label %if.end1779

if.then1754:                                      ; preds = %for.end1751
  %1269 = load i32, i32* %groupNo, align 4
  %inc1755 = add nsw i32 %1269, 1
  store i32 %inc1755, i32* %groupNo, align 4
  %1270 = load i32, i32* %groupNo, align 4
  %1271 = load i32, i32* %nSelectors, align 4
  %cmp1756 = icmp sge i32 %1270, %1271
  br i1 %cmp1756, label %if.then1758, label %if.end1759

if.then1758:                                      ; preds = %if.then1754
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end1759:                                       ; preds = %if.then1754
  store i32 50, i32* %groupPos, align 4
  %1272 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %selector1760 = getelementptr inbounds %struct.DState, %struct.DState* %1272, i32 0, i32 33
  %1273 = load i32, i32* %groupNo, align 4
  %idxprom1761 = sext i32 %1273 to i64
  %arrayidx1762 = getelementptr inbounds [18002 x i8], [18002 x i8]* %selector1760, i64 0, i64 %idxprom1761
  %1274 = load i8, i8* %arrayidx1762, align 1
  %conv1763 = zext i8 %1274 to i32
  store i32 %conv1763, i32* %gSel, align 4
  %1275 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %minLens1764 = getelementptr inbounds %struct.DState, %struct.DState* %1275, i32 0, i32 39
  %1276 = load i32, i32* %gSel, align 4
  %idxprom1765 = sext i32 %1276 to i64
  %arrayidx1766 = getelementptr inbounds [6 x i32], [6 x i32]* %minLens1764, i64 0, i64 %idxprom1765
  %1277 = load i32, i32* %arrayidx1766, align 4
  store i32 %1277, i32* %gMinlen, align 4
  %1278 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %limit1767 = getelementptr inbounds %struct.DState, %struct.DState* %1278, i32 0, i32 36
  %1279 = load i32, i32* %gSel, align 4
  %idxprom1768 = sext i32 %1279 to i64
  %arrayidx1769 = getelementptr inbounds [6 x [258 x i32]], [6 x [258 x i32]]* %limit1767, i64 0, i64 %idxprom1768
  %arrayidx1770 = getelementptr inbounds [258 x i32], [258 x i32]* %arrayidx1769, i64 0, i64 0
  store i32* %arrayidx1770, i32** %gLimit, align 8
  %1280 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %perm1771 = getelementptr inbounds %struct.DState, %struct.DState* %1280, i32 0, i32 38
  %1281 = load i32, i32* %gSel, align 4
  %idxprom1772 = sext i32 %1281 to i64
  %arrayidx1773 = getelementptr inbounds [6 x [258 x i32]], [6 x [258 x i32]]* %perm1771, i64 0, i64 %idxprom1772
  %arrayidx1774 = getelementptr inbounds [258 x i32], [258 x i32]* %arrayidx1773, i64 0, i64 0
  store i32* %arrayidx1774, i32** %gPerm, align 8
  %1282 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %base1775 = getelementptr inbounds %struct.DState, %struct.DState* %1282, i32 0, i32 37
  %1283 = load i32, i32* %gSel, align 4
  %idxprom1776 = sext i32 %1283 to i64
  %arrayidx1777 = getelementptr inbounds [6 x [258 x i32]], [6 x [258 x i32]]* %base1775, i64 0, i64 %idxprom1776
  %arrayidx1778 = getelementptr inbounds [258 x i32], [258 x i32]* %arrayidx1777, i64 0, i64 0
  store i32* %arrayidx1778, i32** %gBase, align 8
  br label %if.end1779

if.end1779:                                       ; preds = %if.end1759, %for.end1751
  %1284 = load i32, i32* %groupPos, align 4
  %dec1780 = add nsw i32 %1284, -1
  store i32 %dec1780, i32* %groupPos, align 4
  %1285 = load i32, i32* %gMinlen, align 4
  store i32 %1285, i32* %zn, align 4
  br label %sw.bb1781

sw.bb1781:                                        ; preds = %if.end, %if.end1779
  %1286 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state1782 = getelementptr inbounds %struct.DState, %struct.DState* %1286, i32 0, i32 1
  store i32 36, i32* %state1782, align 8
  br label %while.body1784

while.body1784:                                   ; preds = %sw.bb1781, %if.end1832
  %1287 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1785 = getelementptr inbounds %struct.DState, %struct.DState* %1287, i32 0, i32 8
  %1288 = load i32, i32* %bsLive1785, align 4
  %1289 = load i32, i32* %zn, align 4
  %cmp1786 = icmp sge i32 %1288, %1289
  br i1 %cmp1786, label %if.then1788, label %if.end1799

if.then1788:                                      ; preds = %while.body1784
  %1290 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1790 = getelementptr inbounds %struct.DState, %struct.DState* %1290, i32 0, i32 7
  %1291 = load i32, i32* %bsBuff1790, align 8
  %1292 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1791 = getelementptr inbounds %struct.DState, %struct.DState* %1292, i32 0, i32 8
  %1293 = load i32, i32* %bsLive1791, align 4
  %1294 = load i32, i32* %zn, align 4
  %sub1792 = sub nsw i32 %1293, %1294
  %shr1793 = lshr i32 %1291, %sub1792
  %1295 = load i32, i32* %zn, align 4
  %shl1794 = shl i32 1, %1295
  %sub1795 = sub nsw i32 %shl1794, 1
  %and1796 = and i32 %shr1793, %sub1795
  store i32 %and1796, i32* %v1789, align 4
  %1296 = load i32, i32* %zn, align 4
  %1297 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1797 = getelementptr inbounds %struct.DState, %struct.DState* %1297, i32 0, i32 8
  %1298 = load i32, i32* %bsLive1797, align 4
  %sub1798 = sub nsw i32 %1298, %1296
  store i32 %sub1798, i32* %bsLive1797, align 4
  %1299 = load i32, i32* %v1789, align 4
  store i32 %1299, i32* %zvec, align 4
  br label %while.end1833

if.end1799:                                       ; preds = %while.body1784
  %1300 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1800 = getelementptr inbounds %struct.DState, %struct.DState* %1300, i32 0, i32 0
  %1301 = load %struct.bz_stream*, %struct.bz_stream** %strm1800, align 8
  %avail_in1801 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1301, i32 0, i32 1
  %1302 = load i32, i32* %avail_in1801, align 8
  %cmp1802 = icmp eq i32 %1302, 0
  br i1 %cmp1802, label %if.then1804, label %if.end1805

if.then1804:                                      ; preds = %if.end1799
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end1805:                                       ; preds = %if.end1799
  %1303 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1806 = getelementptr inbounds %struct.DState, %struct.DState* %1303, i32 0, i32 7
  %1304 = load i32, i32* %bsBuff1806, align 8
  %shl1807 = shl i32 %1304, 8
  %1305 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1808 = getelementptr inbounds %struct.DState, %struct.DState* %1305, i32 0, i32 0
  %1306 = load %struct.bz_stream*, %struct.bz_stream** %strm1808, align 8
  %next_in1809 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1306, i32 0, i32 0
  %1307 = load i8*, i8** %next_in1809, align 8
  %1308 = load i8, i8* %1307, align 1
  %conv1810 = zext i8 %1308 to i32
  %or1811 = or i32 %shl1807, %conv1810
  %1309 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1812 = getelementptr inbounds %struct.DState, %struct.DState* %1309, i32 0, i32 7
  store i32 %or1811, i32* %bsBuff1812, align 8
  %1310 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1813 = getelementptr inbounds %struct.DState, %struct.DState* %1310, i32 0, i32 8
  %1311 = load i32, i32* %bsLive1813, align 4
  %add1814 = add nsw i32 %1311, 8
  store i32 %add1814, i32* %bsLive1813, align 4
  %1312 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1815 = getelementptr inbounds %struct.DState, %struct.DState* %1312, i32 0, i32 0
  %1313 = load %struct.bz_stream*, %struct.bz_stream** %strm1815, align 8
  %next_in1816 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1313, i32 0, i32 0
  %1314 = load i8*, i8** %next_in1816, align 8
  %incdec.ptr1817 = getelementptr inbounds i8, i8* %1314, i32 1
  store i8* %incdec.ptr1817, i8** %next_in1816, align 8
  %1315 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1818 = getelementptr inbounds %struct.DState, %struct.DState* %1315, i32 0, i32 0
  %1316 = load %struct.bz_stream*, %struct.bz_stream** %strm1818, align 8
  %avail_in1819 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1316, i32 0, i32 1
  %1317 = load i32, i32* %avail_in1819, align 8
  %dec1820 = add i32 %1317, -1
  store i32 %dec1820, i32* %avail_in1819, align 8
  %1318 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1821 = getelementptr inbounds %struct.DState, %struct.DState* %1318, i32 0, i32 0
  %1319 = load %struct.bz_stream*, %struct.bz_stream** %strm1821, align 8
  %total_in_lo321822 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1319, i32 0, i32 2
  %1320 = load i32, i32* %total_in_lo321822, align 4
  %inc1823 = add i32 %1320, 1
  store i32 %inc1823, i32* %total_in_lo321822, align 4
  %1321 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1824 = getelementptr inbounds %struct.DState, %struct.DState* %1321, i32 0, i32 0
  %1322 = load %struct.bz_stream*, %struct.bz_stream** %strm1824, align 8
  %total_in_lo321825 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1322, i32 0, i32 2
  %1323 = load i32, i32* %total_in_lo321825, align 4
  %cmp1826 = icmp eq i32 %1323, 0
  br i1 %cmp1826, label %if.then1828, label %if.end1832

if.then1828:                                      ; preds = %if.end1805
  %1324 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1829 = getelementptr inbounds %struct.DState, %struct.DState* %1324, i32 0, i32 0
  %1325 = load %struct.bz_stream*, %struct.bz_stream** %strm1829, align 8
  %total_in_hi321830 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1325, i32 0, i32 3
  %1326 = load i32, i32* %total_in_hi321830, align 8
  %inc1831 = add i32 %1326, 1
  store i32 %inc1831, i32* %total_in_hi321830, align 8
  br label %if.end1832

if.end1832:                                       ; preds = %if.then1828, %if.end1805
  br label %while.body1784

while.end1833:                                    ; preds = %if.then1788
  br label %while.body1835

while.body1835:                                   ; preds = %while.end1833, %while.end1897
  %1327 = load i32, i32* %zn, align 4
  %cmp1836 = icmp sgt i32 %1327, 20
  br i1 %cmp1836, label %if.then1838, label %if.end1839

if.then1838:                                      ; preds = %while.body1835
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end1839:                                       ; preds = %while.body1835
  %1328 = load i32, i32* %zvec, align 4
  %1329 = load i32*, i32** %gLimit, align 8
  %1330 = load i32, i32* %zn, align 4
  %idxprom1840 = sext i32 %1330 to i64
  %arrayidx1841 = getelementptr inbounds i32, i32* %1329, i64 %idxprom1840
  %1331 = load i32, i32* %arrayidx1841, align 4
  %cmp1842 = icmp sle i32 %1328, %1331
  br i1 %cmp1842, label %if.then1844, label %if.end1845

if.then1844:                                      ; preds = %if.end1839
  br label %while.end1900

if.end1845:                                       ; preds = %if.end1839
  %1332 = load i32, i32* %zn, align 4
  %inc1846 = add nsw i32 %1332, 1
  store i32 %inc1846, i32* %zn, align 4
  br label %sw.bb1847

sw.bb1847:                                        ; preds = %if.end, %if.end1845
  %1333 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state1848 = getelementptr inbounds %struct.DState, %struct.DState* %1333, i32 0, i32 1
  store i32 37, i32* %state1848, align 8
  br label %while.body1850

while.body1850:                                   ; preds = %sw.bb1847, %if.end1896
  %1334 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1851 = getelementptr inbounds %struct.DState, %struct.DState* %1334, i32 0, i32 8
  %1335 = load i32, i32* %bsLive1851, align 4
  %cmp1852 = icmp sge i32 %1335, 1
  br i1 %cmp1852, label %if.then1854, label %if.end1863

if.then1854:                                      ; preds = %while.body1850
  %1336 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1856 = getelementptr inbounds %struct.DState, %struct.DState* %1336, i32 0, i32 7
  %1337 = load i32, i32* %bsBuff1856, align 8
  %1338 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1857 = getelementptr inbounds %struct.DState, %struct.DState* %1338, i32 0, i32 8
  %1339 = load i32, i32* %bsLive1857, align 4
  %sub1858 = sub nsw i32 %1339, 1
  %shr1859 = lshr i32 %1337, %sub1858
  %and1860 = and i32 %shr1859, 1
  store i32 %and1860, i32* %v1855, align 4
  %1340 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1861 = getelementptr inbounds %struct.DState, %struct.DState* %1340, i32 0, i32 8
  %1341 = load i32, i32* %bsLive1861, align 4
  %sub1862 = sub nsw i32 %1341, 1
  store i32 %sub1862, i32* %bsLive1861, align 4
  %1342 = load i32, i32* %v1855, align 4
  store i32 %1342, i32* %zj, align 4
  br label %while.end1897

if.end1863:                                       ; preds = %while.body1850
  %1343 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1864 = getelementptr inbounds %struct.DState, %struct.DState* %1343, i32 0, i32 0
  %1344 = load %struct.bz_stream*, %struct.bz_stream** %strm1864, align 8
  %avail_in1865 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1344, i32 0, i32 1
  %1345 = load i32, i32* %avail_in1865, align 8
  %cmp1866 = icmp eq i32 %1345, 0
  br i1 %cmp1866, label %if.then1868, label %if.end1869

if.then1868:                                      ; preds = %if.end1863
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end1869:                                       ; preds = %if.end1863
  %1346 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1870 = getelementptr inbounds %struct.DState, %struct.DState* %1346, i32 0, i32 7
  %1347 = load i32, i32* %bsBuff1870, align 8
  %shl1871 = shl i32 %1347, 8
  %1348 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1872 = getelementptr inbounds %struct.DState, %struct.DState* %1348, i32 0, i32 0
  %1349 = load %struct.bz_stream*, %struct.bz_stream** %strm1872, align 8
  %next_in1873 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1349, i32 0, i32 0
  %1350 = load i8*, i8** %next_in1873, align 8
  %1351 = load i8, i8* %1350, align 1
  %conv1874 = zext i8 %1351 to i32
  %or1875 = or i32 %shl1871, %conv1874
  %1352 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1876 = getelementptr inbounds %struct.DState, %struct.DState* %1352, i32 0, i32 7
  store i32 %or1875, i32* %bsBuff1876, align 8
  %1353 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1877 = getelementptr inbounds %struct.DState, %struct.DState* %1353, i32 0, i32 8
  %1354 = load i32, i32* %bsLive1877, align 4
  %add1878 = add nsw i32 %1354, 8
  store i32 %add1878, i32* %bsLive1877, align 4
  %1355 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1879 = getelementptr inbounds %struct.DState, %struct.DState* %1355, i32 0, i32 0
  %1356 = load %struct.bz_stream*, %struct.bz_stream** %strm1879, align 8
  %next_in1880 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1356, i32 0, i32 0
  %1357 = load i8*, i8** %next_in1880, align 8
  %incdec.ptr1881 = getelementptr inbounds i8, i8* %1357, i32 1
  store i8* %incdec.ptr1881, i8** %next_in1880, align 8
  %1358 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1882 = getelementptr inbounds %struct.DState, %struct.DState* %1358, i32 0, i32 0
  %1359 = load %struct.bz_stream*, %struct.bz_stream** %strm1882, align 8
  %avail_in1883 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1359, i32 0, i32 1
  %1360 = load i32, i32* %avail_in1883, align 8
  %dec1884 = add i32 %1360, -1
  store i32 %dec1884, i32* %avail_in1883, align 8
  %1361 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1885 = getelementptr inbounds %struct.DState, %struct.DState* %1361, i32 0, i32 0
  %1362 = load %struct.bz_stream*, %struct.bz_stream** %strm1885, align 8
  %total_in_lo321886 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1362, i32 0, i32 2
  %1363 = load i32, i32* %total_in_lo321886, align 4
  %inc1887 = add i32 %1363, 1
  store i32 %inc1887, i32* %total_in_lo321886, align 4
  %1364 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1888 = getelementptr inbounds %struct.DState, %struct.DState* %1364, i32 0, i32 0
  %1365 = load %struct.bz_stream*, %struct.bz_stream** %strm1888, align 8
  %total_in_lo321889 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1365, i32 0, i32 2
  %1366 = load i32, i32* %total_in_lo321889, align 4
  %cmp1890 = icmp eq i32 %1366, 0
  br i1 %cmp1890, label %if.then1892, label %if.end1896

if.then1892:                                      ; preds = %if.end1869
  %1367 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1893 = getelementptr inbounds %struct.DState, %struct.DState* %1367, i32 0, i32 0
  %1368 = load %struct.bz_stream*, %struct.bz_stream** %strm1893, align 8
  %total_in_hi321894 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1368, i32 0, i32 3
  %1369 = load i32, i32* %total_in_hi321894, align 8
  %inc1895 = add i32 %1369, 1
  store i32 %inc1895, i32* %total_in_hi321894, align 8
  br label %if.end1896

if.end1896:                                       ; preds = %if.then1892, %if.end1869
  br label %while.body1850

while.end1897:                                    ; preds = %if.then1854
  %1370 = load i32, i32* %zvec, align 4
  %shl1898 = shl i32 %1370, 1
  %1371 = load i32, i32* %zj, align 4
  %or1899 = or i32 %shl1898, %1371
  store i32 %or1899, i32* %zvec, align 4
  br label %while.body1835

while.end1900:                                    ; preds = %if.then1844
  %1372 = load i32, i32* %zvec, align 4
  %1373 = load i32*, i32** %gBase, align 8
  %1374 = load i32, i32* %zn, align 4
  %idxprom1901 = sext i32 %1374 to i64
  %arrayidx1902 = getelementptr inbounds i32, i32* %1373, i64 %idxprom1901
  %1375 = load i32, i32* %arrayidx1902, align 4
  %sub1903 = sub nsw i32 %1372, %1375
  %cmp1904 = icmp slt i32 %sub1903, 0
  br i1 %cmp1904, label %if.then1912, label %lor.lhs.false1906

lor.lhs.false1906:                                ; preds = %while.end1900
  %1376 = load i32, i32* %zvec, align 4
  %1377 = load i32*, i32** %gBase, align 8
  %1378 = load i32, i32* %zn, align 4
  %idxprom1907 = sext i32 %1378 to i64
  %arrayidx1908 = getelementptr inbounds i32, i32* %1377, i64 %idxprom1907
  %1379 = load i32, i32* %arrayidx1908, align 4
  %sub1909 = sub nsw i32 %1376, %1379
  %cmp1910 = icmp sge i32 %sub1909, 258
  br i1 %cmp1910, label %if.then1912, label %if.end1913

if.then1912:                                      ; preds = %lor.lhs.false1906, %while.end1900
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end1913:                                       ; preds = %lor.lhs.false1906
  %1380 = load i32*, i32** %gPerm, align 8
  %1381 = load i32, i32* %zvec, align 4
  %1382 = load i32*, i32** %gBase, align 8
  %1383 = load i32, i32* %zn, align 4
  %idxprom1914 = sext i32 %1383 to i64
  %arrayidx1915 = getelementptr inbounds i32, i32* %1382, i64 %idxprom1914
  %1384 = load i32, i32* %arrayidx1915, align 4
  %sub1916 = sub nsw i32 %1381, %1384
  %idxprom1917 = sext i32 %sub1916 to i64
  %arrayidx1918 = getelementptr inbounds i32, i32* %1380, i64 %idxprom1917
  %1385 = load i32, i32* %arrayidx1918, align 4
  store i32 %1385, i32* %nextSym, align 4
  br label %while.body1920

while.body1920:                                   ; preds = %if.end1913, %if.end2162, %if.end2522
  %1386 = load i32, i32* %nextSym, align 4
  %1387 = load i32, i32* %EOB, align 4
  %cmp1921 = icmp eq i32 %1386, %1387
  br i1 %cmp1921, label %if.then1923, label %if.end1924

if.then1923:                                      ; preds = %while.body1920
  br label %while.end2528

if.end1924:                                       ; preds = %while.body1920
  %1388 = load i32, i32* %nextSym, align 4
  %cmp1925 = icmp eq i32 %1388, 0
  br i1 %cmp1925, label %if.then1930, label %lor.lhs.false1927

lor.lhs.false1927:                                ; preds = %if.end1924
  %1389 = load i32, i32* %nextSym, align 4
  %cmp1928 = icmp eq i32 %1389, 1
  br i1 %cmp1928, label %if.then1930, label %if.else2163

if.then1930:                                      ; preds = %lor.lhs.false1927, %if.end1924
  store i32 -1, i32* %es, align 4
  store i32 1, i32* %N, align 4
  br label %do.body

do.body:                                          ; preds = %lor.end, %if.then1930
  %1390 = load i32, i32* %nextSym, align 4
  %cmp1931 = icmp eq i32 %1390, 0
  br i1 %cmp1931, label %if.then1933, label %if.else1936

if.then1933:                                      ; preds = %do.body
  %1391 = load i32, i32* %es, align 4
  %1392 = load i32, i32* %N, align 4
  %mul1934 = mul nsw i32 1, %1392
  %add1935 = add nsw i32 %1391, %mul1934
  store i32 %add1935, i32* %es, align 4
  br label %if.end1943

if.else1936:                                      ; preds = %do.body
  %1393 = load i32, i32* %nextSym, align 4
  %cmp1937 = icmp eq i32 %1393, 1
  br i1 %cmp1937, label %if.then1939, label %if.end1942

if.then1939:                                      ; preds = %if.else1936
  %1394 = load i32, i32* %es, align 4
  %1395 = load i32, i32* %N, align 4
  %mul1940 = mul nsw i32 2, %1395
  %add1941 = add nsw i32 %1394, %mul1940
  store i32 %add1941, i32* %es, align 4
  br label %if.end1942

if.end1942:                                       ; preds = %if.then1939, %if.else1936
  br label %if.end1943

if.end1943:                                       ; preds = %if.end1942, %if.then1933
  %1396 = load i32, i32* %N, align 4
  %mul1944 = mul nsw i32 %1396, 2
  store i32 %mul1944, i32* %N, align 4
  %1397 = load i32, i32* %groupPos, align 4
  %cmp1945 = icmp eq i32 %1397, 0
  br i1 %cmp1945, label %if.then1947, label %if.end1972

if.then1947:                                      ; preds = %if.end1943
  %1398 = load i32, i32* %groupNo, align 4
  %inc1948 = add nsw i32 %1398, 1
  store i32 %inc1948, i32* %groupNo, align 4
  %1399 = load i32, i32* %groupNo, align 4
  %1400 = load i32, i32* %nSelectors, align 4
  %cmp1949 = icmp sge i32 %1399, %1400
  br i1 %cmp1949, label %if.then1951, label %if.end1952

if.then1951:                                      ; preds = %if.then1947
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end1952:                                       ; preds = %if.then1947
  store i32 50, i32* %groupPos, align 4
  %1401 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %selector1953 = getelementptr inbounds %struct.DState, %struct.DState* %1401, i32 0, i32 33
  %1402 = load i32, i32* %groupNo, align 4
  %idxprom1954 = sext i32 %1402 to i64
  %arrayidx1955 = getelementptr inbounds [18002 x i8], [18002 x i8]* %selector1953, i64 0, i64 %idxprom1954
  %1403 = load i8, i8* %arrayidx1955, align 1
  %conv1956 = zext i8 %1403 to i32
  store i32 %conv1956, i32* %gSel, align 4
  %1404 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %minLens1957 = getelementptr inbounds %struct.DState, %struct.DState* %1404, i32 0, i32 39
  %1405 = load i32, i32* %gSel, align 4
  %idxprom1958 = sext i32 %1405 to i64
  %arrayidx1959 = getelementptr inbounds [6 x i32], [6 x i32]* %minLens1957, i64 0, i64 %idxprom1958
  %1406 = load i32, i32* %arrayidx1959, align 4
  store i32 %1406, i32* %gMinlen, align 4
  %1407 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %limit1960 = getelementptr inbounds %struct.DState, %struct.DState* %1407, i32 0, i32 36
  %1408 = load i32, i32* %gSel, align 4
  %idxprom1961 = sext i32 %1408 to i64
  %arrayidx1962 = getelementptr inbounds [6 x [258 x i32]], [6 x [258 x i32]]* %limit1960, i64 0, i64 %idxprom1961
  %arrayidx1963 = getelementptr inbounds [258 x i32], [258 x i32]* %arrayidx1962, i64 0, i64 0
  store i32* %arrayidx1963, i32** %gLimit, align 8
  %1409 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %perm1964 = getelementptr inbounds %struct.DState, %struct.DState* %1409, i32 0, i32 38
  %1410 = load i32, i32* %gSel, align 4
  %idxprom1965 = sext i32 %1410 to i64
  %arrayidx1966 = getelementptr inbounds [6 x [258 x i32]], [6 x [258 x i32]]* %perm1964, i64 0, i64 %idxprom1965
  %arrayidx1967 = getelementptr inbounds [258 x i32], [258 x i32]* %arrayidx1966, i64 0, i64 0
  store i32* %arrayidx1967, i32** %gPerm, align 8
  %1411 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %base1968 = getelementptr inbounds %struct.DState, %struct.DState* %1411, i32 0, i32 37
  %1412 = load i32, i32* %gSel, align 4
  %idxprom1969 = sext i32 %1412 to i64
  %arrayidx1970 = getelementptr inbounds [6 x [258 x i32]], [6 x [258 x i32]]* %base1968, i64 0, i64 %idxprom1969
  %arrayidx1971 = getelementptr inbounds [258 x i32], [258 x i32]* %arrayidx1970, i64 0, i64 0
  store i32* %arrayidx1971, i32** %gBase, align 8
  br label %if.end1972

if.end1972:                                       ; preds = %if.end1952, %if.end1943
  %1413 = load i32, i32* %groupPos, align 4
  %dec1973 = add nsw i32 %1413, -1
  store i32 %dec1973, i32* %groupPos, align 4
  %1414 = load i32, i32* %gMinlen, align 4
  store i32 %1414, i32* %zn, align 4
  br label %sw.bb1974

sw.bb1974:                                        ; preds = %if.end, %if.end1972
  %1415 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state1975 = getelementptr inbounds %struct.DState, %struct.DState* %1415, i32 0, i32 1
  store i32 38, i32* %state1975, align 8
  br label %while.body1977

while.body1977:                                   ; preds = %sw.bb1974, %if.end2025
  %1416 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1978 = getelementptr inbounds %struct.DState, %struct.DState* %1416, i32 0, i32 8
  %1417 = load i32, i32* %bsLive1978, align 4
  %1418 = load i32, i32* %zn, align 4
  %cmp1979 = icmp sge i32 %1417, %1418
  br i1 %cmp1979, label %if.then1981, label %if.end1992

if.then1981:                                      ; preds = %while.body1977
  %1419 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1983 = getelementptr inbounds %struct.DState, %struct.DState* %1419, i32 0, i32 7
  %1420 = load i32, i32* %bsBuff1983, align 8
  %1421 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1984 = getelementptr inbounds %struct.DState, %struct.DState* %1421, i32 0, i32 8
  %1422 = load i32, i32* %bsLive1984, align 4
  %1423 = load i32, i32* %zn, align 4
  %sub1985 = sub nsw i32 %1422, %1423
  %shr1986 = lshr i32 %1420, %sub1985
  %1424 = load i32, i32* %zn, align 4
  %shl1987 = shl i32 1, %1424
  %sub1988 = sub nsw i32 %shl1987, 1
  %and1989 = and i32 %shr1986, %sub1988
  store i32 %and1989, i32* %v1982, align 4
  %1425 = load i32, i32* %zn, align 4
  %1426 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive1990 = getelementptr inbounds %struct.DState, %struct.DState* %1426, i32 0, i32 8
  %1427 = load i32, i32* %bsLive1990, align 4
  %sub1991 = sub nsw i32 %1427, %1425
  store i32 %sub1991, i32* %bsLive1990, align 4
  %1428 = load i32, i32* %v1982, align 4
  store i32 %1428, i32* %zvec, align 4
  br label %while.end2026

if.end1992:                                       ; preds = %while.body1977
  %1429 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm1993 = getelementptr inbounds %struct.DState, %struct.DState* %1429, i32 0, i32 0
  %1430 = load %struct.bz_stream*, %struct.bz_stream** %strm1993, align 8
  %avail_in1994 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1430, i32 0, i32 1
  %1431 = load i32, i32* %avail_in1994, align 8
  %cmp1995 = icmp eq i32 %1431, 0
  br i1 %cmp1995, label %if.then1997, label %if.end1998

if.then1997:                                      ; preds = %if.end1992
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end1998:                                       ; preds = %if.end1992
  %1432 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff1999 = getelementptr inbounds %struct.DState, %struct.DState* %1432, i32 0, i32 7
  %1433 = load i32, i32* %bsBuff1999, align 8
  %shl2000 = shl i32 %1433, 8
  %1434 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm2001 = getelementptr inbounds %struct.DState, %struct.DState* %1434, i32 0, i32 0
  %1435 = load %struct.bz_stream*, %struct.bz_stream** %strm2001, align 8
  %next_in2002 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1435, i32 0, i32 0
  %1436 = load i8*, i8** %next_in2002, align 8
  %1437 = load i8, i8* %1436, align 1
  %conv2003 = zext i8 %1437 to i32
  %or2004 = or i32 %shl2000, %conv2003
  %1438 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff2005 = getelementptr inbounds %struct.DState, %struct.DState* %1438, i32 0, i32 7
  store i32 %or2004, i32* %bsBuff2005, align 8
  %1439 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive2006 = getelementptr inbounds %struct.DState, %struct.DState* %1439, i32 0, i32 8
  %1440 = load i32, i32* %bsLive2006, align 4
  %add2007 = add nsw i32 %1440, 8
  store i32 %add2007, i32* %bsLive2006, align 4
  %1441 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm2008 = getelementptr inbounds %struct.DState, %struct.DState* %1441, i32 0, i32 0
  %1442 = load %struct.bz_stream*, %struct.bz_stream** %strm2008, align 8
  %next_in2009 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1442, i32 0, i32 0
  %1443 = load i8*, i8** %next_in2009, align 8
  %incdec.ptr2010 = getelementptr inbounds i8, i8* %1443, i32 1
  store i8* %incdec.ptr2010, i8** %next_in2009, align 8
  %1444 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm2011 = getelementptr inbounds %struct.DState, %struct.DState* %1444, i32 0, i32 0
  %1445 = load %struct.bz_stream*, %struct.bz_stream** %strm2011, align 8
  %avail_in2012 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1445, i32 0, i32 1
  %1446 = load i32, i32* %avail_in2012, align 8
  %dec2013 = add i32 %1446, -1
  store i32 %dec2013, i32* %avail_in2012, align 8
  %1447 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm2014 = getelementptr inbounds %struct.DState, %struct.DState* %1447, i32 0, i32 0
  %1448 = load %struct.bz_stream*, %struct.bz_stream** %strm2014, align 8
  %total_in_lo322015 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1448, i32 0, i32 2
  %1449 = load i32, i32* %total_in_lo322015, align 4
  %inc2016 = add i32 %1449, 1
  store i32 %inc2016, i32* %total_in_lo322015, align 4
  %1450 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm2017 = getelementptr inbounds %struct.DState, %struct.DState* %1450, i32 0, i32 0
  %1451 = load %struct.bz_stream*, %struct.bz_stream** %strm2017, align 8
  %total_in_lo322018 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1451, i32 0, i32 2
  %1452 = load i32, i32* %total_in_lo322018, align 4
  %cmp2019 = icmp eq i32 %1452, 0
  br i1 %cmp2019, label %if.then2021, label %if.end2025

if.then2021:                                      ; preds = %if.end1998
  %1453 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm2022 = getelementptr inbounds %struct.DState, %struct.DState* %1453, i32 0, i32 0
  %1454 = load %struct.bz_stream*, %struct.bz_stream** %strm2022, align 8
  %total_in_hi322023 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1454, i32 0, i32 3
  %1455 = load i32, i32* %total_in_hi322023, align 8
  %inc2024 = add i32 %1455, 1
  store i32 %inc2024, i32* %total_in_hi322023, align 8
  br label %if.end2025

if.end2025:                                       ; preds = %if.then2021, %if.end1998
  br label %while.body1977

while.end2026:                                    ; preds = %if.then1981
  br label %while.body2028

while.body2028:                                   ; preds = %while.end2026, %while.end2090
  %1456 = load i32, i32* %zn, align 4
  %cmp2029 = icmp sgt i32 %1456, 20
  br i1 %cmp2029, label %if.then2031, label %if.end2032

if.then2031:                                      ; preds = %while.body2028
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end2032:                                       ; preds = %while.body2028
  %1457 = load i32, i32* %zvec, align 4
  %1458 = load i32*, i32** %gLimit, align 8
  %1459 = load i32, i32* %zn, align 4
  %idxprom2033 = sext i32 %1459 to i64
  %arrayidx2034 = getelementptr inbounds i32, i32* %1458, i64 %idxprom2033
  %1460 = load i32, i32* %arrayidx2034, align 4
  %cmp2035 = icmp sle i32 %1457, %1460
  br i1 %cmp2035, label %if.then2037, label %if.end2038

if.then2037:                                      ; preds = %if.end2032
  br label %while.end2093

if.end2038:                                       ; preds = %if.end2032
  %1461 = load i32, i32* %zn, align 4
  %inc2039 = add nsw i32 %1461, 1
  store i32 %inc2039, i32* %zn, align 4
  br label %sw.bb2040

sw.bb2040:                                        ; preds = %if.end, %if.end2038
  %1462 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state2041 = getelementptr inbounds %struct.DState, %struct.DState* %1462, i32 0, i32 1
  store i32 39, i32* %state2041, align 8
  br label %while.body2043

while.body2043:                                   ; preds = %sw.bb2040, %if.end2089
  %1463 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive2044 = getelementptr inbounds %struct.DState, %struct.DState* %1463, i32 0, i32 8
  %1464 = load i32, i32* %bsLive2044, align 4
  %cmp2045 = icmp sge i32 %1464, 1
  br i1 %cmp2045, label %if.then2047, label %if.end2056

if.then2047:                                      ; preds = %while.body2043
  %1465 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff2049 = getelementptr inbounds %struct.DState, %struct.DState* %1465, i32 0, i32 7
  %1466 = load i32, i32* %bsBuff2049, align 8
  %1467 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive2050 = getelementptr inbounds %struct.DState, %struct.DState* %1467, i32 0, i32 8
  %1468 = load i32, i32* %bsLive2050, align 4
  %sub2051 = sub nsw i32 %1468, 1
  %shr2052 = lshr i32 %1466, %sub2051
  %and2053 = and i32 %shr2052, 1
  store i32 %and2053, i32* %v2048, align 4
  %1469 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive2054 = getelementptr inbounds %struct.DState, %struct.DState* %1469, i32 0, i32 8
  %1470 = load i32, i32* %bsLive2054, align 4
  %sub2055 = sub nsw i32 %1470, 1
  store i32 %sub2055, i32* %bsLive2054, align 4
  %1471 = load i32, i32* %v2048, align 4
  store i32 %1471, i32* %zj, align 4
  br label %while.end2090

if.end2056:                                       ; preds = %while.body2043
  %1472 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm2057 = getelementptr inbounds %struct.DState, %struct.DState* %1472, i32 0, i32 0
  %1473 = load %struct.bz_stream*, %struct.bz_stream** %strm2057, align 8
  %avail_in2058 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1473, i32 0, i32 1
  %1474 = load i32, i32* %avail_in2058, align 8
  %cmp2059 = icmp eq i32 %1474, 0
  br i1 %cmp2059, label %if.then2061, label %if.end2062

if.then2061:                                      ; preds = %if.end2056
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end2062:                                       ; preds = %if.end2056
  %1475 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff2063 = getelementptr inbounds %struct.DState, %struct.DState* %1475, i32 0, i32 7
  %1476 = load i32, i32* %bsBuff2063, align 8
  %shl2064 = shl i32 %1476, 8
  %1477 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm2065 = getelementptr inbounds %struct.DState, %struct.DState* %1477, i32 0, i32 0
  %1478 = load %struct.bz_stream*, %struct.bz_stream** %strm2065, align 8
  %next_in2066 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1478, i32 0, i32 0
  %1479 = load i8*, i8** %next_in2066, align 8
  %1480 = load i8, i8* %1479, align 1
  %conv2067 = zext i8 %1480 to i32
  %or2068 = or i32 %shl2064, %conv2067
  %1481 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff2069 = getelementptr inbounds %struct.DState, %struct.DState* %1481, i32 0, i32 7
  store i32 %or2068, i32* %bsBuff2069, align 8
  %1482 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive2070 = getelementptr inbounds %struct.DState, %struct.DState* %1482, i32 0, i32 8
  %1483 = load i32, i32* %bsLive2070, align 4
  %add2071 = add nsw i32 %1483, 8
  store i32 %add2071, i32* %bsLive2070, align 4
  %1484 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm2072 = getelementptr inbounds %struct.DState, %struct.DState* %1484, i32 0, i32 0
  %1485 = load %struct.bz_stream*, %struct.bz_stream** %strm2072, align 8
  %next_in2073 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1485, i32 0, i32 0
  %1486 = load i8*, i8** %next_in2073, align 8
  %incdec.ptr2074 = getelementptr inbounds i8, i8* %1486, i32 1
  store i8* %incdec.ptr2074, i8** %next_in2073, align 8
  %1487 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm2075 = getelementptr inbounds %struct.DState, %struct.DState* %1487, i32 0, i32 0
  %1488 = load %struct.bz_stream*, %struct.bz_stream** %strm2075, align 8
  %avail_in2076 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1488, i32 0, i32 1
  %1489 = load i32, i32* %avail_in2076, align 8
  %dec2077 = add i32 %1489, -1
  store i32 %dec2077, i32* %avail_in2076, align 8
  %1490 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm2078 = getelementptr inbounds %struct.DState, %struct.DState* %1490, i32 0, i32 0
  %1491 = load %struct.bz_stream*, %struct.bz_stream** %strm2078, align 8
  %total_in_lo322079 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1491, i32 0, i32 2
  %1492 = load i32, i32* %total_in_lo322079, align 4
  %inc2080 = add i32 %1492, 1
  store i32 %inc2080, i32* %total_in_lo322079, align 4
  %1493 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm2081 = getelementptr inbounds %struct.DState, %struct.DState* %1493, i32 0, i32 0
  %1494 = load %struct.bz_stream*, %struct.bz_stream** %strm2081, align 8
  %total_in_lo322082 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1494, i32 0, i32 2
  %1495 = load i32, i32* %total_in_lo322082, align 4
  %cmp2083 = icmp eq i32 %1495, 0
  br i1 %cmp2083, label %if.then2085, label %if.end2089

if.then2085:                                      ; preds = %if.end2062
  %1496 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm2086 = getelementptr inbounds %struct.DState, %struct.DState* %1496, i32 0, i32 0
  %1497 = load %struct.bz_stream*, %struct.bz_stream** %strm2086, align 8
  %total_in_hi322087 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1497, i32 0, i32 3
  %1498 = load i32, i32* %total_in_hi322087, align 8
  %inc2088 = add i32 %1498, 1
  store i32 %inc2088, i32* %total_in_hi322087, align 8
  br label %if.end2089

if.end2089:                                       ; preds = %if.then2085, %if.end2062
  br label %while.body2043

while.end2090:                                    ; preds = %if.then2047
  %1499 = load i32, i32* %zvec, align 4
  %shl2091 = shl i32 %1499, 1
  %1500 = load i32, i32* %zj, align 4
  %or2092 = or i32 %shl2091, %1500
  store i32 %or2092, i32* %zvec, align 4
  br label %while.body2028

while.end2093:                                    ; preds = %if.then2037
  %1501 = load i32, i32* %zvec, align 4
  %1502 = load i32*, i32** %gBase, align 8
  %1503 = load i32, i32* %zn, align 4
  %idxprom2094 = sext i32 %1503 to i64
  %arrayidx2095 = getelementptr inbounds i32, i32* %1502, i64 %idxprom2094
  %1504 = load i32, i32* %arrayidx2095, align 4
  %sub2096 = sub nsw i32 %1501, %1504
  %cmp2097 = icmp slt i32 %sub2096, 0
  br i1 %cmp2097, label %if.then2105, label %lor.lhs.false2099

lor.lhs.false2099:                                ; preds = %while.end2093
  %1505 = load i32, i32* %zvec, align 4
  %1506 = load i32*, i32** %gBase, align 8
  %1507 = load i32, i32* %zn, align 4
  %idxprom2100 = sext i32 %1507 to i64
  %arrayidx2101 = getelementptr inbounds i32, i32* %1506, i64 %idxprom2100
  %1508 = load i32, i32* %arrayidx2101, align 4
  %sub2102 = sub nsw i32 %1505, %1508
  %cmp2103 = icmp sge i32 %sub2102, 258
  br i1 %cmp2103, label %if.then2105, label %if.end2106

if.then2105:                                      ; preds = %lor.lhs.false2099, %while.end2093
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end2106:                                       ; preds = %lor.lhs.false2099
  %1509 = load i32*, i32** %gPerm, align 8
  %1510 = load i32, i32* %zvec, align 4
  %1511 = load i32*, i32** %gBase, align 8
  %1512 = load i32, i32* %zn, align 4
  %idxprom2107 = sext i32 %1512 to i64
  %arrayidx2108 = getelementptr inbounds i32, i32* %1511, i64 %idxprom2107
  %1513 = load i32, i32* %arrayidx2108, align 4
  %sub2109 = sub nsw i32 %1510, %1513
  %idxprom2110 = sext i32 %sub2109 to i64
  %arrayidx2111 = getelementptr inbounds i32, i32* %1509, i64 %idxprom2110
  %1514 = load i32, i32* %arrayidx2111, align 4
  store i32 %1514, i32* %nextSym, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end2106
  %1515 = load i32, i32* %nextSym, align 4
  %cmp2112 = icmp eq i32 %1515, 0
  br i1 %cmp2112, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %do.cond
  %1516 = load i32, i32* %nextSym, align 4
  %cmp2114 = icmp eq i32 %1516, 1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %do.cond
  %1517 = phi i1 [ true, %do.cond ], [ %cmp2114, %lor.rhs ]
  br i1 %1517, label %do.body, label %do.end

do.end:                                           ; preds = %lor.end
  %1518 = load i32, i32* %es, align 4
  %inc2116 = add nsw i32 %1518, 1
  store i32 %inc2116, i32* %es, align 4
  %1519 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %seqToUnseq = getelementptr inbounds %struct.DState, %struct.DState* %1519, i32 0, i32 30
  %1520 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfa2117 = getelementptr inbounds %struct.DState, %struct.DState* %1520, i32 0, i32 31
  %1521 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfbase2118 = getelementptr inbounds %struct.DState, %struct.DState* %1521, i32 0, i32 32
  %arrayidx2119 = getelementptr inbounds [16 x i32], [16 x i32]* %mtfbase2118, i64 0, i64 0
  %1522 = load i32, i32* %arrayidx2119, align 4
  %idxprom2120 = sext i32 %1522 to i64
  %arrayidx2121 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa2117, i64 0, i64 %idxprom2120
  %1523 = load i8, i8* %arrayidx2121, align 1
  %idxprom2122 = zext i8 %1523 to i64
  %arrayidx2123 = getelementptr inbounds [256 x i8], [256 x i8]* %seqToUnseq, i64 0, i64 %idxprom2122
  %1524 = load i8, i8* %arrayidx2123, align 1
  store i8 %1524, i8* %uc, align 1
  %1525 = load i32, i32* %es, align 4
  %1526 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %unzftab2124 = getelementptr inbounds %struct.DState, %struct.DState* %1526, i32 0, i32 16
  %1527 = load i8, i8* %uc, align 1
  %idxprom2125 = zext i8 %1527 to i64
  %arrayidx2126 = getelementptr inbounds [256 x i32], [256 x i32]* %unzftab2124, i64 0, i64 %idxprom2125
  %1528 = load i32, i32* %arrayidx2126, align 4
  %add2127 = add nsw i32 %1528, %1525
  store i32 %add2127, i32* %arrayidx2126, align 4
  %1529 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %smallDecompress2128 = getelementptr inbounds %struct.DState, %struct.DState* %1529, i32 0, i32 10
  %1530 = load i8, i8* %smallDecompress2128, align 4
  %tobool2129 = icmp ne i8 %1530, 0
  br i1 %tobool2129, label %if.then2130, label %if.else2146

if.then2130:                                      ; preds = %do.end
  br label %while.cond2131

while.cond2131:                                   ; preds = %if.end2138, %if.then2130
  %1531 = load i32, i32* %es, align 4
  %cmp2132 = icmp sgt i32 %1531, 0
  br i1 %cmp2132, label %while.body2134, label %while.end2145

while.body2134:                                   ; preds = %while.cond2131
  %1532 = load i32, i32* %nblock, align 4
  %1533 = load i32, i32* %nblockMAX, align 4
  %cmp2135 = icmp sge i32 %1532, %1533
  br i1 %cmp2135, label %if.then2137, label %if.end2138

if.then2137:                                      ; preds = %while.body2134
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end2138:                                       ; preds = %while.body2134
  %1534 = load i8, i8* %uc, align 1
  %conv2139 = zext i8 %1534 to i16
  %1535 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll162140 = getelementptr inbounds %struct.DState, %struct.DState* %1535, i32 0, i32 21
  %1536 = load i16*, i16** %ll162140, align 8
  %1537 = load i32, i32* %nblock, align 4
  %idxprom2141 = sext i32 %1537 to i64
  %arrayidx2142 = getelementptr inbounds i16, i16* %1536, i64 %idxprom2141
  store i16 %conv2139, i16* %arrayidx2142, align 2
  %1538 = load i32, i32* %nblock, align 4
  %inc2143 = add nsw i32 %1538, 1
  store i32 %inc2143, i32* %nblock, align 4
  %1539 = load i32, i32* %es, align 4
  %dec2144 = add nsw i32 %1539, -1
  store i32 %dec2144, i32* %es, align 4
  br label %while.cond2131

while.end2145:                                    ; preds = %while.cond2131
  br label %if.end2162

if.else2146:                                      ; preds = %do.end
  br label %while.cond2147

while.cond2147:                                   ; preds = %if.end2154, %if.else2146
  %1540 = load i32, i32* %es, align 4
  %cmp2148 = icmp sgt i32 %1540, 0
  br i1 %cmp2148, label %while.body2150, label %while.end2161

while.body2150:                                   ; preds = %while.cond2147
  %1541 = load i32, i32* %nblock, align 4
  %1542 = load i32, i32* %nblockMAX, align 4
  %cmp2151 = icmp sge i32 %1541, %1542
  br i1 %cmp2151, label %if.then2153, label %if.end2154

if.then2153:                                      ; preds = %while.body2150
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end2154:                                       ; preds = %while.body2150
  %1543 = load i8, i8* %uc, align 1
  %conv2155 = zext i8 %1543 to i32
  %1544 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tt2156 = getelementptr inbounds %struct.DState, %struct.DState* %1544, i32 0, i32 20
  %1545 = load i32*, i32** %tt2156, align 8
  %1546 = load i32, i32* %nblock, align 4
  %idxprom2157 = sext i32 %1546 to i64
  %arrayidx2158 = getelementptr inbounds i32, i32* %1545, i64 %idxprom2157
  store i32 %conv2155, i32* %arrayidx2158, align 4
  %1547 = load i32, i32* %nblock, align 4
  %inc2159 = add nsw i32 %1547, 1
  store i32 %inc2159, i32* %nblock, align 4
  %1548 = load i32, i32* %es, align 4
  %dec2160 = add nsw i32 %1548, -1
  store i32 %dec2160, i32* %es, align 4
  br label %while.cond2147

while.end2161:                                    ; preds = %while.cond2147
  br label %if.end2162

if.end2162:                                       ; preds = %while.end2161, %while.end2145
  br label %while.body1920

if.else2163:                                      ; preds = %lor.lhs.false1927
  %1549 = load i32, i32* %nblock, align 4
  %1550 = load i32, i32* %nblockMAX, align 4
  %cmp2164 = icmp sge i32 %1549, %1550
  br i1 %cmp2164, label %if.then2166, label %if.end2167

if.then2166:                                      ; preds = %if.else2163
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end2167:                                       ; preds = %if.else2163
  %1551 = load i32, i32* %nextSym, align 4
  %sub2171 = sub nsw i32 %1551, 1
  store i32 %sub2171, i32* %nn, align 4
  %1552 = load i32, i32* %nn, align 4
  %cmp2172 = icmp ult i32 %1552, 16
  br i1 %cmp2172, label %if.then2174, label %if.else2237

if.then2174:                                      ; preds = %if.end2167
  %1553 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfbase2175 = getelementptr inbounds %struct.DState, %struct.DState* %1553, i32 0, i32 32
  %arrayidx2176 = getelementptr inbounds [16 x i32], [16 x i32]* %mtfbase2175, i64 0, i64 0
  %1554 = load i32, i32* %arrayidx2176, align 4
  store i32 %1554, i32* %pp, align 4
  %1555 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfa2177 = getelementptr inbounds %struct.DState, %struct.DState* %1555, i32 0, i32 31
  %1556 = load i32, i32* %pp, align 4
  %1557 = load i32, i32* %nn, align 4
  %add2178 = add i32 %1556, %1557
  %idxprom2179 = zext i32 %add2178 to i64
  %arrayidx2180 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa2177, i64 0, i64 %idxprom2179
  %1558 = load i8, i8* %arrayidx2180, align 1
  store i8 %1558, i8* %uc, align 1
  br label %while.cond2181

while.cond2181:                                   ; preds = %while.body2184, %if.then2174
  %1559 = load i32, i32* %nn, align 4
  %cmp2182 = icmp ugt i32 %1559, 3
  br i1 %cmp2182, label %while.body2184, label %while.end2218

while.body2184:                                   ; preds = %while.cond2181
  %1560 = load i32, i32* %pp, align 4
  %1561 = load i32, i32* %nn, align 4
  %add2185 = add i32 %1560, %1561
  store i32 %add2185, i32* %z, align 4
  %1562 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfa2186 = getelementptr inbounds %struct.DState, %struct.DState* %1562, i32 0, i32 31
  %1563 = load i32, i32* %z, align 4
  %sub2187 = sub nsw i32 %1563, 1
  %idxprom2188 = sext i32 %sub2187 to i64
  %arrayidx2189 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa2186, i64 0, i64 %idxprom2188
  %1564 = load i8, i8* %arrayidx2189, align 1
  %1565 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfa2190 = getelementptr inbounds %struct.DState, %struct.DState* %1565, i32 0, i32 31
  %1566 = load i32, i32* %z, align 4
  %idxprom2191 = sext i32 %1566 to i64
  %arrayidx2192 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa2190, i64 0, i64 %idxprom2191
  store i8 %1564, i8* %arrayidx2192, align 1
  %1567 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfa2193 = getelementptr inbounds %struct.DState, %struct.DState* %1567, i32 0, i32 31
  %1568 = load i32, i32* %z, align 4
  %sub2194 = sub nsw i32 %1568, 2
  %idxprom2195 = sext i32 %sub2194 to i64
  %arrayidx2196 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa2193, i64 0, i64 %idxprom2195
  %1569 = load i8, i8* %arrayidx2196, align 1
  %1570 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfa2197 = getelementptr inbounds %struct.DState, %struct.DState* %1570, i32 0, i32 31
  %1571 = load i32, i32* %z, align 4
  %sub2198 = sub nsw i32 %1571, 1
  %idxprom2199 = sext i32 %sub2198 to i64
  %arrayidx2200 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa2197, i64 0, i64 %idxprom2199
  store i8 %1569, i8* %arrayidx2200, align 1
  %1572 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfa2201 = getelementptr inbounds %struct.DState, %struct.DState* %1572, i32 0, i32 31
  %1573 = load i32, i32* %z, align 4
  %sub2202 = sub nsw i32 %1573, 3
  %idxprom2203 = sext i32 %sub2202 to i64
  %arrayidx2204 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa2201, i64 0, i64 %idxprom2203
  %1574 = load i8, i8* %arrayidx2204, align 1
  %1575 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfa2205 = getelementptr inbounds %struct.DState, %struct.DState* %1575, i32 0, i32 31
  %1576 = load i32, i32* %z, align 4
  %sub2206 = sub nsw i32 %1576, 2
  %idxprom2207 = sext i32 %sub2206 to i64
  %arrayidx2208 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa2205, i64 0, i64 %idxprom2207
  store i8 %1574, i8* %arrayidx2208, align 1
  %1577 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfa2209 = getelementptr inbounds %struct.DState, %struct.DState* %1577, i32 0, i32 31
  %1578 = load i32, i32* %z, align 4
  %sub2210 = sub nsw i32 %1578, 4
  %idxprom2211 = sext i32 %sub2210 to i64
  %arrayidx2212 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa2209, i64 0, i64 %idxprom2211
  %1579 = load i8, i8* %arrayidx2212, align 1
  %1580 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfa2213 = getelementptr inbounds %struct.DState, %struct.DState* %1580, i32 0, i32 31
  %1581 = load i32, i32* %z, align 4
  %sub2214 = sub nsw i32 %1581, 3
  %idxprom2215 = sext i32 %sub2214 to i64
  %arrayidx2216 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa2213, i64 0, i64 %idxprom2215
  store i8 %1579, i8* %arrayidx2216, align 1
  %1582 = load i32, i32* %nn, align 4
  %sub2217 = sub i32 %1582, 4
  store i32 %sub2217, i32* %nn, align 4
  br label %while.cond2181

while.end2218:                                    ; preds = %while.cond2181
  br label %while.cond2219

while.cond2219:                                   ; preds = %while.body2222, %while.end2218
  %1583 = load i32, i32* %nn, align 4
  %cmp2220 = icmp ugt i32 %1583, 0
  br i1 %cmp2220, label %while.body2222, label %while.end2233

while.body2222:                                   ; preds = %while.cond2219
  %1584 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfa2223 = getelementptr inbounds %struct.DState, %struct.DState* %1584, i32 0, i32 31
  %1585 = load i32, i32* %pp, align 4
  %1586 = load i32, i32* %nn, align 4
  %add2224 = add i32 %1585, %1586
  %sub2225 = sub i32 %add2224, 1
  %idxprom2226 = zext i32 %sub2225 to i64
  %arrayidx2227 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa2223, i64 0, i64 %idxprom2226
  %1587 = load i8, i8* %arrayidx2227, align 1
  %1588 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfa2228 = getelementptr inbounds %struct.DState, %struct.DState* %1588, i32 0, i32 31
  %1589 = load i32, i32* %pp, align 4
  %1590 = load i32, i32* %nn, align 4
  %add2229 = add i32 %1589, %1590
  %idxprom2230 = zext i32 %add2229 to i64
  %arrayidx2231 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa2228, i64 0, i64 %idxprom2230
  store i8 %1587, i8* %arrayidx2231, align 1
  %1591 = load i32, i32* %nn, align 4
  %dec2232 = add i32 %1591, -1
  store i32 %dec2232, i32* %nn, align 4
  br label %while.cond2219

while.end2233:                                    ; preds = %while.cond2219
  %1592 = load i8, i8* %uc, align 1
  %1593 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfa2234 = getelementptr inbounds %struct.DState, %struct.DState* %1593, i32 0, i32 31
  %1594 = load i32, i32* %pp, align 4
  %idxprom2235 = sext i32 %1594 to i64
  %arrayidx2236 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa2234, i64 0, i64 %idxprom2235
  store i8 %1592, i8* %arrayidx2236, align 1
  br label %if.end2333

if.else2237:                                      ; preds = %if.end2167
  %1595 = load i32, i32* %nn, align 4
  %div = udiv i32 %1595, 16
  store i32 %div, i32* %lno, align 4
  %1596 = load i32, i32* %nn, align 4
  %rem = urem i32 %1596, 16
  store i32 %rem, i32* %off, align 4
  %1597 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfbase2238 = getelementptr inbounds %struct.DState, %struct.DState* %1597, i32 0, i32 32
  %1598 = load i32, i32* %lno, align 4
  %idxprom2239 = sext i32 %1598 to i64
  %arrayidx2240 = getelementptr inbounds [16 x i32], [16 x i32]* %mtfbase2238, i64 0, i64 %idxprom2239
  %1599 = load i32, i32* %arrayidx2240, align 4
  %1600 = load i32, i32* %off, align 4
  %add2241 = add nsw i32 %1599, %1600
  store i32 %add2241, i32* %pp, align 4
  %1601 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfa2242 = getelementptr inbounds %struct.DState, %struct.DState* %1601, i32 0, i32 31
  %1602 = load i32, i32* %pp, align 4
  %idxprom2243 = sext i32 %1602 to i64
  %arrayidx2244 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa2242, i64 0, i64 %idxprom2243
  %1603 = load i8, i8* %arrayidx2244, align 1
  store i8 %1603, i8* %uc, align 1
  br label %while.cond2245

while.cond2245:                                   ; preds = %while.body2251, %if.else2237
  %1604 = load i32, i32* %pp, align 4
  %1605 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfbase2246 = getelementptr inbounds %struct.DState, %struct.DState* %1605, i32 0, i32 32
  %1606 = load i32, i32* %lno, align 4
  %idxprom2247 = sext i32 %1606 to i64
  %arrayidx2248 = getelementptr inbounds [16 x i32], [16 x i32]* %mtfbase2246, i64 0, i64 %idxprom2247
  %1607 = load i32, i32* %arrayidx2248, align 4
  %cmp2249 = icmp sgt i32 %1604, %1607
  br i1 %cmp2249, label %while.body2251, label %while.end2260

while.body2251:                                   ; preds = %while.cond2245
  %1608 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfa2252 = getelementptr inbounds %struct.DState, %struct.DState* %1608, i32 0, i32 31
  %1609 = load i32, i32* %pp, align 4
  %sub2253 = sub nsw i32 %1609, 1
  %idxprom2254 = sext i32 %sub2253 to i64
  %arrayidx2255 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa2252, i64 0, i64 %idxprom2254
  %1610 = load i8, i8* %arrayidx2255, align 1
  %1611 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfa2256 = getelementptr inbounds %struct.DState, %struct.DState* %1611, i32 0, i32 31
  %1612 = load i32, i32* %pp, align 4
  %idxprom2257 = sext i32 %1612 to i64
  %arrayidx2258 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa2256, i64 0, i64 %idxprom2257
  store i8 %1610, i8* %arrayidx2258, align 1
  %1613 = load i32, i32* %pp, align 4
  %dec2259 = add nsw i32 %1613, -1
  store i32 %dec2259, i32* %pp, align 4
  br label %while.cond2245

while.end2260:                                    ; preds = %while.cond2245
  %1614 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfbase2261 = getelementptr inbounds %struct.DState, %struct.DState* %1614, i32 0, i32 32
  %1615 = load i32, i32* %lno, align 4
  %idxprom2262 = sext i32 %1615 to i64
  %arrayidx2263 = getelementptr inbounds [16 x i32], [16 x i32]* %mtfbase2261, i64 0, i64 %idxprom2262
  %1616 = load i32, i32* %arrayidx2263, align 4
  %inc2264 = add nsw i32 %1616, 1
  store i32 %inc2264, i32* %arrayidx2263, align 4
  br label %while.cond2265

while.cond2265:                                   ; preds = %while.body2268, %while.end2260
  %1617 = load i32, i32* %lno, align 4
  %cmp2266 = icmp sgt i32 %1617, 0
  br i1 %cmp2266, label %while.body2268, label %while.end2289

while.body2268:                                   ; preds = %while.cond2265
  %1618 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfbase2269 = getelementptr inbounds %struct.DState, %struct.DState* %1618, i32 0, i32 32
  %1619 = load i32, i32* %lno, align 4
  %idxprom2270 = sext i32 %1619 to i64
  %arrayidx2271 = getelementptr inbounds [16 x i32], [16 x i32]* %mtfbase2269, i64 0, i64 %idxprom2270
  %1620 = load i32, i32* %arrayidx2271, align 4
  %dec2272 = add nsw i32 %1620, -1
  store i32 %dec2272, i32* %arrayidx2271, align 4
  %1621 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfa2273 = getelementptr inbounds %struct.DState, %struct.DState* %1621, i32 0, i32 31
  %1622 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfbase2274 = getelementptr inbounds %struct.DState, %struct.DState* %1622, i32 0, i32 32
  %1623 = load i32, i32* %lno, align 4
  %sub2275 = sub nsw i32 %1623, 1
  %idxprom2276 = sext i32 %sub2275 to i64
  %arrayidx2277 = getelementptr inbounds [16 x i32], [16 x i32]* %mtfbase2274, i64 0, i64 %idxprom2276
  %1624 = load i32, i32* %arrayidx2277, align 4
  %add2278 = add nsw i32 %1624, 16
  %sub2279 = sub nsw i32 %add2278, 1
  %idxprom2280 = sext i32 %sub2279 to i64
  %arrayidx2281 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa2273, i64 0, i64 %idxprom2280
  %1625 = load i8, i8* %arrayidx2281, align 1
  %1626 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfa2282 = getelementptr inbounds %struct.DState, %struct.DState* %1626, i32 0, i32 31
  %1627 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfbase2283 = getelementptr inbounds %struct.DState, %struct.DState* %1627, i32 0, i32 32
  %1628 = load i32, i32* %lno, align 4
  %idxprom2284 = sext i32 %1628 to i64
  %arrayidx2285 = getelementptr inbounds [16 x i32], [16 x i32]* %mtfbase2283, i64 0, i64 %idxprom2284
  %1629 = load i32, i32* %arrayidx2285, align 4
  %idxprom2286 = sext i32 %1629 to i64
  %arrayidx2287 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa2282, i64 0, i64 %idxprom2286
  store i8 %1625, i8* %arrayidx2287, align 1
  %1630 = load i32, i32* %lno, align 4
  %dec2288 = add nsw i32 %1630, -1
  store i32 %dec2288, i32* %lno, align 4
  br label %while.cond2265

while.end2289:                                    ; preds = %while.cond2265
  %1631 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfbase2290 = getelementptr inbounds %struct.DState, %struct.DState* %1631, i32 0, i32 32
  %arrayidx2291 = getelementptr inbounds [16 x i32], [16 x i32]* %mtfbase2290, i64 0, i64 0
  %1632 = load i32, i32* %arrayidx2291, align 4
  %dec2292 = add nsw i32 %1632, -1
  store i32 %dec2292, i32* %arrayidx2291, align 4
  %1633 = load i8, i8* %uc, align 1
  %1634 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfa2293 = getelementptr inbounds %struct.DState, %struct.DState* %1634, i32 0, i32 31
  %1635 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfbase2294 = getelementptr inbounds %struct.DState, %struct.DState* %1635, i32 0, i32 32
  %arrayidx2295 = getelementptr inbounds [16 x i32], [16 x i32]* %mtfbase2294, i64 0, i64 0
  %1636 = load i32, i32* %arrayidx2295, align 4
  %idxprom2296 = sext i32 %1636 to i64
  %arrayidx2297 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa2293, i64 0, i64 %idxprom2296
  store i8 %1633, i8* %arrayidx2297, align 1
  %1637 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfbase2298 = getelementptr inbounds %struct.DState, %struct.DState* %1637, i32 0, i32 32
  %arrayidx2299 = getelementptr inbounds [16 x i32], [16 x i32]* %mtfbase2298, i64 0, i64 0
  %1638 = load i32, i32* %arrayidx2299, align 4
  %cmp2300 = icmp eq i32 %1638, 0
  br i1 %cmp2300, label %if.then2302, label %if.end2332

if.then2302:                                      ; preds = %while.end2289
  store i32 4095, i32* %kk2170, align 4
  store i32 15, i32* %ii2168, align 4
  br label %for.cond2303

for.cond2303:                                     ; preds = %for.inc2329, %if.then2302
  %1639 = load i32, i32* %ii2168, align 4
  %cmp2304 = icmp sge i32 %1639, 0
  br i1 %cmp2304, label %for.body2306, label %for.end2331

for.body2306:                                     ; preds = %for.cond2303
  store i32 15, i32* %jj2169, align 4
  br label %for.cond2307

for.cond2307:                                     ; preds = %for.inc2322, %for.body2306
  %1640 = load i32, i32* %jj2169, align 4
  %cmp2308 = icmp sge i32 %1640, 0
  br i1 %cmp2308, label %for.body2310, label %for.end2324

for.body2310:                                     ; preds = %for.cond2307
  %1641 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfa2311 = getelementptr inbounds %struct.DState, %struct.DState* %1641, i32 0, i32 31
  %1642 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfbase2312 = getelementptr inbounds %struct.DState, %struct.DState* %1642, i32 0, i32 32
  %1643 = load i32, i32* %ii2168, align 4
  %idxprom2313 = sext i32 %1643 to i64
  %arrayidx2314 = getelementptr inbounds [16 x i32], [16 x i32]* %mtfbase2312, i64 0, i64 %idxprom2313
  %1644 = load i32, i32* %arrayidx2314, align 4
  %1645 = load i32, i32* %jj2169, align 4
  %add2315 = add nsw i32 %1644, %1645
  %idxprom2316 = sext i32 %add2315 to i64
  %arrayidx2317 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa2311, i64 0, i64 %idxprom2316
  %1646 = load i8, i8* %arrayidx2317, align 1
  %1647 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfa2318 = getelementptr inbounds %struct.DState, %struct.DState* %1647, i32 0, i32 31
  %1648 = load i32, i32* %kk2170, align 4
  %idxprom2319 = sext i32 %1648 to i64
  %arrayidx2320 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mtfa2318, i64 0, i64 %idxprom2319
  store i8 %1646, i8* %arrayidx2320, align 1
  %1649 = load i32, i32* %kk2170, align 4
  %dec2321 = add nsw i32 %1649, -1
  store i32 %dec2321, i32* %kk2170, align 4
  br label %for.inc2322

for.inc2322:                                      ; preds = %for.body2310
  %1650 = load i32, i32* %jj2169, align 4
  %dec2323 = add nsw i32 %1650, -1
  store i32 %dec2323, i32* %jj2169, align 4
  br label %for.cond2307

for.end2324:                                      ; preds = %for.cond2307
  %1651 = load i32, i32* %kk2170, align 4
  %add2325 = add nsw i32 %1651, 1
  %1652 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %mtfbase2326 = getelementptr inbounds %struct.DState, %struct.DState* %1652, i32 0, i32 32
  %1653 = load i32, i32* %ii2168, align 4
  %idxprom2327 = sext i32 %1653 to i64
  %arrayidx2328 = getelementptr inbounds [16 x i32], [16 x i32]* %mtfbase2326, i64 0, i64 %idxprom2327
  store i32 %add2325, i32* %arrayidx2328, align 4
  br label %for.inc2329

for.inc2329:                                      ; preds = %for.end2324
  %1654 = load i32, i32* %ii2168, align 4
  %dec2330 = add nsw i32 %1654, -1
  store i32 %dec2330, i32* %ii2168, align 4
  br label %for.cond2303

for.end2331:                                      ; preds = %for.cond2303
  br label %if.end2332

if.end2332:                                       ; preds = %for.end2331, %while.end2289
  br label %if.end2333

if.end2333:                                       ; preds = %if.end2332, %while.end2233
  %1655 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %unzftab2334 = getelementptr inbounds %struct.DState, %struct.DState* %1655, i32 0, i32 16
  %1656 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %seqToUnseq2335 = getelementptr inbounds %struct.DState, %struct.DState* %1656, i32 0, i32 30
  %1657 = load i8, i8* %uc, align 1
  %idxprom2336 = zext i8 %1657 to i64
  %arrayidx2337 = getelementptr inbounds [256 x i8], [256 x i8]* %seqToUnseq2335, i64 0, i64 %idxprom2336
  %1658 = load i8, i8* %arrayidx2337, align 1
  %idxprom2338 = zext i8 %1658 to i64
  %arrayidx2339 = getelementptr inbounds [256 x i32], [256 x i32]* %unzftab2334, i64 0, i64 %idxprom2338
  %1659 = load i32, i32* %arrayidx2339, align 4
  %inc2340 = add nsw i32 %1659, 1
  store i32 %inc2340, i32* %arrayidx2339, align 4
  %1660 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %smallDecompress2341 = getelementptr inbounds %struct.DState, %struct.DState* %1660, i32 0, i32 10
  %1661 = load i8, i8* %smallDecompress2341, align 4
  %tobool2342 = icmp ne i8 %1661, 0
  br i1 %tobool2342, label %if.then2343, label %if.else2351

if.then2343:                                      ; preds = %if.end2333
  %1662 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %seqToUnseq2344 = getelementptr inbounds %struct.DState, %struct.DState* %1662, i32 0, i32 30
  %1663 = load i8, i8* %uc, align 1
  %idxprom2345 = zext i8 %1663 to i64
  %arrayidx2346 = getelementptr inbounds [256 x i8], [256 x i8]* %seqToUnseq2344, i64 0, i64 %idxprom2345
  %1664 = load i8, i8* %arrayidx2346, align 1
  %conv2347 = zext i8 %1664 to i16
  %1665 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll162348 = getelementptr inbounds %struct.DState, %struct.DState* %1665, i32 0, i32 21
  %1666 = load i16*, i16** %ll162348, align 8
  %1667 = load i32, i32* %nblock, align 4
  %idxprom2349 = sext i32 %1667 to i64
  %arrayidx2350 = getelementptr inbounds i16, i16* %1666, i64 %idxprom2349
  store i16 %conv2347, i16* %arrayidx2350, align 2
  br label %if.end2359

if.else2351:                                      ; preds = %if.end2333
  %1668 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %seqToUnseq2352 = getelementptr inbounds %struct.DState, %struct.DState* %1668, i32 0, i32 30
  %1669 = load i8, i8* %uc, align 1
  %idxprom2353 = zext i8 %1669 to i64
  %arrayidx2354 = getelementptr inbounds [256 x i8], [256 x i8]* %seqToUnseq2352, i64 0, i64 %idxprom2353
  %1670 = load i8, i8* %arrayidx2354, align 1
  %conv2355 = zext i8 %1670 to i32
  %1671 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tt2356 = getelementptr inbounds %struct.DState, %struct.DState* %1671, i32 0, i32 20
  %1672 = load i32*, i32** %tt2356, align 8
  %1673 = load i32, i32* %nblock, align 4
  %idxprom2357 = sext i32 %1673 to i64
  %arrayidx2358 = getelementptr inbounds i32, i32* %1672, i64 %idxprom2357
  store i32 %conv2355, i32* %arrayidx2358, align 4
  br label %if.end2359

if.end2359:                                       ; preds = %if.else2351, %if.then2343
  %1674 = load i32, i32* %nblock, align 4
  %inc2360 = add nsw i32 %1674, 1
  store i32 %inc2360, i32* %nblock, align 4
  %1675 = load i32, i32* %groupPos, align 4
  %cmp2361 = icmp eq i32 %1675, 0
  br i1 %cmp2361, label %if.then2363, label %if.end2388

if.then2363:                                      ; preds = %if.end2359
  %1676 = load i32, i32* %groupNo, align 4
  %inc2364 = add nsw i32 %1676, 1
  store i32 %inc2364, i32* %groupNo, align 4
  %1677 = load i32, i32* %groupNo, align 4
  %1678 = load i32, i32* %nSelectors, align 4
  %cmp2365 = icmp sge i32 %1677, %1678
  br i1 %cmp2365, label %if.then2367, label %if.end2368

if.then2367:                                      ; preds = %if.then2363
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end2368:                                       ; preds = %if.then2363
  store i32 50, i32* %groupPos, align 4
  %1679 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %selector2369 = getelementptr inbounds %struct.DState, %struct.DState* %1679, i32 0, i32 33
  %1680 = load i32, i32* %groupNo, align 4
  %idxprom2370 = sext i32 %1680 to i64
  %arrayidx2371 = getelementptr inbounds [18002 x i8], [18002 x i8]* %selector2369, i64 0, i64 %idxprom2370
  %1681 = load i8, i8* %arrayidx2371, align 1
  %conv2372 = zext i8 %1681 to i32
  store i32 %conv2372, i32* %gSel, align 4
  %1682 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %minLens2373 = getelementptr inbounds %struct.DState, %struct.DState* %1682, i32 0, i32 39
  %1683 = load i32, i32* %gSel, align 4
  %idxprom2374 = sext i32 %1683 to i64
  %arrayidx2375 = getelementptr inbounds [6 x i32], [6 x i32]* %minLens2373, i64 0, i64 %idxprom2374
  %1684 = load i32, i32* %arrayidx2375, align 4
  store i32 %1684, i32* %gMinlen, align 4
  %1685 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %limit2376 = getelementptr inbounds %struct.DState, %struct.DState* %1685, i32 0, i32 36
  %1686 = load i32, i32* %gSel, align 4
  %idxprom2377 = sext i32 %1686 to i64
  %arrayidx2378 = getelementptr inbounds [6 x [258 x i32]], [6 x [258 x i32]]* %limit2376, i64 0, i64 %idxprom2377
  %arrayidx2379 = getelementptr inbounds [258 x i32], [258 x i32]* %arrayidx2378, i64 0, i64 0
  store i32* %arrayidx2379, i32** %gLimit, align 8
  %1687 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %perm2380 = getelementptr inbounds %struct.DState, %struct.DState* %1687, i32 0, i32 38
  %1688 = load i32, i32* %gSel, align 4
  %idxprom2381 = sext i32 %1688 to i64
  %arrayidx2382 = getelementptr inbounds [6 x [258 x i32]], [6 x [258 x i32]]* %perm2380, i64 0, i64 %idxprom2381
  %arrayidx2383 = getelementptr inbounds [258 x i32], [258 x i32]* %arrayidx2382, i64 0, i64 0
  store i32* %arrayidx2383, i32** %gPerm, align 8
  %1689 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %base2384 = getelementptr inbounds %struct.DState, %struct.DState* %1689, i32 0, i32 37
  %1690 = load i32, i32* %gSel, align 4
  %idxprom2385 = sext i32 %1690 to i64
  %arrayidx2386 = getelementptr inbounds [6 x [258 x i32]], [6 x [258 x i32]]* %base2384, i64 0, i64 %idxprom2385
  %arrayidx2387 = getelementptr inbounds [258 x i32], [258 x i32]* %arrayidx2386, i64 0, i64 0
  store i32* %arrayidx2387, i32** %gBase, align 8
  br label %if.end2388

if.end2388:                                       ; preds = %if.end2368, %if.end2359
  %1691 = load i32, i32* %groupPos, align 4
  %dec2389 = add nsw i32 %1691, -1
  store i32 %dec2389, i32* %groupPos, align 4
  %1692 = load i32, i32* %gMinlen, align 4
  store i32 %1692, i32* %zn, align 4
  br label %sw.bb2390

sw.bb2390:                                        ; preds = %if.end, %if.end2388
  %1693 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state2391 = getelementptr inbounds %struct.DState, %struct.DState* %1693, i32 0, i32 1
  store i32 40, i32* %state2391, align 8
  br label %while.body2393

while.body2393:                                   ; preds = %sw.bb2390, %if.end2441
  %1694 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive2394 = getelementptr inbounds %struct.DState, %struct.DState* %1694, i32 0, i32 8
  %1695 = load i32, i32* %bsLive2394, align 4
  %1696 = load i32, i32* %zn, align 4
  %cmp2395 = icmp sge i32 %1695, %1696
  br i1 %cmp2395, label %if.then2397, label %if.end2408

if.then2397:                                      ; preds = %while.body2393
  %1697 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff2399 = getelementptr inbounds %struct.DState, %struct.DState* %1697, i32 0, i32 7
  %1698 = load i32, i32* %bsBuff2399, align 8
  %1699 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive2400 = getelementptr inbounds %struct.DState, %struct.DState* %1699, i32 0, i32 8
  %1700 = load i32, i32* %bsLive2400, align 4
  %1701 = load i32, i32* %zn, align 4
  %sub2401 = sub nsw i32 %1700, %1701
  %shr2402 = lshr i32 %1698, %sub2401
  %1702 = load i32, i32* %zn, align 4
  %shl2403 = shl i32 1, %1702
  %sub2404 = sub nsw i32 %shl2403, 1
  %and2405 = and i32 %shr2402, %sub2404
  store i32 %and2405, i32* %v2398, align 4
  %1703 = load i32, i32* %zn, align 4
  %1704 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive2406 = getelementptr inbounds %struct.DState, %struct.DState* %1704, i32 0, i32 8
  %1705 = load i32, i32* %bsLive2406, align 4
  %sub2407 = sub nsw i32 %1705, %1703
  store i32 %sub2407, i32* %bsLive2406, align 4
  %1706 = load i32, i32* %v2398, align 4
  store i32 %1706, i32* %zvec, align 4
  br label %while.end2442

if.end2408:                                       ; preds = %while.body2393
  %1707 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm2409 = getelementptr inbounds %struct.DState, %struct.DState* %1707, i32 0, i32 0
  %1708 = load %struct.bz_stream*, %struct.bz_stream** %strm2409, align 8
  %avail_in2410 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1708, i32 0, i32 1
  %1709 = load i32, i32* %avail_in2410, align 8
  %cmp2411 = icmp eq i32 %1709, 0
  br i1 %cmp2411, label %if.then2413, label %if.end2414

if.then2413:                                      ; preds = %if.end2408
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end2414:                                       ; preds = %if.end2408
  %1710 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff2415 = getelementptr inbounds %struct.DState, %struct.DState* %1710, i32 0, i32 7
  %1711 = load i32, i32* %bsBuff2415, align 8
  %shl2416 = shl i32 %1711, 8
  %1712 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm2417 = getelementptr inbounds %struct.DState, %struct.DState* %1712, i32 0, i32 0
  %1713 = load %struct.bz_stream*, %struct.bz_stream** %strm2417, align 8
  %next_in2418 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1713, i32 0, i32 0
  %1714 = load i8*, i8** %next_in2418, align 8
  %1715 = load i8, i8* %1714, align 1
  %conv2419 = zext i8 %1715 to i32
  %or2420 = or i32 %shl2416, %conv2419
  %1716 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff2421 = getelementptr inbounds %struct.DState, %struct.DState* %1716, i32 0, i32 7
  store i32 %or2420, i32* %bsBuff2421, align 8
  %1717 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive2422 = getelementptr inbounds %struct.DState, %struct.DState* %1717, i32 0, i32 8
  %1718 = load i32, i32* %bsLive2422, align 4
  %add2423 = add nsw i32 %1718, 8
  store i32 %add2423, i32* %bsLive2422, align 4
  %1719 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm2424 = getelementptr inbounds %struct.DState, %struct.DState* %1719, i32 0, i32 0
  %1720 = load %struct.bz_stream*, %struct.bz_stream** %strm2424, align 8
  %next_in2425 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1720, i32 0, i32 0
  %1721 = load i8*, i8** %next_in2425, align 8
  %incdec.ptr2426 = getelementptr inbounds i8, i8* %1721, i32 1
  store i8* %incdec.ptr2426, i8** %next_in2425, align 8
  %1722 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm2427 = getelementptr inbounds %struct.DState, %struct.DState* %1722, i32 0, i32 0
  %1723 = load %struct.bz_stream*, %struct.bz_stream** %strm2427, align 8
  %avail_in2428 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1723, i32 0, i32 1
  %1724 = load i32, i32* %avail_in2428, align 8
  %dec2429 = add i32 %1724, -1
  store i32 %dec2429, i32* %avail_in2428, align 8
  %1725 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm2430 = getelementptr inbounds %struct.DState, %struct.DState* %1725, i32 0, i32 0
  %1726 = load %struct.bz_stream*, %struct.bz_stream** %strm2430, align 8
  %total_in_lo322431 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1726, i32 0, i32 2
  %1727 = load i32, i32* %total_in_lo322431, align 4
  %inc2432 = add i32 %1727, 1
  store i32 %inc2432, i32* %total_in_lo322431, align 4
  %1728 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm2433 = getelementptr inbounds %struct.DState, %struct.DState* %1728, i32 0, i32 0
  %1729 = load %struct.bz_stream*, %struct.bz_stream** %strm2433, align 8
  %total_in_lo322434 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1729, i32 0, i32 2
  %1730 = load i32, i32* %total_in_lo322434, align 4
  %cmp2435 = icmp eq i32 %1730, 0
  br i1 %cmp2435, label %if.then2437, label %if.end2441

if.then2437:                                      ; preds = %if.end2414
  %1731 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm2438 = getelementptr inbounds %struct.DState, %struct.DState* %1731, i32 0, i32 0
  %1732 = load %struct.bz_stream*, %struct.bz_stream** %strm2438, align 8
  %total_in_hi322439 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1732, i32 0, i32 3
  %1733 = load i32, i32* %total_in_hi322439, align 8
  %inc2440 = add i32 %1733, 1
  store i32 %inc2440, i32* %total_in_hi322439, align 8
  br label %if.end2441

if.end2441:                                       ; preds = %if.then2437, %if.end2414
  br label %while.body2393

while.end2442:                                    ; preds = %if.then2397
  br label %while.body2444

while.body2444:                                   ; preds = %while.end2442, %while.end2506
  %1734 = load i32, i32* %zn, align 4
  %cmp2445 = icmp sgt i32 %1734, 20
  br i1 %cmp2445, label %if.then2447, label %if.end2448

if.then2447:                                      ; preds = %while.body2444
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end2448:                                       ; preds = %while.body2444
  %1735 = load i32, i32* %zvec, align 4
  %1736 = load i32*, i32** %gLimit, align 8
  %1737 = load i32, i32* %zn, align 4
  %idxprom2449 = sext i32 %1737 to i64
  %arrayidx2450 = getelementptr inbounds i32, i32* %1736, i64 %idxprom2449
  %1738 = load i32, i32* %arrayidx2450, align 4
  %cmp2451 = icmp sle i32 %1735, %1738
  br i1 %cmp2451, label %if.then2453, label %if.end2454

if.then2453:                                      ; preds = %if.end2448
  br label %while.end2509

if.end2454:                                       ; preds = %if.end2448
  %1739 = load i32, i32* %zn, align 4
  %inc2455 = add nsw i32 %1739, 1
  store i32 %inc2455, i32* %zn, align 4
  br label %sw.bb2456

sw.bb2456:                                        ; preds = %if.end, %if.end2454
  %1740 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state2457 = getelementptr inbounds %struct.DState, %struct.DState* %1740, i32 0, i32 1
  store i32 41, i32* %state2457, align 8
  br label %while.body2459

while.body2459:                                   ; preds = %sw.bb2456, %if.end2505
  %1741 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive2460 = getelementptr inbounds %struct.DState, %struct.DState* %1741, i32 0, i32 8
  %1742 = load i32, i32* %bsLive2460, align 4
  %cmp2461 = icmp sge i32 %1742, 1
  br i1 %cmp2461, label %if.then2463, label %if.end2472

if.then2463:                                      ; preds = %while.body2459
  %1743 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff2465 = getelementptr inbounds %struct.DState, %struct.DState* %1743, i32 0, i32 7
  %1744 = load i32, i32* %bsBuff2465, align 8
  %1745 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive2466 = getelementptr inbounds %struct.DState, %struct.DState* %1745, i32 0, i32 8
  %1746 = load i32, i32* %bsLive2466, align 4
  %sub2467 = sub nsw i32 %1746, 1
  %shr2468 = lshr i32 %1744, %sub2467
  %and2469 = and i32 %shr2468, 1
  store i32 %and2469, i32* %v2464, align 4
  %1747 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive2470 = getelementptr inbounds %struct.DState, %struct.DState* %1747, i32 0, i32 8
  %1748 = load i32, i32* %bsLive2470, align 4
  %sub2471 = sub nsw i32 %1748, 1
  store i32 %sub2471, i32* %bsLive2470, align 4
  %1749 = load i32, i32* %v2464, align 4
  store i32 %1749, i32* %zj, align 4
  br label %while.end2506

if.end2472:                                       ; preds = %while.body2459
  %1750 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm2473 = getelementptr inbounds %struct.DState, %struct.DState* %1750, i32 0, i32 0
  %1751 = load %struct.bz_stream*, %struct.bz_stream** %strm2473, align 8
  %avail_in2474 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1751, i32 0, i32 1
  %1752 = load i32, i32* %avail_in2474, align 8
  %cmp2475 = icmp eq i32 %1752, 0
  br i1 %cmp2475, label %if.then2477, label %if.end2478

if.then2477:                                      ; preds = %if.end2472
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end2478:                                       ; preds = %if.end2472
  %1753 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff2479 = getelementptr inbounds %struct.DState, %struct.DState* %1753, i32 0, i32 7
  %1754 = load i32, i32* %bsBuff2479, align 8
  %shl2480 = shl i32 %1754, 8
  %1755 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm2481 = getelementptr inbounds %struct.DState, %struct.DState* %1755, i32 0, i32 0
  %1756 = load %struct.bz_stream*, %struct.bz_stream** %strm2481, align 8
  %next_in2482 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1756, i32 0, i32 0
  %1757 = load i8*, i8** %next_in2482, align 8
  %1758 = load i8, i8* %1757, align 1
  %conv2483 = zext i8 %1758 to i32
  %or2484 = or i32 %shl2480, %conv2483
  %1759 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff2485 = getelementptr inbounds %struct.DState, %struct.DState* %1759, i32 0, i32 7
  store i32 %or2484, i32* %bsBuff2485, align 8
  %1760 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive2486 = getelementptr inbounds %struct.DState, %struct.DState* %1760, i32 0, i32 8
  %1761 = load i32, i32* %bsLive2486, align 4
  %add2487 = add nsw i32 %1761, 8
  store i32 %add2487, i32* %bsLive2486, align 4
  %1762 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm2488 = getelementptr inbounds %struct.DState, %struct.DState* %1762, i32 0, i32 0
  %1763 = load %struct.bz_stream*, %struct.bz_stream** %strm2488, align 8
  %next_in2489 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1763, i32 0, i32 0
  %1764 = load i8*, i8** %next_in2489, align 8
  %incdec.ptr2490 = getelementptr inbounds i8, i8* %1764, i32 1
  store i8* %incdec.ptr2490, i8** %next_in2489, align 8
  %1765 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm2491 = getelementptr inbounds %struct.DState, %struct.DState* %1765, i32 0, i32 0
  %1766 = load %struct.bz_stream*, %struct.bz_stream** %strm2491, align 8
  %avail_in2492 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1766, i32 0, i32 1
  %1767 = load i32, i32* %avail_in2492, align 8
  %dec2493 = add i32 %1767, -1
  store i32 %dec2493, i32* %avail_in2492, align 8
  %1768 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm2494 = getelementptr inbounds %struct.DState, %struct.DState* %1768, i32 0, i32 0
  %1769 = load %struct.bz_stream*, %struct.bz_stream** %strm2494, align 8
  %total_in_lo322495 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1769, i32 0, i32 2
  %1770 = load i32, i32* %total_in_lo322495, align 4
  %inc2496 = add i32 %1770, 1
  store i32 %inc2496, i32* %total_in_lo322495, align 4
  %1771 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm2497 = getelementptr inbounds %struct.DState, %struct.DState* %1771, i32 0, i32 0
  %1772 = load %struct.bz_stream*, %struct.bz_stream** %strm2497, align 8
  %total_in_lo322498 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1772, i32 0, i32 2
  %1773 = load i32, i32* %total_in_lo322498, align 4
  %cmp2499 = icmp eq i32 %1773, 0
  br i1 %cmp2499, label %if.then2501, label %if.end2505

if.then2501:                                      ; preds = %if.end2478
  %1774 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm2502 = getelementptr inbounds %struct.DState, %struct.DState* %1774, i32 0, i32 0
  %1775 = load %struct.bz_stream*, %struct.bz_stream** %strm2502, align 8
  %total_in_hi322503 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1775, i32 0, i32 3
  %1776 = load i32, i32* %total_in_hi322503, align 8
  %inc2504 = add i32 %1776, 1
  store i32 %inc2504, i32* %total_in_hi322503, align 8
  br label %if.end2505

if.end2505:                                       ; preds = %if.then2501, %if.end2478
  br label %while.body2459

while.end2506:                                    ; preds = %if.then2463
  %1777 = load i32, i32* %zvec, align 4
  %shl2507 = shl i32 %1777, 1
  %1778 = load i32, i32* %zj, align 4
  %or2508 = or i32 %shl2507, %1778
  store i32 %or2508, i32* %zvec, align 4
  br label %while.body2444

while.end2509:                                    ; preds = %if.then2453
  %1779 = load i32, i32* %zvec, align 4
  %1780 = load i32*, i32** %gBase, align 8
  %1781 = load i32, i32* %zn, align 4
  %idxprom2510 = sext i32 %1781 to i64
  %arrayidx2511 = getelementptr inbounds i32, i32* %1780, i64 %idxprom2510
  %1782 = load i32, i32* %arrayidx2511, align 4
  %sub2512 = sub nsw i32 %1779, %1782
  %cmp2513 = icmp slt i32 %sub2512, 0
  br i1 %cmp2513, label %if.then2521, label %lor.lhs.false2515

lor.lhs.false2515:                                ; preds = %while.end2509
  %1783 = load i32, i32* %zvec, align 4
  %1784 = load i32*, i32** %gBase, align 8
  %1785 = load i32, i32* %zn, align 4
  %idxprom2516 = sext i32 %1785 to i64
  %arrayidx2517 = getelementptr inbounds i32, i32* %1784, i64 %idxprom2516
  %1786 = load i32, i32* %arrayidx2517, align 4
  %sub2518 = sub nsw i32 %1783, %1786
  %cmp2519 = icmp sge i32 %sub2518, 258
  br i1 %cmp2519, label %if.then2521, label %if.end2522

if.then2521:                                      ; preds = %lor.lhs.false2515, %while.end2509
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end2522:                                       ; preds = %lor.lhs.false2515
  %1787 = load i32*, i32** %gPerm, align 8
  %1788 = load i32, i32* %zvec, align 4
  %1789 = load i32*, i32** %gBase, align 8
  %1790 = load i32, i32* %zn, align 4
  %idxprom2523 = sext i32 %1790 to i64
  %arrayidx2524 = getelementptr inbounds i32, i32* %1789, i64 %idxprom2523
  %1791 = load i32, i32* %arrayidx2524, align 4
  %sub2525 = sub nsw i32 %1788, %1791
  %idxprom2526 = sext i32 %sub2525 to i64
  %arrayidx2527 = getelementptr inbounds i32, i32* %1787, i64 %idxprom2526
  %1792 = load i32, i32* %arrayidx2527, align 4
  store i32 %1792, i32* %nextSym, align 4
  br label %while.body1920

while.end2528:                                    ; preds = %if.then1923
  %1793 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %origPtr2529 = getelementptr inbounds %struct.DState, %struct.DState* %1793, i32 0, i32 13
  %1794 = load i32, i32* %origPtr2529, align 8
  %cmp2530 = icmp slt i32 %1794, 0
  br i1 %cmp2530, label %if.then2536, label %lor.lhs.false2532

lor.lhs.false2532:                                ; preds = %while.end2528
  %1795 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %origPtr2533 = getelementptr inbounds %struct.DState, %struct.DState* %1795, i32 0, i32 13
  %1796 = load i32, i32* %origPtr2533, align 8
  %1797 = load i32, i32* %nblock, align 4
  %cmp2534 = icmp sge i32 %1796, %1797
  br i1 %cmp2534, label %if.then2536, label %if.end2537

if.then2536:                                      ; preds = %lor.lhs.false2532, %while.end2528
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end2537:                                       ; preds = %lor.lhs.false2532
  %1798 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %cftab = getelementptr inbounds %struct.DState, %struct.DState* %1798, i32 0, i32 18
  %arrayidx2538 = getelementptr inbounds [257 x i32], [257 x i32]* %cftab, i64 0, i64 0
  store i32 0, i32* %arrayidx2538, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond2539

for.cond2539:                                     ; preds = %for.inc2550, %if.end2537
  %1799 = load i32, i32* %i, align 4
  %cmp2540 = icmp sle i32 %1799, 256
  br i1 %cmp2540, label %for.body2542, label %for.end2552

for.body2542:                                     ; preds = %for.cond2539
  %1800 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %unzftab2543 = getelementptr inbounds %struct.DState, %struct.DState* %1800, i32 0, i32 16
  %1801 = load i32, i32* %i, align 4
  %sub2544 = sub nsw i32 %1801, 1
  %idxprom2545 = sext i32 %sub2544 to i64
  %arrayidx2546 = getelementptr inbounds [256 x i32], [256 x i32]* %unzftab2543, i64 0, i64 %idxprom2545
  %1802 = load i32, i32* %arrayidx2546, align 4
  %1803 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %cftab2547 = getelementptr inbounds %struct.DState, %struct.DState* %1803, i32 0, i32 18
  %1804 = load i32, i32* %i, align 4
  %idxprom2548 = sext i32 %1804 to i64
  %arrayidx2549 = getelementptr inbounds [257 x i32], [257 x i32]* %cftab2547, i64 0, i64 %idxprom2548
  store i32 %1802, i32* %arrayidx2549, align 4
  br label %for.inc2550

for.inc2550:                                      ; preds = %for.body2542
  %1805 = load i32, i32* %i, align 4
  %inc2551 = add nsw i32 %1805, 1
  store i32 %inc2551, i32* %i, align 4
  br label %for.cond2539

for.end2552:                                      ; preds = %for.cond2539
  store i32 1, i32* %i, align 4
  br label %for.cond2553

for.cond2553:                                     ; preds = %for.inc2565, %for.end2552
  %1806 = load i32, i32* %i, align 4
  %cmp2554 = icmp sle i32 %1806, 256
  br i1 %cmp2554, label %for.body2556, label %for.end2567

for.body2556:                                     ; preds = %for.cond2553
  %1807 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %cftab2557 = getelementptr inbounds %struct.DState, %struct.DState* %1807, i32 0, i32 18
  %1808 = load i32, i32* %i, align 4
  %sub2558 = sub nsw i32 %1808, 1
  %idxprom2559 = sext i32 %sub2558 to i64
  %arrayidx2560 = getelementptr inbounds [257 x i32], [257 x i32]* %cftab2557, i64 0, i64 %idxprom2559
  %1809 = load i32, i32* %arrayidx2560, align 4
  %1810 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %cftab2561 = getelementptr inbounds %struct.DState, %struct.DState* %1810, i32 0, i32 18
  %1811 = load i32, i32* %i, align 4
  %idxprom2562 = sext i32 %1811 to i64
  %arrayidx2563 = getelementptr inbounds [257 x i32], [257 x i32]* %cftab2561, i64 0, i64 %idxprom2562
  %1812 = load i32, i32* %arrayidx2563, align 4
  %add2564 = add nsw i32 %1812, %1809
  store i32 %add2564, i32* %arrayidx2563, align 4
  br label %for.inc2565

for.inc2565:                                      ; preds = %for.body2556
  %1813 = load i32, i32* %i, align 4
  %inc2566 = add nsw i32 %1813, 1
  store i32 %inc2566, i32* %i, align 4
  br label %for.cond2553

for.end2567:                                      ; preds = %for.cond2553
  store i32 0, i32* %i, align 4
  br label %for.cond2568

for.cond2568:                                     ; preds = %for.inc2585, %for.end2567
  %1814 = load i32, i32* %i, align 4
  %cmp2569 = icmp sle i32 %1814, 256
  br i1 %cmp2569, label %for.body2571, label %for.end2587

for.body2571:                                     ; preds = %for.cond2568
  %1815 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %cftab2572 = getelementptr inbounds %struct.DState, %struct.DState* %1815, i32 0, i32 18
  %1816 = load i32, i32* %i, align 4
  %idxprom2573 = sext i32 %1816 to i64
  %arrayidx2574 = getelementptr inbounds [257 x i32], [257 x i32]* %cftab2572, i64 0, i64 %idxprom2573
  %1817 = load i32, i32* %arrayidx2574, align 4
  %cmp2575 = icmp slt i32 %1817, 0
  br i1 %cmp2575, label %if.then2583, label %lor.lhs.false2577

lor.lhs.false2577:                                ; preds = %for.body2571
  %1818 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %cftab2578 = getelementptr inbounds %struct.DState, %struct.DState* %1818, i32 0, i32 18
  %1819 = load i32, i32* %i, align 4
  %idxprom2579 = sext i32 %1819 to i64
  %arrayidx2580 = getelementptr inbounds [257 x i32], [257 x i32]* %cftab2578, i64 0, i64 %idxprom2579
  %1820 = load i32, i32* %arrayidx2580, align 4
  %1821 = load i32, i32* %nblock, align 4
  %cmp2581 = icmp sgt i32 %1820, %1821
  br i1 %cmp2581, label %if.then2583, label %if.end2584

if.then2583:                                      ; preds = %lor.lhs.false2577, %for.body2571
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end2584:                                       ; preds = %lor.lhs.false2577
  br label %for.inc2585

for.inc2585:                                      ; preds = %if.end2584
  %1822 = load i32, i32* %i, align 4
  %inc2586 = add nsw i32 %1822, 1
  store i32 %inc2586, i32* %i, align 4
  br label %for.cond2568

for.end2587:                                      ; preds = %for.cond2568
  %1823 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_len = getelementptr inbounds %struct.DState, %struct.DState* %1823, i32 0, i32 3
  store i32 0, i32* %state_out_len, align 8
  %1824 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state_out_ch = getelementptr inbounds %struct.DState, %struct.DState* %1824, i32 0, i32 2
  store i8 0, i8* %state_out_ch, align 4
  %1825 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %calculatedBlockCRC = getelementptr inbounds %struct.DState, %struct.DState* %1825, i32 0, i32 25
  store i32 -1, i32* %calculatedBlockCRC, align 8
  %1826 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state2588 = getelementptr inbounds %struct.DState, %struct.DState* %1826, i32 0, i32 1
  store i32 2, i32* %state2588, align 8
  %1827 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %verbosity2589 = getelementptr inbounds %struct.DState, %struct.DState* %1827, i32 0, i32 12
  %1828 = load i32, i32* %verbosity2589, align 4
  %cmp2590 = icmp sge i32 %1828, 2
  br i1 %cmp2590, label %if.then2592, label %if.end2594

if.then2592:                                      ; preds = %for.end2587
  %1829 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2593 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1829, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %if.end2594

if.end2594:                                       ; preds = %if.then2592, %for.end2587
  %1830 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %smallDecompress2595 = getelementptr inbounds %struct.DState, %struct.DState* %1830, i32 0, i32 10
  %1831 = load i8, i8* %smallDecompress2595, align 4
  %tobool2596 = icmp ne i8 %1831, 0
  br i1 %tobool2596, label %if.then2597, label %if.else2827

if.then2597:                                      ; preds = %if.end2594
  store i32 0, i32* %i, align 4
  br label %for.cond2598

for.cond2598:                                     ; preds = %for.inc2607, %if.then2597
  %1832 = load i32, i32* %i, align 4
  %cmp2599 = icmp sle i32 %1832, 256
  br i1 %cmp2599, label %for.body2601, label %for.end2609

for.body2601:                                     ; preds = %for.cond2598
  %1833 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %cftab2602 = getelementptr inbounds %struct.DState, %struct.DState* %1833, i32 0, i32 18
  %1834 = load i32, i32* %i, align 4
  %idxprom2603 = sext i32 %1834 to i64
  %arrayidx2604 = getelementptr inbounds [257 x i32], [257 x i32]* %cftab2602, i64 0, i64 %idxprom2603
  %1835 = load i32, i32* %arrayidx2604, align 4
  %1836 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %cftabCopy = getelementptr inbounds %struct.DState, %struct.DState* %1836, i32 0, i32 19
  %1837 = load i32, i32* %i, align 4
  %idxprom2605 = sext i32 %1837 to i64
  %arrayidx2606 = getelementptr inbounds [257 x i32], [257 x i32]* %cftabCopy, i64 0, i64 %idxprom2605
  store i32 %1835, i32* %arrayidx2606, align 4
  br label %for.inc2607

for.inc2607:                                      ; preds = %for.body2601
  %1838 = load i32, i32* %i, align 4
  %inc2608 = add nsw i32 %1838, 1
  store i32 %inc2608, i32* %i, align 4
  br label %for.cond2598

for.end2609:                                      ; preds = %for.cond2598
  store i32 0, i32* %i, align 4
  br label %for.cond2610

for.cond2610:                                     ; preds = %for.inc2669, %for.end2609
  %1839 = load i32, i32* %i, align 4
  %1840 = load i32, i32* %nblock, align 4
  %cmp2611 = icmp slt i32 %1839, %1840
  br i1 %cmp2611, label %for.body2613, label %for.end2671

for.body2613:                                     ; preds = %for.cond2610
  %1841 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll162614 = getelementptr inbounds %struct.DState, %struct.DState* %1841, i32 0, i32 21
  %1842 = load i16*, i16** %ll162614, align 8
  %1843 = load i32, i32* %i, align 4
  %idxprom2615 = sext i32 %1843 to i64
  %arrayidx2616 = getelementptr inbounds i16, i16* %1842, i64 %idxprom2615
  %1844 = load i16, i16* %arrayidx2616, align 2
  %conv2617 = trunc i16 %1844 to i8
  store i8 %conv2617, i8* %uc, align 1
  %1845 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %cftabCopy2618 = getelementptr inbounds %struct.DState, %struct.DState* %1845, i32 0, i32 19
  %1846 = load i8, i8* %uc, align 1
  %idxprom2619 = zext i8 %1846 to i64
  %arrayidx2620 = getelementptr inbounds [257 x i32], [257 x i32]* %cftabCopy2618, i64 0, i64 %idxprom2619
  %1847 = load i32, i32* %arrayidx2620, align 4
  %and2621 = and i32 %1847, 65535
  %conv2622 = trunc i32 %and2621 to i16
  %1848 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll162623 = getelementptr inbounds %struct.DState, %struct.DState* %1848, i32 0, i32 21
  %1849 = load i16*, i16** %ll162623, align 8
  %1850 = load i32, i32* %i, align 4
  %idxprom2624 = sext i32 %1850 to i64
  %arrayidx2625 = getelementptr inbounds i16, i16* %1849, i64 %idxprom2624
  store i16 %conv2622, i16* %arrayidx2625, align 2
  %1851 = load i32, i32* %i, align 4
  %and2626 = and i32 %1851, 1
  %cmp2627 = icmp eq i32 %and2626, 0
  br i1 %cmp2627, label %if.then2629, label %if.else2646

if.then2629:                                      ; preds = %for.body2613
  %1852 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll42630 = getelementptr inbounds %struct.DState, %struct.DState* %1852, i32 0, i32 22
  %1853 = load i8*, i8** %ll42630, align 8
  %1854 = load i32, i32* %i, align 4
  %shr2631 = ashr i32 %1854, 1
  %idxprom2632 = sext i32 %shr2631 to i64
  %arrayidx2633 = getelementptr inbounds i8, i8* %1853, i64 %idxprom2632
  %1855 = load i8, i8* %arrayidx2633, align 1
  %conv2634 = zext i8 %1855 to i32
  %and2635 = and i32 %conv2634, 240
  %1856 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %cftabCopy2636 = getelementptr inbounds %struct.DState, %struct.DState* %1856, i32 0, i32 19
  %1857 = load i8, i8* %uc, align 1
  %idxprom2637 = zext i8 %1857 to i64
  %arrayidx2638 = getelementptr inbounds [257 x i32], [257 x i32]* %cftabCopy2636, i64 0, i64 %idxprom2637
  %1858 = load i32, i32* %arrayidx2638, align 4
  %shr2639 = ashr i32 %1858, 16
  %or2640 = or i32 %and2635, %shr2639
  %conv2641 = trunc i32 %or2640 to i8
  %1859 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll42642 = getelementptr inbounds %struct.DState, %struct.DState* %1859, i32 0, i32 22
  %1860 = load i8*, i8** %ll42642, align 8
  %1861 = load i32, i32* %i, align 4
  %shr2643 = ashr i32 %1861, 1
  %idxprom2644 = sext i32 %shr2643 to i64
  %arrayidx2645 = getelementptr inbounds i8, i8* %1860, i64 %idxprom2644
  store i8 %conv2641, i8* %arrayidx2645, align 1
  br label %if.end2664

if.else2646:                                      ; preds = %for.body2613
  %1862 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll42647 = getelementptr inbounds %struct.DState, %struct.DState* %1862, i32 0, i32 22
  %1863 = load i8*, i8** %ll42647, align 8
  %1864 = load i32, i32* %i, align 4
  %shr2648 = ashr i32 %1864, 1
  %idxprom2649 = sext i32 %shr2648 to i64
  %arrayidx2650 = getelementptr inbounds i8, i8* %1863, i64 %idxprom2649
  %1865 = load i8, i8* %arrayidx2650, align 1
  %conv2651 = zext i8 %1865 to i32
  %and2652 = and i32 %conv2651, 15
  %1866 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %cftabCopy2653 = getelementptr inbounds %struct.DState, %struct.DState* %1866, i32 0, i32 19
  %1867 = load i8, i8* %uc, align 1
  %idxprom2654 = zext i8 %1867 to i64
  %arrayidx2655 = getelementptr inbounds [257 x i32], [257 x i32]* %cftabCopy2653, i64 0, i64 %idxprom2654
  %1868 = load i32, i32* %arrayidx2655, align 4
  %shr2656 = ashr i32 %1868, 16
  %shl2657 = shl i32 %shr2656, 4
  %or2658 = or i32 %and2652, %shl2657
  %conv2659 = trunc i32 %or2658 to i8
  %1869 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll42660 = getelementptr inbounds %struct.DState, %struct.DState* %1869, i32 0, i32 22
  %1870 = load i8*, i8** %ll42660, align 8
  %1871 = load i32, i32* %i, align 4
  %shr2661 = ashr i32 %1871, 1
  %idxprom2662 = sext i32 %shr2661 to i64
  %arrayidx2663 = getelementptr inbounds i8, i8* %1870, i64 %idxprom2662
  store i8 %conv2659, i8* %arrayidx2663, align 1
  br label %if.end2664

if.end2664:                                       ; preds = %if.else2646, %if.then2629
  %1872 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %cftabCopy2665 = getelementptr inbounds %struct.DState, %struct.DState* %1872, i32 0, i32 19
  %1873 = load i8, i8* %uc, align 1
  %idxprom2666 = zext i8 %1873 to i64
  %arrayidx2667 = getelementptr inbounds [257 x i32], [257 x i32]* %cftabCopy2665, i64 0, i64 %idxprom2666
  %1874 = load i32, i32* %arrayidx2667, align 4
  %inc2668 = add nsw i32 %1874, 1
  store i32 %inc2668, i32* %arrayidx2667, align 4
  br label %for.inc2669

for.inc2669:                                      ; preds = %if.end2664
  %1875 = load i32, i32* %i, align 4
  %inc2670 = add nsw i32 %1875, 1
  store i32 %inc2670, i32* %i, align 4
  br label %for.cond2610

for.end2671:                                      ; preds = %for.cond2610
  %1876 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %origPtr2672 = getelementptr inbounds %struct.DState, %struct.DState* %1876, i32 0, i32 13
  %1877 = load i32, i32* %origPtr2672, align 8
  store i32 %1877, i32* %i, align 4
  %1878 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll162673 = getelementptr inbounds %struct.DState, %struct.DState* %1878, i32 0, i32 21
  %1879 = load i16*, i16** %ll162673, align 8
  %1880 = load i32, i32* %i, align 4
  %idxprom2674 = sext i32 %1880 to i64
  %arrayidx2675 = getelementptr inbounds i16, i16* %1879, i64 %idxprom2674
  %1881 = load i16, i16* %arrayidx2675, align 2
  %conv2676 = zext i16 %1881 to i32
  %1882 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll42677 = getelementptr inbounds %struct.DState, %struct.DState* %1882, i32 0, i32 22
  %1883 = load i8*, i8** %ll42677, align 8
  %1884 = load i32, i32* %i, align 4
  %shr2678 = ashr i32 %1884, 1
  %idxprom2679 = sext i32 %shr2678 to i64
  %arrayidx2680 = getelementptr inbounds i8, i8* %1883, i64 %idxprom2679
  %1885 = load i8, i8* %arrayidx2680, align 1
  %conv2681 = zext i8 %1885 to i32
  %1886 = load i32, i32* %i, align 4
  %shl2682 = shl i32 %1886, 2
  %and2683 = and i32 %shl2682, 4
  %shr2684 = lshr i32 %conv2681, %and2683
  %and2685 = and i32 %shr2684, 15
  %shl2686 = shl i32 %and2685, 16
  %or2687 = or i32 %conv2676, %shl2686
  store i32 %or2687, i32* %j, align 4
  br label %do.body2688

do.body2688:                                      ; preds = %do.cond2743, %for.end2671
  %1887 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll162690 = getelementptr inbounds %struct.DState, %struct.DState* %1887, i32 0, i32 21
  %1888 = load i16*, i16** %ll162690, align 8
  %1889 = load i32, i32* %j, align 4
  %idxprom2691 = sext i32 %1889 to i64
  %arrayidx2692 = getelementptr inbounds i16, i16* %1888, i64 %idxprom2691
  %1890 = load i16, i16* %arrayidx2692, align 2
  %conv2693 = zext i16 %1890 to i32
  %1891 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll42694 = getelementptr inbounds %struct.DState, %struct.DState* %1891, i32 0, i32 22
  %1892 = load i8*, i8** %ll42694, align 8
  %1893 = load i32, i32* %j, align 4
  %shr2695 = ashr i32 %1893, 1
  %idxprom2696 = sext i32 %shr2695 to i64
  %arrayidx2697 = getelementptr inbounds i8, i8* %1892, i64 %idxprom2696
  %1894 = load i8, i8* %arrayidx2697, align 1
  %conv2698 = zext i8 %1894 to i32
  %1895 = load i32, i32* %j, align 4
  %shl2699 = shl i32 %1895, 2
  %and2700 = and i32 %shl2699, 4
  %shr2701 = lshr i32 %conv2698, %and2700
  %and2702 = and i32 %shr2701, 15
  %shl2703 = shl i32 %and2702, 16
  %or2704 = or i32 %conv2693, %shl2703
  store i32 %or2704, i32* %tmp2689, align 4
  %1896 = load i32, i32* %i, align 4
  %and2705 = and i32 %1896, 65535
  %conv2706 = trunc i32 %and2705 to i16
  %1897 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll162707 = getelementptr inbounds %struct.DState, %struct.DState* %1897, i32 0, i32 21
  %1898 = load i16*, i16** %ll162707, align 8
  %1899 = load i32, i32* %j, align 4
  %idxprom2708 = sext i32 %1899 to i64
  %arrayidx2709 = getelementptr inbounds i16, i16* %1898, i64 %idxprom2708
  store i16 %conv2706, i16* %arrayidx2709, align 2
  %1900 = load i32, i32* %j, align 4
  %and2710 = and i32 %1900, 1
  %cmp2711 = icmp eq i32 %and2710, 0
  br i1 %cmp2711, label %if.then2713, label %if.else2727

if.then2713:                                      ; preds = %do.body2688
  %1901 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll42714 = getelementptr inbounds %struct.DState, %struct.DState* %1901, i32 0, i32 22
  %1902 = load i8*, i8** %ll42714, align 8
  %1903 = load i32, i32* %j, align 4
  %shr2715 = ashr i32 %1903, 1
  %idxprom2716 = sext i32 %shr2715 to i64
  %arrayidx2717 = getelementptr inbounds i8, i8* %1902, i64 %idxprom2716
  %1904 = load i8, i8* %arrayidx2717, align 1
  %conv2718 = zext i8 %1904 to i32
  %and2719 = and i32 %conv2718, 240
  %1905 = load i32, i32* %i, align 4
  %shr2720 = ashr i32 %1905, 16
  %or2721 = or i32 %and2719, %shr2720
  %conv2722 = trunc i32 %or2721 to i8
  %1906 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll42723 = getelementptr inbounds %struct.DState, %struct.DState* %1906, i32 0, i32 22
  %1907 = load i8*, i8** %ll42723, align 8
  %1908 = load i32, i32* %j, align 4
  %shr2724 = ashr i32 %1908, 1
  %idxprom2725 = sext i32 %shr2724 to i64
  %arrayidx2726 = getelementptr inbounds i8, i8* %1907, i64 %idxprom2725
  store i8 %conv2722, i8* %arrayidx2726, align 1
  br label %if.end2742

if.else2727:                                      ; preds = %do.body2688
  %1909 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll42728 = getelementptr inbounds %struct.DState, %struct.DState* %1909, i32 0, i32 22
  %1910 = load i8*, i8** %ll42728, align 8
  %1911 = load i32, i32* %j, align 4
  %shr2729 = ashr i32 %1911, 1
  %idxprom2730 = sext i32 %shr2729 to i64
  %arrayidx2731 = getelementptr inbounds i8, i8* %1910, i64 %idxprom2730
  %1912 = load i8, i8* %arrayidx2731, align 1
  %conv2732 = zext i8 %1912 to i32
  %and2733 = and i32 %conv2732, 15
  %1913 = load i32, i32* %i, align 4
  %shr2734 = ashr i32 %1913, 16
  %shl2735 = shl i32 %shr2734, 4
  %or2736 = or i32 %and2733, %shl2735
  %conv2737 = trunc i32 %or2736 to i8
  %1914 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll42738 = getelementptr inbounds %struct.DState, %struct.DState* %1914, i32 0, i32 22
  %1915 = load i8*, i8** %ll42738, align 8
  %1916 = load i32, i32* %j, align 4
  %shr2739 = ashr i32 %1916, 1
  %idxprom2740 = sext i32 %shr2739 to i64
  %arrayidx2741 = getelementptr inbounds i8, i8* %1915, i64 %idxprom2740
  store i8 %conv2737, i8* %arrayidx2741, align 1
  br label %if.end2742

if.end2742:                                       ; preds = %if.else2727, %if.then2713
  %1917 = load i32, i32* %j, align 4
  store i32 %1917, i32* %i, align 4
  %1918 = load i32, i32* %tmp2689, align 4
  store i32 %1918, i32* %j, align 4
  br label %do.cond2743

do.cond2743:                                      ; preds = %if.end2742
  %1919 = load i32, i32* %i, align 4
  %1920 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %origPtr2744 = getelementptr inbounds %struct.DState, %struct.DState* %1920, i32 0, i32 13
  %1921 = load i32, i32* %origPtr2744, align 8
  %cmp2745 = icmp ne i32 %1919, %1921
  br i1 %cmp2745, label %do.body2688, label %do.end2747

do.end2747:                                       ; preds = %do.cond2743
  %1922 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %origPtr2748 = getelementptr inbounds %struct.DState, %struct.DState* %1922, i32 0, i32 13
  %1923 = load i32, i32* %origPtr2748, align 8
  %1924 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos = getelementptr inbounds %struct.DState, %struct.DState* %1924, i32 0, i32 14
  store i32 %1923, i32* %tPos, align 4
  %1925 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used = getelementptr inbounds %struct.DState, %struct.DState* %1925, i32 0, i32 17
  store i32 0, i32* %nblock_used, align 4
  %1926 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %blockRandomised2749 = getelementptr inbounds %struct.DState, %struct.DState* %1926, i32 0, i32 4
  %1927 = load i8, i8* %blockRandomised2749, align 4
  %tobool2750 = icmp ne i8 %1927, 0
  br i1 %tobool2750, label %if.then2751, label %if.else2799

if.then2751:                                      ; preds = %do.end2747
  %1928 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo = getelementptr inbounds %struct.DState, %struct.DState* %1928, i32 0, i32 5
  store i32 0, i32* %rNToGo, align 8
  %1929 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos = getelementptr inbounds %struct.DState, %struct.DState* %1929, i32 0, i32 6
  store i32 0, i32* %rTPos, align 4
  %1930 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos2752 = getelementptr inbounds %struct.DState, %struct.DState* %1930, i32 0, i32 14
  %1931 = load i32, i32* %tPos2752, align 4
  %1932 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %cftab2753 = getelementptr inbounds %struct.DState, %struct.DState* %1932, i32 0, i32 18
  %arraydecay = getelementptr inbounds [257 x i32], [257 x i32]* %cftab2753, i64 0, i64 0
  %call2754 = call i32 @BZ2_indexIntoF(i32 %1931, i32* %arraydecay)
  %1933 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k0 = getelementptr inbounds %struct.DState, %struct.DState* %1933, i32 0, i32 15
  store i32 %call2754, i32* %k0, align 8
  %1934 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll162755 = getelementptr inbounds %struct.DState, %struct.DState* %1934, i32 0, i32 21
  %1935 = load i16*, i16** %ll162755, align 8
  %1936 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos2756 = getelementptr inbounds %struct.DState, %struct.DState* %1936, i32 0, i32 14
  %1937 = load i32, i32* %tPos2756, align 4
  %idxprom2757 = zext i32 %1937 to i64
  %arrayidx2758 = getelementptr inbounds i16, i16* %1935, i64 %idxprom2757
  %1938 = load i16, i16* %arrayidx2758, align 2
  %conv2759 = zext i16 %1938 to i32
  %1939 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll42760 = getelementptr inbounds %struct.DState, %struct.DState* %1939, i32 0, i32 22
  %1940 = load i8*, i8** %ll42760, align 8
  %1941 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos2761 = getelementptr inbounds %struct.DState, %struct.DState* %1941, i32 0, i32 14
  %1942 = load i32, i32* %tPos2761, align 4
  %shr2762 = lshr i32 %1942, 1
  %idxprom2763 = zext i32 %shr2762 to i64
  %arrayidx2764 = getelementptr inbounds i8, i8* %1940, i64 %idxprom2763
  %1943 = load i8, i8* %arrayidx2764, align 1
  %conv2765 = zext i8 %1943 to i32
  %1944 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos2766 = getelementptr inbounds %struct.DState, %struct.DState* %1944, i32 0, i32 14
  %1945 = load i32, i32* %tPos2766, align 4
  %shl2767 = shl i32 %1945, 2
  %and2768 = and i32 %shl2767, 4
  %shr2769 = lshr i32 %conv2765, %and2768
  %and2770 = and i32 %shr2769, 15
  %shl2771 = shl i32 %and2770, 16
  %or2772 = or i32 %conv2759, %shl2771
  %1946 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos2773 = getelementptr inbounds %struct.DState, %struct.DState* %1946, i32 0, i32 14
  store i32 %or2772, i32* %tPos2773, align 4
  %1947 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used2774 = getelementptr inbounds %struct.DState, %struct.DState* %1947, i32 0, i32 17
  %1948 = load i32, i32* %nblock_used2774, align 4
  %inc2775 = add nsw i32 %1948, 1
  store i32 %inc2775, i32* %nblock_used2774, align 4
  %1949 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo2776 = getelementptr inbounds %struct.DState, %struct.DState* %1949, i32 0, i32 5
  %1950 = load i32, i32* %rNToGo2776, align 8
  %cmp2777 = icmp eq i32 %1950, 0
  br i1 %cmp2777, label %if.then2779, label %if.end2792

if.then2779:                                      ; preds = %if.then2751
  %1951 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos2780 = getelementptr inbounds %struct.DState, %struct.DState* %1951, i32 0, i32 6
  %1952 = load i32, i32* %rTPos2780, align 4
  %idxprom2781 = sext i32 %1952 to i64
  %arrayidx2782 = getelementptr inbounds [512 x i32], [512 x i32]* @BZ2_rNums, i64 0, i64 %idxprom2781
  %1953 = load i32, i32* %arrayidx2782, align 4
  %1954 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo2783 = getelementptr inbounds %struct.DState, %struct.DState* %1954, i32 0, i32 5
  store i32 %1953, i32* %rNToGo2783, align 8
  %1955 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos2784 = getelementptr inbounds %struct.DState, %struct.DState* %1955, i32 0, i32 6
  %1956 = load i32, i32* %rTPos2784, align 4
  %inc2785 = add nsw i32 %1956, 1
  store i32 %inc2785, i32* %rTPos2784, align 4
  %1957 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos2786 = getelementptr inbounds %struct.DState, %struct.DState* %1957, i32 0, i32 6
  %1958 = load i32, i32* %rTPos2786, align 4
  %cmp2787 = icmp eq i32 %1958, 512
  br i1 %cmp2787, label %if.then2789, label %if.end2791

if.then2789:                                      ; preds = %if.then2779
  %1959 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos2790 = getelementptr inbounds %struct.DState, %struct.DState* %1959, i32 0, i32 6
  store i32 0, i32* %rTPos2790, align 4
  br label %if.end2791

if.end2791:                                       ; preds = %if.then2789, %if.then2779
  br label %if.end2792

if.end2792:                                       ; preds = %if.end2791, %if.then2751
  %1960 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo2793 = getelementptr inbounds %struct.DState, %struct.DState* %1960, i32 0, i32 5
  %1961 = load i32, i32* %rNToGo2793, align 8
  %dec2794 = add nsw i32 %1961, -1
  store i32 %dec2794, i32* %rNToGo2793, align 8
  %1962 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo2795 = getelementptr inbounds %struct.DState, %struct.DState* %1962, i32 0, i32 5
  %1963 = load i32, i32* %rNToGo2795, align 8
  %cmp2796 = icmp eq i32 %1963, 1
  %1964 = zext i1 %cmp2796 to i64
  %cond = select i1 %cmp2796, i32 1, i32 0
  %1965 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k02798 = getelementptr inbounds %struct.DState, %struct.DState* %1965, i32 0, i32 15
  %1966 = load i32, i32* %k02798, align 8
  %xor = xor i32 %1966, %cond
  store i32 %xor, i32* %k02798, align 8
  br label %if.end2826

if.else2799:                                      ; preds = %do.end2747
  %1967 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos2800 = getelementptr inbounds %struct.DState, %struct.DState* %1967, i32 0, i32 14
  %1968 = load i32, i32* %tPos2800, align 4
  %1969 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %cftab2801 = getelementptr inbounds %struct.DState, %struct.DState* %1969, i32 0, i32 18
  %arraydecay2802 = getelementptr inbounds [257 x i32], [257 x i32]* %cftab2801, i64 0, i64 0
  %call2803 = call i32 @BZ2_indexIntoF(i32 %1968, i32* %arraydecay2802)
  %1970 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k02804 = getelementptr inbounds %struct.DState, %struct.DState* %1970, i32 0, i32 15
  store i32 %call2803, i32* %k02804, align 8
  %1971 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll162805 = getelementptr inbounds %struct.DState, %struct.DState* %1971, i32 0, i32 21
  %1972 = load i16*, i16** %ll162805, align 8
  %1973 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos2806 = getelementptr inbounds %struct.DState, %struct.DState* %1973, i32 0, i32 14
  %1974 = load i32, i32* %tPos2806, align 4
  %idxprom2807 = zext i32 %1974 to i64
  %arrayidx2808 = getelementptr inbounds i16, i16* %1972, i64 %idxprom2807
  %1975 = load i16, i16* %arrayidx2808, align 2
  %conv2809 = zext i16 %1975 to i32
  %1976 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %ll42810 = getelementptr inbounds %struct.DState, %struct.DState* %1976, i32 0, i32 22
  %1977 = load i8*, i8** %ll42810, align 8
  %1978 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos2811 = getelementptr inbounds %struct.DState, %struct.DState* %1978, i32 0, i32 14
  %1979 = load i32, i32* %tPos2811, align 4
  %shr2812 = lshr i32 %1979, 1
  %idxprom2813 = zext i32 %shr2812 to i64
  %arrayidx2814 = getelementptr inbounds i8, i8* %1977, i64 %idxprom2813
  %1980 = load i8, i8* %arrayidx2814, align 1
  %conv2815 = zext i8 %1980 to i32
  %1981 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos2816 = getelementptr inbounds %struct.DState, %struct.DState* %1981, i32 0, i32 14
  %1982 = load i32, i32* %tPos2816, align 4
  %shl2817 = shl i32 %1982, 2
  %and2818 = and i32 %shl2817, 4
  %shr2819 = lshr i32 %conv2815, %and2818
  %and2820 = and i32 %shr2819, 15
  %shl2821 = shl i32 %and2820, 16
  %or2822 = or i32 %conv2809, %shl2821
  %1983 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos2823 = getelementptr inbounds %struct.DState, %struct.DState* %1983, i32 0, i32 14
  store i32 %or2822, i32* %tPos2823, align 4
  %1984 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used2824 = getelementptr inbounds %struct.DState, %struct.DState* %1984, i32 0, i32 17
  %1985 = load i32, i32* %nblock_used2824, align 4
  %inc2825 = add nsw i32 %1985, 1
  store i32 %inc2825, i32* %nblock_used2824, align 4
  br label %if.end2826

if.end2826:                                       ; preds = %if.else2799, %if.end2792
  br label %if.end2919

if.else2827:                                      ; preds = %if.end2594
  store i32 0, i32* %i, align 4
  br label %for.cond2828

for.cond2828:                                     ; preds = %for.inc2849, %if.else2827
  %1986 = load i32, i32* %i, align 4
  %1987 = load i32, i32* %nblock, align 4
  %cmp2829 = icmp slt i32 %1986, %1987
  br i1 %cmp2829, label %for.body2831, label %for.end2851

for.body2831:                                     ; preds = %for.cond2828
  %1988 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tt2832 = getelementptr inbounds %struct.DState, %struct.DState* %1988, i32 0, i32 20
  %1989 = load i32*, i32** %tt2832, align 8
  %1990 = load i32, i32* %i, align 4
  %idxprom2833 = sext i32 %1990 to i64
  %arrayidx2834 = getelementptr inbounds i32, i32* %1989, i64 %idxprom2833
  %1991 = load i32, i32* %arrayidx2834, align 4
  %and2835 = and i32 %1991, 255
  %conv2836 = trunc i32 %and2835 to i8
  store i8 %conv2836, i8* %uc, align 1
  %1992 = load i32, i32* %i, align 4
  %shl2837 = shl i32 %1992, 8
  %1993 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tt2838 = getelementptr inbounds %struct.DState, %struct.DState* %1993, i32 0, i32 20
  %1994 = load i32*, i32** %tt2838, align 8
  %1995 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %cftab2839 = getelementptr inbounds %struct.DState, %struct.DState* %1995, i32 0, i32 18
  %1996 = load i8, i8* %uc, align 1
  %idxprom2840 = zext i8 %1996 to i64
  %arrayidx2841 = getelementptr inbounds [257 x i32], [257 x i32]* %cftab2839, i64 0, i64 %idxprom2840
  %1997 = load i32, i32* %arrayidx2841, align 4
  %idxprom2842 = sext i32 %1997 to i64
  %arrayidx2843 = getelementptr inbounds i32, i32* %1994, i64 %idxprom2842
  %1998 = load i32, i32* %arrayidx2843, align 4
  %or2844 = or i32 %1998, %shl2837
  store i32 %or2844, i32* %arrayidx2843, align 4
  %1999 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %cftab2845 = getelementptr inbounds %struct.DState, %struct.DState* %1999, i32 0, i32 18
  %2000 = load i8, i8* %uc, align 1
  %idxprom2846 = zext i8 %2000 to i64
  %arrayidx2847 = getelementptr inbounds [257 x i32], [257 x i32]* %cftab2845, i64 0, i64 %idxprom2846
  %2001 = load i32, i32* %arrayidx2847, align 4
  %inc2848 = add nsw i32 %2001, 1
  store i32 %inc2848, i32* %arrayidx2847, align 4
  br label %for.inc2849

for.inc2849:                                      ; preds = %for.body2831
  %2002 = load i32, i32* %i, align 4
  %inc2850 = add nsw i32 %2002, 1
  store i32 %inc2850, i32* %i, align 4
  br label %for.cond2828

for.end2851:                                      ; preds = %for.cond2828
  %2003 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tt2852 = getelementptr inbounds %struct.DState, %struct.DState* %2003, i32 0, i32 20
  %2004 = load i32*, i32** %tt2852, align 8
  %2005 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %origPtr2853 = getelementptr inbounds %struct.DState, %struct.DState* %2005, i32 0, i32 13
  %2006 = load i32, i32* %origPtr2853, align 8
  %idxprom2854 = sext i32 %2006 to i64
  %arrayidx2855 = getelementptr inbounds i32, i32* %2004, i64 %idxprom2854
  %2007 = load i32, i32* %arrayidx2855, align 4
  %shr2856 = lshr i32 %2007, 8
  %2008 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos2857 = getelementptr inbounds %struct.DState, %struct.DState* %2008, i32 0, i32 14
  store i32 %shr2856, i32* %tPos2857, align 4
  %2009 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used2858 = getelementptr inbounds %struct.DState, %struct.DState* %2009, i32 0, i32 17
  store i32 0, i32* %nblock_used2858, align 4
  %2010 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %blockRandomised2859 = getelementptr inbounds %struct.DState, %struct.DState* %2010, i32 0, i32 4
  %2011 = load i8, i8* %blockRandomised2859, align 4
  %tobool2860 = icmp ne i8 %2011, 0
  br i1 %tobool2860, label %if.then2861, label %if.else2903

if.then2861:                                      ; preds = %for.end2851
  %2012 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo2862 = getelementptr inbounds %struct.DState, %struct.DState* %2012, i32 0, i32 5
  store i32 0, i32* %rNToGo2862, align 8
  %2013 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos2863 = getelementptr inbounds %struct.DState, %struct.DState* %2013, i32 0, i32 6
  store i32 0, i32* %rTPos2863, align 4
  %2014 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tt2864 = getelementptr inbounds %struct.DState, %struct.DState* %2014, i32 0, i32 20
  %2015 = load i32*, i32** %tt2864, align 8
  %2016 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos2865 = getelementptr inbounds %struct.DState, %struct.DState* %2016, i32 0, i32 14
  %2017 = load i32, i32* %tPos2865, align 4
  %idxprom2866 = zext i32 %2017 to i64
  %arrayidx2867 = getelementptr inbounds i32, i32* %2015, i64 %idxprom2866
  %2018 = load i32, i32* %arrayidx2867, align 4
  %2019 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos2868 = getelementptr inbounds %struct.DState, %struct.DState* %2019, i32 0, i32 14
  store i32 %2018, i32* %tPos2868, align 4
  %2020 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos2869 = getelementptr inbounds %struct.DState, %struct.DState* %2020, i32 0, i32 14
  %2021 = load i32, i32* %tPos2869, align 4
  %and2870 = and i32 %2021, 255
  %conv2871 = trunc i32 %and2870 to i8
  %conv2872 = zext i8 %conv2871 to i32
  %2022 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k02873 = getelementptr inbounds %struct.DState, %struct.DState* %2022, i32 0, i32 15
  store i32 %conv2872, i32* %k02873, align 8
  %2023 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos2874 = getelementptr inbounds %struct.DState, %struct.DState* %2023, i32 0, i32 14
  %2024 = load i32, i32* %tPos2874, align 4
  %shr2875 = lshr i32 %2024, 8
  store i32 %shr2875, i32* %tPos2874, align 4
  %2025 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used2876 = getelementptr inbounds %struct.DState, %struct.DState* %2025, i32 0, i32 17
  %2026 = load i32, i32* %nblock_used2876, align 4
  %inc2877 = add nsw i32 %2026, 1
  store i32 %inc2877, i32* %nblock_used2876, align 4
  %2027 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo2878 = getelementptr inbounds %struct.DState, %struct.DState* %2027, i32 0, i32 5
  %2028 = load i32, i32* %rNToGo2878, align 8
  %cmp2879 = icmp eq i32 %2028, 0
  br i1 %cmp2879, label %if.then2881, label %if.end2894

if.then2881:                                      ; preds = %if.then2861
  %2029 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos2882 = getelementptr inbounds %struct.DState, %struct.DState* %2029, i32 0, i32 6
  %2030 = load i32, i32* %rTPos2882, align 4
  %idxprom2883 = sext i32 %2030 to i64
  %arrayidx2884 = getelementptr inbounds [512 x i32], [512 x i32]* @BZ2_rNums, i64 0, i64 %idxprom2883
  %2031 = load i32, i32* %arrayidx2884, align 4
  %2032 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo2885 = getelementptr inbounds %struct.DState, %struct.DState* %2032, i32 0, i32 5
  store i32 %2031, i32* %rNToGo2885, align 8
  %2033 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos2886 = getelementptr inbounds %struct.DState, %struct.DState* %2033, i32 0, i32 6
  %2034 = load i32, i32* %rTPos2886, align 4
  %inc2887 = add nsw i32 %2034, 1
  store i32 %inc2887, i32* %rTPos2886, align 4
  %2035 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos2888 = getelementptr inbounds %struct.DState, %struct.DState* %2035, i32 0, i32 6
  %2036 = load i32, i32* %rTPos2888, align 4
  %cmp2889 = icmp eq i32 %2036, 512
  br i1 %cmp2889, label %if.then2891, label %if.end2893

if.then2891:                                      ; preds = %if.then2881
  %2037 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rTPos2892 = getelementptr inbounds %struct.DState, %struct.DState* %2037, i32 0, i32 6
  store i32 0, i32* %rTPos2892, align 4
  br label %if.end2893

if.end2893:                                       ; preds = %if.then2891, %if.then2881
  br label %if.end2894

if.end2894:                                       ; preds = %if.end2893, %if.then2861
  %2038 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo2895 = getelementptr inbounds %struct.DState, %struct.DState* %2038, i32 0, i32 5
  %2039 = load i32, i32* %rNToGo2895, align 8
  %dec2896 = add nsw i32 %2039, -1
  store i32 %dec2896, i32* %rNToGo2895, align 8
  %2040 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %rNToGo2897 = getelementptr inbounds %struct.DState, %struct.DState* %2040, i32 0, i32 5
  %2041 = load i32, i32* %rNToGo2897, align 8
  %cmp2898 = icmp eq i32 %2041, 1
  %2042 = zext i1 %cmp2898 to i64
  %cond2900 = select i1 %cmp2898, i32 1, i32 0
  %2043 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k02901 = getelementptr inbounds %struct.DState, %struct.DState* %2043, i32 0, i32 15
  %2044 = load i32, i32* %k02901, align 8
  %xor2902 = xor i32 %2044, %cond2900
  store i32 %xor2902, i32* %k02901, align 8
  br label %if.end2918

if.else2903:                                      ; preds = %for.end2851
  %2045 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tt2904 = getelementptr inbounds %struct.DState, %struct.DState* %2045, i32 0, i32 20
  %2046 = load i32*, i32** %tt2904, align 8
  %2047 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos2905 = getelementptr inbounds %struct.DState, %struct.DState* %2047, i32 0, i32 14
  %2048 = load i32, i32* %tPos2905, align 4
  %idxprom2906 = zext i32 %2048 to i64
  %arrayidx2907 = getelementptr inbounds i32, i32* %2046, i64 %idxprom2906
  %2049 = load i32, i32* %arrayidx2907, align 4
  %2050 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos2908 = getelementptr inbounds %struct.DState, %struct.DState* %2050, i32 0, i32 14
  store i32 %2049, i32* %tPos2908, align 4
  %2051 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos2909 = getelementptr inbounds %struct.DState, %struct.DState* %2051, i32 0, i32 14
  %2052 = load i32, i32* %tPos2909, align 4
  %and2910 = and i32 %2052, 255
  %conv2911 = trunc i32 %and2910 to i8
  %conv2912 = zext i8 %conv2911 to i32
  %2053 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %k02913 = getelementptr inbounds %struct.DState, %struct.DState* %2053, i32 0, i32 15
  store i32 %conv2912, i32* %k02913, align 8
  %2054 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %tPos2914 = getelementptr inbounds %struct.DState, %struct.DState* %2054, i32 0, i32 14
  %2055 = load i32, i32* %tPos2914, align 4
  %shr2915 = lshr i32 %2055, 8
  store i32 %shr2915, i32* %tPos2914, align 4
  %2056 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nblock_used2916 = getelementptr inbounds %struct.DState, %struct.DState* %2056, i32 0, i32 17
  %2057 = load i32, i32* %nblock_used2916, align 4
  %inc2917 = add nsw i32 %2057, 1
  store i32 %inc2917, i32* %nblock_used2916, align 4
  br label %if.end2918

if.end2918:                                       ; preds = %if.else2903, %if.end2894
  br label %if.end2919

if.end2919:                                       ; preds = %if.end2918, %if.end2826
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

endhdr_2:                                         ; preds = %if.then326
  br label %sw.bb2920

sw.bb2920:                                        ; preds = %if.end, %endhdr_2
  %2058 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state2921 = getelementptr inbounds %struct.DState, %struct.DState* %2058, i32 0, i32 1
  store i32 42, i32* %state2921, align 8
  br label %while.body2923

while.body2923:                                   ; preds = %sw.bb2920, %if.end2970
  %2059 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive2924 = getelementptr inbounds %struct.DState, %struct.DState* %2059, i32 0, i32 8
  %2060 = load i32, i32* %bsLive2924, align 4
  %cmp2925 = icmp sge i32 %2060, 8
  br i1 %cmp2925, label %if.then2927, label %if.end2937

if.then2927:                                      ; preds = %while.body2923
  %2061 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff2929 = getelementptr inbounds %struct.DState, %struct.DState* %2061, i32 0, i32 7
  %2062 = load i32, i32* %bsBuff2929, align 8
  %2063 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive2930 = getelementptr inbounds %struct.DState, %struct.DState* %2063, i32 0, i32 8
  %2064 = load i32, i32* %bsLive2930, align 4
  %sub2931 = sub nsw i32 %2064, 8
  %shr2932 = lshr i32 %2062, %sub2931
  %and2933 = and i32 %shr2932, 255
  store i32 %and2933, i32* %v2928, align 4
  %2065 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive2934 = getelementptr inbounds %struct.DState, %struct.DState* %2065, i32 0, i32 8
  %2066 = load i32, i32* %bsLive2934, align 4
  %sub2935 = sub nsw i32 %2066, 8
  store i32 %sub2935, i32* %bsLive2934, align 4
  %2067 = load i32, i32* %v2928, align 4
  %conv2936 = trunc i32 %2067 to i8
  store i8 %conv2936, i8* %uc, align 1
  br label %while.end2971

if.end2937:                                       ; preds = %while.body2923
  %2068 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm2938 = getelementptr inbounds %struct.DState, %struct.DState* %2068, i32 0, i32 0
  %2069 = load %struct.bz_stream*, %struct.bz_stream** %strm2938, align 8
  %avail_in2939 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2069, i32 0, i32 1
  %2070 = load i32, i32* %avail_in2939, align 8
  %cmp2940 = icmp eq i32 %2070, 0
  br i1 %cmp2940, label %if.then2942, label %if.end2943

if.then2942:                                      ; preds = %if.end2937
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end2943:                                       ; preds = %if.end2937
  %2071 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff2944 = getelementptr inbounds %struct.DState, %struct.DState* %2071, i32 0, i32 7
  %2072 = load i32, i32* %bsBuff2944, align 8
  %shl2945 = shl i32 %2072, 8
  %2073 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm2946 = getelementptr inbounds %struct.DState, %struct.DState* %2073, i32 0, i32 0
  %2074 = load %struct.bz_stream*, %struct.bz_stream** %strm2946, align 8
  %next_in2947 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2074, i32 0, i32 0
  %2075 = load i8*, i8** %next_in2947, align 8
  %2076 = load i8, i8* %2075, align 1
  %conv2948 = zext i8 %2076 to i32
  %or2949 = or i32 %shl2945, %conv2948
  %2077 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff2950 = getelementptr inbounds %struct.DState, %struct.DState* %2077, i32 0, i32 7
  store i32 %or2949, i32* %bsBuff2950, align 8
  %2078 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive2951 = getelementptr inbounds %struct.DState, %struct.DState* %2078, i32 0, i32 8
  %2079 = load i32, i32* %bsLive2951, align 4
  %add2952 = add nsw i32 %2079, 8
  store i32 %add2952, i32* %bsLive2951, align 4
  %2080 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm2953 = getelementptr inbounds %struct.DState, %struct.DState* %2080, i32 0, i32 0
  %2081 = load %struct.bz_stream*, %struct.bz_stream** %strm2953, align 8
  %next_in2954 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2081, i32 0, i32 0
  %2082 = load i8*, i8** %next_in2954, align 8
  %incdec.ptr2955 = getelementptr inbounds i8, i8* %2082, i32 1
  store i8* %incdec.ptr2955, i8** %next_in2954, align 8
  %2083 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm2956 = getelementptr inbounds %struct.DState, %struct.DState* %2083, i32 0, i32 0
  %2084 = load %struct.bz_stream*, %struct.bz_stream** %strm2956, align 8
  %avail_in2957 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2084, i32 0, i32 1
  %2085 = load i32, i32* %avail_in2957, align 8
  %dec2958 = add i32 %2085, -1
  store i32 %dec2958, i32* %avail_in2957, align 8
  %2086 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm2959 = getelementptr inbounds %struct.DState, %struct.DState* %2086, i32 0, i32 0
  %2087 = load %struct.bz_stream*, %struct.bz_stream** %strm2959, align 8
  %total_in_lo322960 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2087, i32 0, i32 2
  %2088 = load i32, i32* %total_in_lo322960, align 4
  %inc2961 = add i32 %2088, 1
  store i32 %inc2961, i32* %total_in_lo322960, align 4
  %2089 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm2962 = getelementptr inbounds %struct.DState, %struct.DState* %2089, i32 0, i32 0
  %2090 = load %struct.bz_stream*, %struct.bz_stream** %strm2962, align 8
  %total_in_lo322963 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2090, i32 0, i32 2
  %2091 = load i32, i32* %total_in_lo322963, align 4
  %cmp2964 = icmp eq i32 %2091, 0
  br i1 %cmp2964, label %if.then2966, label %if.end2970

if.then2966:                                      ; preds = %if.end2943
  %2092 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm2967 = getelementptr inbounds %struct.DState, %struct.DState* %2092, i32 0, i32 0
  %2093 = load %struct.bz_stream*, %struct.bz_stream** %strm2967, align 8
  %total_in_hi322968 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2093, i32 0, i32 3
  %2094 = load i32, i32* %total_in_hi322968, align 8
  %inc2969 = add i32 %2094, 1
  store i32 %inc2969, i32* %total_in_hi322968, align 8
  br label %if.end2970

if.end2970:                                       ; preds = %if.then2966, %if.end2943
  br label %while.body2923

while.end2971:                                    ; preds = %if.then2927
  %2095 = load i8, i8* %uc, align 1
  %conv2972 = zext i8 %2095 to i32
  %cmp2973 = icmp ne i32 %conv2972, 114
  br i1 %cmp2973, label %if.then2975, label %if.end2976

if.then2975:                                      ; preds = %while.end2971
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end2976:                                       ; preds = %while.end2971
  br label %sw.bb2977

sw.bb2977:                                        ; preds = %if.end, %if.end2976
  %2096 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state2978 = getelementptr inbounds %struct.DState, %struct.DState* %2096, i32 0, i32 1
  store i32 43, i32* %state2978, align 8
  br label %while.body2980

while.body2980:                                   ; preds = %sw.bb2977, %if.end3027
  %2097 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive2981 = getelementptr inbounds %struct.DState, %struct.DState* %2097, i32 0, i32 8
  %2098 = load i32, i32* %bsLive2981, align 4
  %cmp2982 = icmp sge i32 %2098, 8
  br i1 %cmp2982, label %if.then2984, label %if.end2994

if.then2984:                                      ; preds = %while.body2980
  %2099 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff2986 = getelementptr inbounds %struct.DState, %struct.DState* %2099, i32 0, i32 7
  %2100 = load i32, i32* %bsBuff2986, align 8
  %2101 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive2987 = getelementptr inbounds %struct.DState, %struct.DState* %2101, i32 0, i32 8
  %2102 = load i32, i32* %bsLive2987, align 4
  %sub2988 = sub nsw i32 %2102, 8
  %shr2989 = lshr i32 %2100, %sub2988
  %and2990 = and i32 %shr2989, 255
  store i32 %and2990, i32* %v2985, align 4
  %2103 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive2991 = getelementptr inbounds %struct.DState, %struct.DState* %2103, i32 0, i32 8
  %2104 = load i32, i32* %bsLive2991, align 4
  %sub2992 = sub nsw i32 %2104, 8
  store i32 %sub2992, i32* %bsLive2991, align 4
  %2105 = load i32, i32* %v2985, align 4
  %conv2993 = trunc i32 %2105 to i8
  store i8 %conv2993, i8* %uc, align 1
  br label %while.end3028

if.end2994:                                       ; preds = %while.body2980
  %2106 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm2995 = getelementptr inbounds %struct.DState, %struct.DState* %2106, i32 0, i32 0
  %2107 = load %struct.bz_stream*, %struct.bz_stream** %strm2995, align 8
  %avail_in2996 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2107, i32 0, i32 1
  %2108 = load i32, i32* %avail_in2996, align 8
  %cmp2997 = icmp eq i32 %2108, 0
  br i1 %cmp2997, label %if.then2999, label %if.end3000

if.then2999:                                      ; preds = %if.end2994
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end3000:                                       ; preds = %if.end2994
  %2109 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff3001 = getelementptr inbounds %struct.DState, %struct.DState* %2109, i32 0, i32 7
  %2110 = load i32, i32* %bsBuff3001, align 8
  %shl3002 = shl i32 %2110, 8
  %2111 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3003 = getelementptr inbounds %struct.DState, %struct.DState* %2111, i32 0, i32 0
  %2112 = load %struct.bz_stream*, %struct.bz_stream** %strm3003, align 8
  %next_in3004 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2112, i32 0, i32 0
  %2113 = load i8*, i8** %next_in3004, align 8
  %2114 = load i8, i8* %2113, align 1
  %conv3005 = zext i8 %2114 to i32
  %or3006 = or i32 %shl3002, %conv3005
  %2115 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff3007 = getelementptr inbounds %struct.DState, %struct.DState* %2115, i32 0, i32 7
  store i32 %or3006, i32* %bsBuff3007, align 8
  %2116 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive3008 = getelementptr inbounds %struct.DState, %struct.DState* %2116, i32 0, i32 8
  %2117 = load i32, i32* %bsLive3008, align 4
  %add3009 = add nsw i32 %2117, 8
  store i32 %add3009, i32* %bsLive3008, align 4
  %2118 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3010 = getelementptr inbounds %struct.DState, %struct.DState* %2118, i32 0, i32 0
  %2119 = load %struct.bz_stream*, %struct.bz_stream** %strm3010, align 8
  %next_in3011 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2119, i32 0, i32 0
  %2120 = load i8*, i8** %next_in3011, align 8
  %incdec.ptr3012 = getelementptr inbounds i8, i8* %2120, i32 1
  store i8* %incdec.ptr3012, i8** %next_in3011, align 8
  %2121 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3013 = getelementptr inbounds %struct.DState, %struct.DState* %2121, i32 0, i32 0
  %2122 = load %struct.bz_stream*, %struct.bz_stream** %strm3013, align 8
  %avail_in3014 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2122, i32 0, i32 1
  %2123 = load i32, i32* %avail_in3014, align 8
  %dec3015 = add i32 %2123, -1
  store i32 %dec3015, i32* %avail_in3014, align 8
  %2124 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3016 = getelementptr inbounds %struct.DState, %struct.DState* %2124, i32 0, i32 0
  %2125 = load %struct.bz_stream*, %struct.bz_stream** %strm3016, align 8
  %total_in_lo323017 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2125, i32 0, i32 2
  %2126 = load i32, i32* %total_in_lo323017, align 4
  %inc3018 = add i32 %2126, 1
  store i32 %inc3018, i32* %total_in_lo323017, align 4
  %2127 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3019 = getelementptr inbounds %struct.DState, %struct.DState* %2127, i32 0, i32 0
  %2128 = load %struct.bz_stream*, %struct.bz_stream** %strm3019, align 8
  %total_in_lo323020 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2128, i32 0, i32 2
  %2129 = load i32, i32* %total_in_lo323020, align 4
  %cmp3021 = icmp eq i32 %2129, 0
  br i1 %cmp3021, label %if.then3023, label %if.end3027

if.then3023:                                      ; preds = %if.end3000
  %2130 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3024 = getelementptr inbounds %struct.DState, %struct.DState* %2130, i32 0, i32 0
  %2131 = load %struct.bz_stream*, %struct.bz_stream** %strm3024, align 8
  %total_in_hi323025 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2131, i32 0, i32 3
  %2132 = load i32, i32* %total_in_hi323025, align 8
  %inc3026 = add i32 %2132, 1
  store i32 %inc3026, i32* %total_in_hi323025, align 8
  br label %if.end3027

if.end3027:                                       ; preds = %if.then3023, %if.end3000
  br label %while.body2980

while.end3028:                                    ; preds = %if.then2984
  %2133 = load i8, i8* %uc, align 1
  %conv3029 = zext i8 %2133 to i32
  %cmp3030 = icmp ne i32 %conv3029, 69
  br i1 %cmp3030, label %if.then3032, label %if.end3033

if.then3032:                                      ; preds = %while.end3028
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end3033:                                       ; preds = %while.end3028
  br label %sw.bb3034

sw.bb3034:                                        ; preds = %if.end, %if.end3033
  %2134 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state3035 = getelementptr inbounds %struct.DState, %struct.DState* %2134, i32 0, i32 1
  store i32 44, i32* %state3035, align 8
  br label %while.body3037

while.body3037:                                   ; preds = %sw.bb3034, %if.end3084
  %2135 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive3038 = getelementptr inbounds %struct.DState, %struct.DState* %2135, i32 0, i32 8
  %2136 = load i32, i32* %bsLive3038, align 4
  %cmp3039 = icmp sge i32 %2136, 8
  br i1 %cmp3039, label %if.then3041, label %if.end3051

if.then3041:                                      ; preds = %while.body3037
  %2137 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff3043 = getelementptr inbounds %struct.DState, %struct.DState* %2137, i32 0, i32 7
  %2138 = load i32, i32* %bsBuff3043, align 8
  %2139 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive3044 = getelementptr inbounds %struct.DState, %struct.DState* %2139, i32 0, i32 8
  %2140 = load i32, i32* %bsLive3044, align 4
  %sub3045 = sub nsw i32 %2140, 8
  %shr3046 = lshr i32 %2138, %sub3045
  %and3047 = and i32 %shr3046, 255
  store i32 %and3047, i32* %v3042, align 4
  %2141 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive3048 = getelementptr inbounds %struct.DState, %struct.DState* %2141, i32 0, i32 8
  %2142 = load i32, i32* %bsLive3048, align 4
  %sub3049 = sub nsw i32 %2142, 8
  store i32 %sub3049, i32* %bsLive3048, align 4
  %2143 = load i32, i32* %v3042, align 4
  %conv3050 = trunc i32 %2143 to i8
  store i8 %conv3050, i8* %uc, align 1
  br label %while.end3085

if.end3051:                                       ; preds = %while.body3037
  %2144 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3052 = getelementptr inbounds %struct.DState, %struct.DState* %2144, i32 0, i32 0
  %2145 = load %struct.bz_stream*, %struct.bz_stream** %strm3052, align 8
  %avail_in3053 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2145, i32 0, i32 1
  %2146 = load i32, i32* %avail_in3053, align 8
  %cmp3054 = icmp eq i32 %2146, 0
  br i1 %cmp3054, label %if.then3056, label %if.end3057

if.then3056:                                      ; preds = %if.end3051
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end3057:                                       ; preds = %if.end3051
  %2147 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff3058 = getelementptr inbounds %struct.DState, %struct.DState* %2147, i32 0, i32 7
  %2148 = load i32, i32* %bsBuff3058, align 8
  %shl3059 = shl i32 %2148, 8
  %2149 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3060 = getelementptr inbounds %struct.DState, %struct.DState* %2149, i32 0, i32 0
  %2150 = load %struct.bz_stream*, %struct.bz_stream** %strm3060, align 8
  %next_in3061 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2150, i32 0, i32 0
  %2151 = load i8*, i8** %next_in3061, align 8
  %2152 = load i8, i8* %2151, align 1
  %conv3062 = zext i8 %2152 to i32
  %or3063 = or i32 %shl3059, %conv3062
  %2153 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff3064 = getelementptr inbounds %struct.DState, %struct.DState* %2153, i32 0, i32 7
  store i32 %or3063, i32* %bsBuff3064, align 8
  %2154 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive3065 = getelementptr inbounds %struct.DState, %struct.DState* %2154, i32 0, i32 8
  %2155 = load i32, i32* %bsLive3065, align 4
  %add3066 = add nsw i32 %2155, 8
  store i32 %add3066, i32* %bsLive3065, align 4
  %2156 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3067 = getelementptr inbounds %struct.DState, %struct.DState* %2156, i32 0, i32 0
  %2157 = load %struct.bz_stream*, %struct.bz_stream** %strm3067, align 8
  %next_in3068 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2157, i32 0, i32 0
  %2158 = load i8*, i8** %next_in3068, align 8
  %incdec.ptr3069 = getelementptr inbounds i8, i8* %2158, i32 1
  store i8* %incdec.ptr3069, i8** %next_in3068, align 8
  %2159 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3070 = getelementptr inbounds %struct.DState, %struct.DState* %2159, i32 0, i32 0
  %2160 = load %struct.bz_stream*, %struct.bz_stream** %strm3070, align 8
  %avail_in3071 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2160, i32 0, i32 1
  %2161 = load i32, i32* %avail_in3071, align 8
  %dec3072 = add i32 %2161, -1
  store i32 %dec3072, i32* %avail_in3071, align 8
  %2162 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3073 = getelementptr inbounds %struct.DState, %struct.DState* %2162, i32 0, i32 0
  %2163 = load %struct.bz_stream*, %struct.bz_stream** %strm3073, align 8
  %total_in_lo323074 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2163, i32 0, i32 2
  %2164 = load i32, i32* %total_in_lo323074, align 4
  %inc3075 = add i32 %2164, 1
  store i32 %inc3075, i32* %total_in_lo323074, align 4
  %2165 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3076 = getelementptr inbounds %struct.DState, %struct.DState* %2165, i32 0, i32 0
  %2166 = load %struct.bz_stream*, %struct.bz_stream** %strm3076, align 8
  %total_in_lo323077 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2166, i32 0, i32 2
  %2167 = load i32, i32* %total_in_lo323077, align 4
  %cmp3078 = icmp eq i32 %2167, 0
  br i1 %cmp3078, label %if.then3080, label %if.end3084

if.then3080:                                      ; preds = %if.end3057
  %2168 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3081 = getelementptr inbounds %struct.DState, %struct.DState* %2168, i32 0, i32 0
  %2169 = load %struct.bz_stream*, %struct.bz_stream** %strm3081, align 8
  %total_in_hi323082 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2169, i32 0, i32 3
  %2170 = load i32, i32* %total_in_hi323082, align 8
  %inc3083 = add i32 %2170, 1
  store i32 %inc3083, i32* %total_in_hi323082, align 8
  br label %if.end3084

if.end3084:                                       ; preds = %if.then3080, %if.end3057
  br label %while.body3037

while.end3085:                                    ; preds = %if.then3041
  %2171 = load i8, i8* %uc, align 1
  %conv3086 = zext i8 %2171 to i32
  %cmp3087 = icmp ne i32 %conv3086, 56
  br i1 %cmp3087, label %if.then3089, label %if.end3090

if.then3089:                                      ; preds = %while.end3085
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end3090:                                       ; preds = %while.end3085
  br label %sw.bb3091

sw.bb3091:                                        ; preds = %if.end, %if.end3090
  %2172 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state3092 = getelementptr inbounds %struct.DState, %struct.DState* %2172, i32 0, i32 1
  store i32 45, i32* %state3092, align 8
  br label %while.body3094

while.body3094:                                   ; preds = %sw.bb3091, %if.end3141
  %2173 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive3095 = getelementptr inbounds %struct.DState, %struct.DState* %2173, i32 0, i32 8
  %2174 = load i32, i32* %bsLive3095, align 4
  %cmp3096 = icmp sge i32 %2174, 8
  br i1 %cmp3096, label %if.then3098, label %if.end3108

if.then3098:                                      ; preds = %while.body3094
  %2175 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff3100 = getelementptr inbounds %struct.DState, %struct.DState* %2175, i32 0, i32 7
  %2176 = load i32, i32* %bsBuff3100, align 8
  %2177 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive3101 = getelementptr inbounds %struct.DState, %struct.DState* %2177, i32 0, i32 8
  %2178 = load i32, i32* %bsLive3101, align 4
  %sub3102 = sub nsw i32 %2178, 8
  %shr3103 = lshr i32 %2176, %sub3102
  %and3104 = and i32 %shr3103, 255
  store i32 %and3104, i32* %v3099, align 4
  %2179 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive3105 = getelementptr inbounds %struct.DState, %struct.DState* %2179, i32 0, i32 8
  %2180 = load i32, i32* %bsLive3105, align 4
  %sub3106 = sub nsw i32 %2180, 8
  store i32 %sub3106, i32* %bsLive3105, align 4
  %2181 = load i32, i32* %v3099, align 4
  %conv3107 = trunc i32 %2181 to i8
  store i8 %conv3107, i8* %uc, align 1
  br label %while.end3142

if.end3108:                                       ; preds = %while.body3094
  %2182 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3109 = getelementptr inbounds %struct.DState, %struct.DState* %2182, i32 0, i32 0
  %2183 = load %struct.bz_stream*, %struct.bz_stream** %strm3109, align 8
  %avail_in3110 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2183, i32 0, i32 1
  %2184 = load i32, i32* %avail_in3110, align 8
  %cmp3111 = icmp eq i32 %2184, 0
  br i1 %cmp3111, label %if.then3113, label %if.end3114

if.then3113:                                      ; preds = %if.end3108
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end3114:                                       ; preds = %if.end3108
  %2185 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff3115 = getelementptr inbounds %struct.DState, %struct.DState* %2185, i32 0, i32 7
  %2186 = load i32, i32* %bsBuff3115, align 8
  %shl3116 = shl i32 %2186, 8
  %2187 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3117 = getelementptr inbounds %struct.DState, %struct.DState* %2187, i32 0, i32 0
  %2188 = load %struct.bz_stream*, %struct.bz_stream** %strm3117, align 8
  %next_in3118 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2188, i32 0, i32 0
  %2189 = load i8*, i8** %next_in3118, align 8
  %2190 = load i8, i8* %2189, align 1
  %conv3119 = zext i8 %2190 to i32
  %or3120 = or i32 %shl3116, %conv3119
  %2191 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff3121 = getelementptr inbounds %struct.DState, %struct.DState* %2191, i32 0, i32 7
  store i32 %or3120, i32* %bsBuff3121, align 8
  %2192 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive3122 = getelementptr inbounds %struct.DState, %struct.DState* %2192, i32 0, i32 8
  %2193 = load i32, i32* %bsLive3122, align 4
  %add3123 = add nsw i32 %2193, 8
  store i32 %add3123, i32* %bsLive3122, align 4
  %2194 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3124 = getelementptr inbounds %struct.DState, %struct.DState* %2194, i32 0, i32 0
  %2195 = load %struct.bz_stream*, %struct.bz_stream** %strm3124, align 8
  %next_in3125 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2195, i32 0, i32 0
  %2196 = load i8*, i8** %next_in3125, align 8
  %incdec.ptr3126 = getelementptr inbounds i8, i8* %2196, i32 1
  store i8* %incdec.ptr3126, i8** %next_in3125, align 8
  %2197 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3127 = getelementptr inbounds %struct.DState, %struct.DState* %2197, i32 0, i32 0
  %2198 = load %struct.bz_stream*, %struct.bz_stream** %strm3127, align 8
  %avail_in3128 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2198, i32 0, i32 1
  %2199 = load i32, i32* %avail_in3128, align 8
  %dec3129 = add i32 %2199, -1
  store i32 %dec3129, i32* %avail_in3128, align 8
  %2200 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3130 = getelementptr inbounds %struct.DState, %struct.DState* %2200, i32 0, i32 0
  %2201 = load %struct.bz_stream*, %struct.bz_stream** %strm3130, align 8
  %total_in_lo323131 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2201, i32 0, i32 2
  %2202 = load i32, i32* %total_in_lo323131, align 4
  %inc3132 = add i32 %2202, 1
  store i32 %inc3132, i32* %total_in_lo323131, align 4
  %2203 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3133 = getelementptr inbounds %struct.DState, %struct.DState* %2203, i32 0, i32 0
  %2204 = load %struct.bz_stream*, %struct.bz_stream** %strm3133, align 8
  %total_in_lo323134 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2204, i32 0, i32 2
  %2205 = load i32, i32* %total_in_lo323134, align 4
  %cmp3135 = icmp eq i32 %2205, 0
  br i1 %cmp3135, label %if.then3137, label %if.end3141

if.then3137:                                      ; preds = %if.end3114
  %2206 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3138 = getelementptr inbounds %struct.DState, %struct.DState* %2206, i32 0, i32 0
  %2207 = load %struct.bz_stream*, %struct.bz_stream** %strm3138, align 8
  %total_in_hi323139 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2207, i32 0, i32 3
  %2208 = load i32, i32* %total_in_hi323139, align 8
  %inc3140 = add i32 %2208, 1
  store i32 %inc3140, i32* %total_in_hi323139, align 8
  br label %if.end3141

if.end3141:                                       ; preds = %if.then3137, %if.end3114
  br label %while.body3094

while.end3142:                                    ; preds = %if.then3098
  %2209 = load i8, i8* %uc, align 1
  %conv3143 = zext i8 %2209 to i32
  %cmp3144 = icmp ne i32 %conv3143, 80
  br i1 %cmp3144, label %if.then3146, label %if.end3147

if.then3146:                                      ; preds = %while.end3142
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end3147:                                       ; preds = %while.end3142
  br label %sw.bb3148

sw.bb3148:                                        ; preds = %if.end, %if.end3147
  %2210 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state3149 = getelementptr inbounds %struct.DState, %struct.DState* %2210, i32 0, i32 1
  store i32 46, i32* %state3149, align 8
  br label %while.body3151

while.body3151:                                   ; preds = %sw.bb3148, %if.end3198
  %2211 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive3152 = getelementptr inbounds %struct.DState, %struct.DState* %2211, i32 0, i32 8
  %2212 = load i32, i32* %bsLive3152, align 4
  %cmp3153 = icmp sge i32 %2212, 8
  br i1 %cmp3153, label %if.then3155, label %if.end3165

if.then3155:                                      ; preds = %while.body3151
  %2213 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff3157 = getelementptr inbounds %struct.DState, %struct.DState* %2213, i32 0, i32 7
  %2214 = load i32, i32* %bsBuff3157, align 8
  %2215 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive3158 = getelementptr inbounds %struct.DState, %struct.DState* %2215, i32 0, i32 8
  %2216 = load i32, i32* %bsLive3158, align 4
  %sub3159 = sub nsw i32 %2216, 8
  %shr3160 = lshr i32 %2214, %sub3159
  %and3161 = and i32 %shr3160, 255
  store i32 %and3161, i32* %v3156, align 4
  %2217 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive3162 = getelementptr inbounds %struct.DState, %struct.DState* %2217, i32 0, i32 8
  %2218 = load i32, i32* %bsLive3162, align 4
  %sub3163 = sub nsw i32 %2218, 8
  store i32 %sub3163, i32* %bsLive3162, align 4
  %2219 = load i32, i32* %v3156, align 4
  %conv3164 = trunc i32 %2219 to i8
  store i8 %conv3164, i8* %uc, align 1
  br label %while.end3199

if.end3165:                                       ; preds = %while.body3151
  %2220 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3166 = getelementptr inbounds %struct.DState, %struct.DState* %2220, i32 0, i32 0
  %2221 = load %struct.bz_stream*, %struct.bz_stream** %strm3166, align 8
  %avail_in3167 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2221, i32 0, i32 1
  %2222 = load i32, i32* %avail_in3167, align 8
  %cmp3168 = icmp eq i32 %2222, 0
  br i1 %cmp3168, label %if.then3170, label %if.end3171

if.then3170:                                      ; preds = %if.end3165
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end3171:                                       ; preds = %if.end3165
  %2223 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff3172 = getelementptr inbounds %struct.DState, %struct.DState* %2223, i32 0, i32 7
  %2224 = load i32, i32* %bsBuff3172, align 8
  %shl3173 = shl i32 %2224, 8
  %2225 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3174 = getelementptr inbounds %struct.DState, %struct.DState* %2225, i32 0, i32 0
  %2226 = load %struct.bz_stream*, %struct.bz_stream** %strm3174, align 8
  %next_in3175 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2226, i32 0, i32 0
  %2227 = load i8*, i8** %next_in3175, align 8
  %2228 = load i8, i8* %2227, align 1
  %conv3176 = zext i8 %2228 to i32
  %or3177 = or i32 %shl3173, %conv3176
  %2229 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff3178 = getelementptr inbounds %struct.DState, %struct.DState* %2229, i32 0, i32 7
  store i32 %or3177, i32* %bsBuff3178, align 8
  %2230 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive3179 = getelementptr inbounds %struct.DState, %struct.DState* %2230, i32 0, i32 8
  %2231 = load i32, i32* %bsLive3179, align 4
  %add3180 = add nsw i32 %2231, 8
  store i32 %add3180, i32* %bsLive3179, align 4
  %2232 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3181 = getelementptr inbounds %struct.DState, %struct.DState* %2232, i32 0, i32 0
  %2233 = load %struct.bz_stream*, %struct.bz_stream** %strm3181, align 8
  %next_in3182 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2233, i32 0, i32 0
  %2234 = load i8*, i8** %next_in3182, align 8
  %incdec.ptr3183 = getelementptr inbounds i8, i8* %2234, i32 1
  store i8* %incdec.ptr3183, i8** %next_in3182, align 8
  %2235 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3184 = getelementptr inbounds %struct.DState, %struct.DState* %2235, i32 0, i32 0
  %2236 = load %struct.bz_stream*, %struct.bz_stream** %strm3184, align 8
  %avail_in3185 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2236, i32 0, i32 1
  %2237 = load i32, i32* %avail_in3185, align 8
  %dec3186 = add i32 %2237, -1
  store i32 %dec3186, i32* %avail_in3185, align 8
  %2238 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3187 = getelementptr inbounds %struct.DState, %struct.DState* %2238, i32 0, i32 0
  %2239 = load %struct.bz_stream*, %struct.bz_stream** %strm3187, align 8
  %total_in_lo323188 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2239, i32 0, i32 2
  %2240 = load i32, i32* %total_in_lo323188, align 4
  %inc3189 = add i32 %2240, 1
  store i32 %inc3189, i32* %total_in_lo323188, align 4
  %2241 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3190 = getelementptr inbounds %struct.DState, %struct.DState* %2241, i32 0, i32 0
  %2242 = load %struct.bz_stream*, %struct.bz_stream** %strm3190, align 8
  %total_in_lo323191 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2242, i32 0, i32 2
  %2243 = load i32, i32* %total_in_lo323191, align 4
  %cmp3192 = icmp eq i32 %2243, 0
  br i1 %cmp3192, label %if.then3194, label %if.end3198

if.then3194:                                      ; preds = %if.end3171
  %2244 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3195 = getelementptr inbounds %struct.DState, %struct.DState* %2244, i32 0, i32 0
  %2245 = load %struct.bz_stream*, %struct.bz_stream** %strm3195, align 8
  %total_in_hi323196 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2245, i32 0, i32 3
  %2246 = load i32, i32* %total_in_hi323196, align 8
  %inc3197 = add i32 %2246, 1
  store i32 %inc3197, i32* %total_in_hi323196, align 8
  br label %if.end3198

if.end3198:                                       ; preds = %if.then3194, %if.end3171
  br label %while.body3151

while.end3199:                                    ; preds = %if.then3155
  %2247 = load i8, i8* %uc, align 1
  %conv3200 = zext i8 %2247 to i32
  %cmp3201 = icmp ne i32 %conv3200, 144
  br i1 %cmp3201, label %if.then3203, label %if.end3204

if.then3203:                                      ; preds = %while.end3199
  store i32 -4, i32* %retVal, align 4
  br label %save_state_and_return

if.end3204:                                       ; preds = %while.end3199
  %2248 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %storedCombinedCRC = getelementptr inbounds %struct.DState, %struct.DState* %2248, i32 0, i32 24
  store i32 0, i32* %storedCombinedCRC, align 4
  br label %sw.bb3205

sw.bb3205:                                        ; preds = %if.end, %if.end3204
  %2249 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state3206 = getelementptr inbounds %struct.DState, %struct.DState* %2249, i32 0, i32 1
  store i32 47, i32* %state3206, align 8
  br label %while.body3208

while.body3208:                                   ; preds = %sw.bb3205, %if.end3255
  %2250 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive3209 = getelementptr inbounds %struct.DState, %struct.DState* %2250, i32 0, i32 8
  %2251 = load i32, i32* %bsLive3209, align 4
  %cmp3210 = icmp sge i32 %2251, 8
  br i1 %cmp3210, label %if.then3212, label %if.end3222

if.then3212:                                      ; preds = %while.body3208
  %2252 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff3214 = getelementptr inbounds %struct.DState, %struct.DState* %2252, i32 0, i32 7
  %2253 = load i32, i32* %bsBuff3214, align 8
  %2254 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive3215 = getelementptr inbounds %struct.DState, %struct.DState* %2254, i32 0, i32 8
  %2255 = load i32, i32* %bsLive3215, align 4
  %sub3216 = sub nsw i32 %2255, 8
  %shr3217 = lshr i32 %2253, %sub3216
  %and3218 = and i32 %shr3217, 255
  store i32 %and3218, i32* %v3213, align 4
  %2256 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive3219 = getelementptr inbounds %struct.DState, %struct.DState* %2256, i32 0, i32 8
  %2257 = load i32, i32* %bsLive3219, align 4
  %sub3220 = sub nsw i32 %2257, 8
  store i32 %sub3220, i32* %bsLive3219, align 4
  %2258 = load i32, i32* %v3213, align 4
  %conv3221 = trunc i32 %2258 to i8
  store i8 %conv3221, i8* %uc, align 1
  br label %while.end3256

if.end3222:                                       ; preds = %while.body3208
  %2259 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3223 = getelementptr inbounds %struct.DState, %struct.DState* %2259, i32 0, i32 0
  %2260 = load %struct.bz_stream*, %struct.bz_stream** %strm3223, align 8
  %avail_in3224 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2260, i32 0, i32 1
  %2261 = load i32, i32* %avail_in3224, align 8
  %cmp3225 = icmp eq i32 %2261, 0
  br i1 %cmp3225, label %if.then3227, label %if.end3228

if.then3227:                                      ; preds = %if.end3222
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end3228:                                       ; preds = %if.end3222
  %2262 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff3229 = getelementptr inbounds %struct.DState, %struct.DState* %2262, i32 0, i32 7
  %2263 = load i32, i32* %bsBuff3229, align 8
  %shl3230 = shl i32 %2263, 8
  %2264 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3231 = getelementptr inbounds %struct.DState, %struct.DState* %2264, i32 0, i32 0
  %2265 = load %struct.bz_stream*, %struct.bz_stream** %strm3231, align 8
  %next_in3232 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2265, i32 0, i32 0
  %2266 = load i8*, i8** %next_in3232, align 8
  %2267 = load i8, i8* %2266, align 1
  %conv3233 = zext i8 %2267 to i32
  %or3234 = or i32 %shl3230, %conv3233
  %2268 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff3235 = getelementptr inbounds %struct.DState, %struct.DState* %2268, i32 0, i32 7
  store i32 %or3234, i32* %bsBuff3235, align 8
  %2269 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive3236 = getelementptr inbounds %struct.DState, %struct.DState* %2269, i32 0, i32 8
  %2270 = load i32, i32* %bsLive3236, align 4
  %add3237 = add nsw i32 %2270, 8
  store i32 %add3237, i32* %bsLive3236, align 4
  %2271 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3238 = getelementptr inbounds %struct.DState, %struct.DState* %2271, i32 0, i32 0
  %2272 = load %struct.bz_stream*, %struct.bz_stream** %strm3238, align 8
  %next_in3239 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2272, i32 0, i32 0
  %2273 = load i8*, i8** %next_in3239, align 8
  %incdec.ptr3240 = getelementptr inbounds i8, i8* %2273, i32 1
  store i8* %incdec.ptr3240, i8** %next_in3239, align 8
  %2274 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3241 = getelementptr inbounds %struct.DState, %struct.DState* %2274, i32 0, i32 0
  %2275 = load %struct.bz_stream*, %struct.bz_stream** %strm3241, align 8
  %avail_in3242 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2275, i32 0, i32 1
  %2276 = load i32, i32* %avail_in3242, align 8
  %dec3243 = add i32 %2276, -1
  store i32 %dec3243, i32* %avail_in3242, align 8
  %2277 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3244 = getelementptr inbounds %struct.DState, %struct.DState* %2277, i32 0, i32 0
  %2278 = load %struct.bz_stream*, %struct.bz_stream** %strm3244, align 8
  %total_in_lo323245 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2278, i32 0, i32 2
  %2279 = load i32, i32* %total_in_lo323245, align 4
  %inc3246 = add i32 %2279, 1
  store i32 %inc3246, i32* %total_in_lo323245, align 4
  %2280 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3247 = getelementptr inbounds %struct.DState, %struct.DState* %2280, i32 0, i32 0
  %2281 = load %struct.bz_stream*, %struct.bz_stream** %strm3247, align 8
  %total_in_lo323248 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2281, i32 0, i32 2
  %2282 = load i32, i32* %total_in_lo323248, align 4
  %cmp3249 = icmp eq i32 %2282, 0
  br i1 %cmp3249, label %if.then3251, label %if.end3255

if.then3251:                                      ; preds = %if.end3228
  %2283 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3252 = getelementptr inbounds %struct.DState, %struct.DState* %2283, i32 0, i32 0
  %2284 = load %struct.bz_stream*, %struct.bz_stream** %strm3252, align 8
  %total_in_hi323253 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2284, i32 0, i32 3
  %2285 = load i32, i32* %total_in_hi323253, align 8
  %inc3254 = add i32 %2285, 1
  store i32 %inc3254, i32* %total_in_hi323253, align 8
  br label %if.end3255

if.end3255:                                       ; preds = %if.then3251, %if.end3228
  br label %while.body3208

while.end3256:                                    ; preds = %if.then3212
  %2286 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %storedCombinedCRC3257 = getelementptr inbounds %struct.DState, %struct.DState* %2286, i32 0, i32 24
  %2287 = load i32, i32* %storedCombinedCRC3257, align 4
  %shl3258 = shl i32 %2287, 8
  %2288 = load i8, i8* %uc, align 1
  %conv3259 = zext i8 %2288 to i32
  %or3260 = or i32 %shl3258, %conv3259
  %2289 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %storedCombinedCRC3261 = getelementptr inbounds %struct.DState, %struct.DState* %2289, i32 0, i32 24
  store i32 %or3260, i32* %storedCombinedCRC3261, align 4
  br label %sw.bb3262

sw.bb3262:                                        ; preds = %if.end, %while.end3256
  %2290 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state3263 = getelementptr inbounds %struct.DState, %struct.DState* %2290, i32 0, i32 1
  store i32 48, i32* %state3263, align 8
  br label %while.body3265

while.body3265:                                   ; preds = %sw.bb3262, %if.end3312
  %2291 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive3266 = getelementptr inbounds %struct.DState, %struct.DState* %2291, i32 0, i32 8
  %2292 = load i32, i32* %bsLive3266, align 4
  %cmp3267 = icmp sge i32 %2292, 8
  br i1 %cmp3267, label %if.then3269, label %if.end3279

if.then3269:                                      ; preds = %while.body3265
  %2293 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff3271 = getelementptr inbounds %struct.DState, %struct.DState* %2293, i32 0, i32 7
  %2294 = load i32, i32* %bsBuff3271, align 8
  %2295 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive3272 = getelementptr inbounds %struct.DState, %struct.DState* %2295, i32 0, i32 8
  %2296 = load i32, i32* %bsLive3272, align 4
  %sub3273 = sub nsw i32 %2296, 8
  %shr3274 = lshr i32 %2294, %sub3273
  %and3275 = and i32 %shr3274, 255
  store i32 %and3275, i32* %v3270, align 4
  %2297 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive3276 = getelementptr inbounds %struct.DState, %struct.DState* %2297, i32 0, i32 8
  %2298 = load i32, i32* %bsLive3276, align 4
  %sub3277 = sub nsw i32 %2298, 8
  store i32 %sub3277, i32* %bsLive3276, align 4
  %2299 = load i32, i32* %v3270, align 4
  %conv3278 = trunc i32 %2299 to i8
  store i8 %conv3278, i8* %uc, align 1
  br label %while.end3313

if.end3279:                                       ; preds = %while.body3265
  %2300 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3280 = getelementptr inbounds %struct.DState, %struct.DState* %2300, i32 0, i32 0
  %2301 = load %struct.bz_stream*, %struct.bz_stream** %strm3280, align 8
  %avail_in3281 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2301, i32 0, i32 1
  %2302 = load i32, i32* %avail_in3281, align 8
  %cmp3282 = icmp eq i32 %2302, 0
  br i1 %cmp3282, label %if.then3284, label %if.end3285

if.then3284:                                      ; preds = %if.end3279
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end3285:                                       ; preds = %if.end3279
  %2303 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff3286 = getelementptr inbounds %struct.DState, %struct.DState* %2303, i32 0, i32 7
  %2304 = load i32, i32* %bsBuff3286, align 8
  %shl3287 = shl i32 %2304, 8
  %2305 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3288 = getelementptr inbounds %struct.DState, %struct.DState* %2305, i32 0, i32 0
  %2306 = load %struct.bz_stream*, %struct.bz_stream** %strm3288, align 8
  %next_in3289 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2306, i32 0, i32 0
  %2307 = load i8*, i8** %next_in3289, align 8
  %2308 = load i8, i8* %2307, align 1
  %conv3290 = zext i8 %2308 to i32
  %or3291 = or i32 %shl3287, %conv3290
  %2309 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff3292 = getelementptr inbounds %struct.DState, %struct.DState* %2309, i32 0, i32 7
  store i32 %or3291, i32* %bsBuff3292, align 8
  %2310 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive3293 = getelementptr inbounds %struct.DState, %struct.DState* %2310, i32 0, i32 8
  %2311 = load i32, i32* %bsLive3293, align 4
  %add3294 = add nsw i32 %2311, 8
  store i32 %add3294, i32* %bsLive3293, align 4
  %2312 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3295 = getelementptr inbounds %struct.DState, %struct.DState* %2312, i32 0, i32 0
  %2313 = load %struct.bz_stream*, %struct.bz_stream** %strm3295, align 8
  %next_in3296 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2313, i32 0, i32 0
  %2314 = load i8*, i8** %next_in3296, align 8
  %incdec.ptr3297 = getelementptr inbounds i8, i8* %2314, i32 1
  store i8* %incdec.ptr3297, i8** %next_in3296, align 8
  %2315 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3298 = getelementptr inbounds %struct.DState, %struct.DState* %2315, i32 0, i32 0
  %2316 = load %struct.bz_stream*, %struct.bz_stream** %strm3298, align 8
  %avail_in3299 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2316, i32 0, i32 1
  %2317 = load i32, i32* %avail_in3299, align 8
  %dec3300 = add i32 %2317, -1
  store i32 %dec3300, i32* %avail_in3299, align 8
  %2318 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3301 = getelementptr inbounds %struct.DState, %struct.DState* %2318, i32 0, i32 0
  %2319 = load %struct.bz_stream*, %struct.bz_stream** %strm3301, align 8
  %total_in_lo323302 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2319, i32 0, i32 2
  %2320 = load i32, i32* %total_in_lo323302, align 4
  %inc3303 = add i32 %2320, 1
  store i32 %inc3303, i32* %total_in_lo323302, align 4
  %2321 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3304 = getelementptr inbounds %struct.DState, %struct.DState* %2321, i32 0, i32 0
  %2322 = load %struct.bz_stream*, %struct.bz_stream** %strm3304, align 8
  %total_in_lo323305 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2322, i32 0, i32 2
  %2323 = load i32, i32* %total_in_lo323305, align 4
  %cmp3306 = icmp eq i32 %2323, 0
  br i1 %cmp3306, label %if.then3308, label %if.end3312

if.then3308:                                      ; preds = %if.end3285
  %2324 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3309 = getelementptr inbounds %struct.DState, %struct.DState* %2324, i32 0, i32 0
  %2325 = load %struct.bz_stream*, %struct.bz_stream** %strm3309, align 8
  %total_in_hi323310 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2325, i32 0, i32 3
  %2326 = load i32, i32* %total_in_hi323310, align 8
  %inc3311 = add i32 %2326, 1
  store i32 %inc3311, i32* %total_in_hi323310, align 8
  br label %if.end3312

if.end3312:                                       ; preds = %if.then3308, %if.end3285
  br label %while.body3265

while.end3313:                                    ; preds = %if.then3269
  %2327 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %storedCombinedCRC3314 = getelementptr inbounds %struct.DState, %struct.DState* %2327, i32 0, i32 24
  %2328 = load i32, i32* %storedCombinedCRC3314, align 4
  %shl3315 = shl i32 %2328, 8
  %2329 = load i8, i8* %uc, align 1
  %conv3316 = zext i8 %2329 to i32
  %or3317 = or i32 %shl3315, %conv3316
  %2330 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %storedCombinedCRC3318 = getelementptr inbounds %struct.DState, %struct.DState* %2330, i32 0, i32 24
  store i32 %or3317, i32* %storedCombinedCRC3318, align 4
  br label %sw.bb3319

sw.bb3319:                                        ; preds = %if.end, %while.end3313
  %2331 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state3320 = getelementptr inbounds %struct.DState, %struct.DState* %2331, i32 0, i32 1
  store i32 49, i32* %state3320, align 8
  br label %while.body3322

while.body3322:                                   ; preds = %sw.bb3319, %if.end3369
  %2332 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive3323 = getelementptr inbounds %struct.DState, %struct.DState* %2332, i32 0, i32 8
  %2333 = load i32, i32* %bsLive3323, align 4
  %cmp3324 = icmp sge i32 %2333, 8
  br i1 %cmp3324, label %if.then3326, label %if.end3336

if.then3326:                                      ; preds = %while.body3322
  %2334 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff3328 = getelementptr inbounds %struct.DState, %struct.DState* %2334, i32 0, i32 7
  %2335 = load i32, i32* %bsBuff3328, align 8
  %2336 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive3329 = getelementptr inbounds %struct.DState, %struct.DState* %2336, i32 0, i32 8
  %2337 = load i32, i32* %bsLive3329, align 4
  %sub3330 = sub nsw i32 %2337, 8
  %shr3331 = lshr i32 %2335, %sub3330
  %and3332 = and i32 %shr3331, 255
  store i32 %and3332, i32* %v3327, align 4
  %2338 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive3333 = getelementptr inbounds %struct.DState, %struct.DState* %2338, i32 0, i32 8
  %2339 = load i32, i32* %bsLive3333, align 4
  %sub3334 = sub nsw i32 %2339, 8
  store i32 %sub3334, i32* %bsLive3333, align 4
  %2340 = load i32, i32* %v3327, align 4
  %conv3335 = trunc i32 %2340 to i8
  store i8 %conv3335, i8* %uc, align 1
  br label %while.end3370

if.end3336:                                       ; preds = %while.body3322
  %2341 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3337 = getelementptr inbounds %struct.DState, %struct.DState* %2341, i32 0, i32 0
  %2342 = load %struct.bz_stream*, %struct.bz_stream** %strm3337, align 8
  %avail_in3338 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2342, i32 0, i32 1
  %2343 = load i32, i32* %avail_in3338, align 8
  %cmp3339 = icmp eq i32 %2343, 0
  br i1 %cmp3339, label %if.then3341, label %if.end3342

if.then3341:                                      ; preds = %if.end3336
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end3342:                                       ; preds = %if.end3336
  %2344 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff3343 = getelementptr inbounds %struct.DState, %struct.DState* %2344, i32 0, i32 7
  %2345 = load i32, i32* %bsBuff3343, align 8
  %shl3344 = shl i32 %2345, 8
  %2346 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3345 = getelementptr inbounds %struct.DState, %struct.DState* %2346, i32 0, i32 0
  %2347 = load %struct.bz_stream*, %struct.bz_stream** %strm3345, align 8
  %next_in3346 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2347, i32 0, i32 0
  %2348 = load i8*, i8** %next_in3346, align 8
  %2349 = load i8, i8* %2348, align 1
  %conv3347 = zext i8 %2349 to i32
  %or3348 = or i32 %shl3344, %conv3347
  %2350 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff3349 = getelementptr inbounds %struct.DState, %struct.DState* %2350, i32 0, i32 7
  store i32 %or3348, i32* %bsBuff3349, align 8
  %2351 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive3350 = getelementptr inbounds %struct.DState, %struct.DState* %2351, i32 0, i32 8
  %2352 = load i32, i32* %bsLive3350, align 4
  %add3351 = add nsw i32 %2352, 8
  store i32 %add3351, i32* %bsLive3350, align 4
  %2353 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3352 = getelementptr inbounds %struct.DState, %struct.DState* %2353, i32 0, i32 0
  %2354 = load %struct.bz_stream*, %struct.bz_stream** %strm3352, align 8
  %next_in3353 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2354, i32 0, i32 0
  %2355 = load i8*, i8** %next_in3353, align 8
  %incdec.ptr3354 = getelementptr inbounds i8, i8* %2355, i32 1
  store i8* %incdec.ptr3354, i8** %next_in3353, align 8
  %2356 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3355 = getelementptr inbounds %struct.DState, %struct.DState* %2356, i32 0, i32 0
  %2357 = load %struct.bz_stream*, %struct.bz_stream** %strm3355, align 8
  %avail_in3356 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2357, i32 0, i32 1
  %2358 = load i32, i32* %avail_in3356, align 8
  %dec3357 = add i32 %2358, -1
  store i32 %dec3357, i32* %avail_in3356, align 8
  %2359 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3358 = getelementptr inbounds %struct.DState, %struct.DState* %2359, i32 0, i32 0
  %2360 = load %struct.bz_stream*, %struct.bz_stream** %strm3358, align 8
  %total_in_lo323359 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2360, i32 0, i32 2
  %2361 = load i32, i32* %total_in_lo323359, align 4
  %inc3360 = add i32 %2361, 1
  store i32 %inc3360, i32* %total_in_lo323359, align 4
  %2362 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3361 = getelementptr inbounds %struct.DState, %struct.DState* %2362, i32 0, i32 0
  %2363 = load %struct.bz_stream*, %struct.bz_stream** %strm3361, align 8
  %total_in_lo323362 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2363, i32 0, i32 2
  %2364 = load i32, i32* %total_in_lo323362, align 4
  %cmp3363 = icmp eq i32 %2364, 0
  br i1 %cmp3363, label %if.then3365, label %if.end3369

if.then3365:                                      ; preds = %if.end3342
  %2365 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3366 = getelementptr inbounds %struct.DState, %struct.DState* %2365, i32 0, i32 0
  %2366 = load %struct.bz_stream*, %struct.bz_stream** %strm3366, align 8
  %total_in_hi323367 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2366, i32 0, i32 3
  %2367 = load i32, i32* %total_in_hi323367, align 8
  %inc3368 = add i32 %2367, 1
  store i32 %inc3368, i32* %total_in_hi323367, align 8
  br label %if.end3369

if.end3369:                                       ; preds = %if.then3365, %if.end3342
  br label %while.body3322

while.end3370:                                    ; preds = %if.then3326
  %2368 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %storedCombinedCRC3371 = getelementptr inbounds %struct.DState, %struct.DState* %2368, i32 0, i32 24
  %2369 = load i32, i32* %storedCombinedCRC3371, align 4
  %shl3372 = shl i32 %2369, 8
  %2370 = load i8, i8* %uc, align 1
  %conv3373 = zext i8 %2370 to i32
  %or3374 = or i32 %shl3372, %conv3373
  %2371 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %storedCombinedCRC3375 = getelementptr inbounds %struct.DState, %struct.DState* %2371, i32 0, i32 24
  store i32 %or3374, i32* %storedCombinedCRC3375, align 4
  br label %sw.bb3376

sw.bb3376:                                        ; preds = %if.end, %while.end3370
  %2372 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state3377 = getelementptr inbounds %struct.DState, %struct.DState* %2372, i32 0, i32 1
  store i32 50, i32* %state3377, align 8
  br label %while.body3379

while.body3379:                                   ; preds = %sw.bb3376, %if.end3426
  %2373 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive3380 = getelementptr inbounds %struct.DState, %struct.DState* %2373, i32 0, i32 8
  %2374 = load i32, i32* %bsLive3380, align 4
  %cmp3381 = icmp sge i32 %2374, 8
  br i1 %cmp3381, label %if.then3383, label %if.end3393

if.then3383:                                      ; preds = %while.body3379
  %2375 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff3385 = getelementptr inbounds %struct.DState, %struct.DState* %2375, i32 0, i32 7
  %2376 = load i32, i32* %bsBuff3385, align 8
  %2377 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive3386 = getelementptr inbounds %struct.DState, %struct.DState* %2377, i32 0, i32 8
  %2378 = load i32, i32* %bsLive3386, align 4
  %sub3387 = sub nsw i32 %2378, 8
  %shr3388 = lshr i32 %2376, %sub3387
  %and3389 = and i32 %shr3388, 255
  store i32 %and3389, i32* %v3384, align 4
  %2379 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive3390 = getelementptr inbounds %struct.DState, %struct.DState* %2379, i32 0, i32 8
  %2380 = load i32, i32* %bsLive3390, align 4
  %sub3391 = sub nsw i32 %2380, 8
  store i32 %sub3391, i32* %bsLive3390, align 4
  %2381 = load i32, i32* %v3384, align 4
  %conv3392 = trunc i32 %2381 to i8
  store i8 %conv3392, i8* %uc, align 1
  br label %while.end3427

if.end3393:                                       ; preds = %while.body3379
  %2382 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3394 = getelementptr inbounds %struct.DState, %struct.DState* %2382, i32 0, i32 0
  %2383 = load %struct.bz_stream*, %struct.bz_stream** %strm3394, align 8
  %avail_in3395 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2383, i32 0, i32 1
  %2384 = load i32, i32* %avail_in3395, align 8
  %cmp3396 = icmp eq i32 %2384, 0
  br i1 %cmp3396, label %if.then3398, label %if.end3399

if.then3398:                                      ; preds = %if.end3393
  store i32 0, i32* %retVal, align 4
  br label %save_state_and_return

if.end3399:                                       ; preds = %if.end3393
  %2385 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff3400 = getelementptr inbounds %struct.DState, %struct.DState* %2385, i32 0, i32 7
  %2386 = load i32, i32* %bsBuff3400, align 8
  %shl3401 = shl i32 %2386, 8
  %2387 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3402 = getelementptr inbounds %struct.DState, %struct.DState* %2387, i32 0, i32 0
  %2388 = load %struct.bz_stream*, %struct.bz_stream** %strm3402, align 8
  %next_in3403 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2388, i32 0, i32 0
  %2389 = load i8*, i8** %next_in3403, align 8
  %2390 = load i8, i8* %2389, align 1
  %conv3404 = zext i8 %2390 to i32
  %or3405 = or i32 %shl3401, %conv3404
  %2391 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsBuff3406 = getelementptr inbounds %struct.DState, %struct.DState* %2391, i32 0, i32 7
  store i32 %or3405, i32* %bsBuff3406, align 8
  %2392 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %bsLive3407 = getelementptr inbounds %struct.DState, %struct.DState* %2392, i32 0, i32 8
  %2393 = load i32, i32* %bsLive3407, align 4
  %add3408 = add nsw i32 %2393, 8
  store i32 %add3408, i32* %bsLive3407, align 4
  %2394 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3409 = getelementptr inbounds %struct.DState, %struct.DState* %2394, i32 0, i32 0
  %2395 = load %struct.bz_stream*, %struct.bz_stream** %strm3409, align 8
  %next_in3410 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2395, i32 0, i32 0
  %2396 = load i8*, i8** %next_in3410, align 8
  %incdec.ptr3411 = getelementptr inbounds i8, i8* %2396, i32 1
  store i8* %incdec.ptr3411, i8** %next_in3410, align 8
  %2397 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3412 = getelementptr inbounds %struct.DState, %struct.DState* %2397, i32 0, i32 0
  %2398 = load %struct.bz_stream*, %struct.bz_stream** %strm3412, align 8
  %avail_in3413 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2398, i32 0, i32 1
  %2399 = load i32, i32* %avail_in3413, align 8
  %dec3414 = add i32 %2399, -1
  store i32 %dec3414, i32* %avail_in3413, align 8
  %2400 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3415 = getelementptr inbounds %struct.DState, %struct.DState* %2400, i32 0, i32 0
  %2401 = load %struct.bz_stream*, %struct.bz_stream** %strm3415, align 8
  %total_in_lo323416 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2401, i32 0, i32 2
  %2402 = load i32, i32* %total_in_lo323416, align 4
  %inc3417 = add i32 %2402, 1
  store i32 %inc3417, i32* %total_in_lo323416, align 4
  %2403 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3418 = getelementptr inbounds %struct.DState, %struct.DState* %2403, i32 0, i32 0
  %2404 = load %struct.bz_stream*, %struct.bz_stream** %strm3418, align 8
  %total_in_lo323419 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2404, i32 0, i32 2
  %2405 = load i32, i32* %total_in_lo323419, align 4
  %cmp3420 = icmp eq i32 %2405, 0
  br i1 %cmp3420, label %if.then3422, label %if.end3426

if.then3422:                                      ; preds = %if.end3399
  %2406 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %strm3423 = getelementptr inbounds %struct.DState, %struct.DState* %2406, i32 0, i32 0
  %2407 = load %struct.bz_stream*, %struct.bz_stream** %strm3423, align 8
  %total_in_hi323424 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2407, i32 0, i32 3
  %2408 = load i32, i32* %total_in_hi323424, align 8
  %inc3425 = add i32 %2408, 1
  store i32 %inc3425, i32* %total_in_hi323424, align 8
  br label %if.end3426

if.end3426:                                       ; preds = %if.then3422, %if.end3399
  br label %while.body3379

while.end3427:                                    ; preds = %if.then3383
  %2409 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %storedCombinedCRC3428 = getelementptr inbounds %struct.DState, %struct.DState* %2409, i32 0, i32 24
  %2410 = load i32, i32* %storedCombinedCRC3428, align 4
  %shl3429 = shl i32 %2410, 8
  %2411 = load i8, i8* %uc, align 1
  %conv3430 = zext i8 %2411 to i32
  %or3431 = or i32 %shl3429, %conv3430
  %2412 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %storedCombinedCRC3432 = getelementptr inbounds %struct.DState, %struct.DState* %2412, i32 0, i32 24
  store i32 %or3431, i32* %storedCombinedCRC3432, align 4
  %2413 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %state3433 = getelementptr inbounds %struct.DState, %struct.DState* %2413, i32 0, i32 1
  store i32 1, i32* %state3433, align 8
  store i32 4, i32* %retVal, align 4
  br label %save_state_and_return

sw.default:                                       ; preds = %if.end
  call void @BZ2_bz__AssertH__fail(i32 4001)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  call void @BZ2_bz__AssertH__fail(i32 4002)
  br label %save_state_and_return

save_state_and_return:                            ; preds = %sw.epilog, %while.end3427, %if.then3398, %if.then3341, %if.then3284, %if.then3227, %if.then3203, %if.then3170, %if.then3146, %if.then3113, %if.then3089, %if.then3056, %if.then3032, %if.then2999, %if.then2975, %if.then2942, %if.end2919, %if.then2583, %if.then2536, %if.then2521, %if.then2477, %if.then2447, %if.then2413, %if.then2367, %if.then2166, %if.then2153, %if.then2137, %if.then2105, %if.then2061, %if.then2031, %if.then1997, %if.then1951, %if.then1912, %if.then1868, %if.then1838, %if.then1804, %if.then1758, %if.then1605, %if.then1548, %if.then1524, %if.then1483, %if.then1411, %if.then1373, %if.then1344, %if.then1312, %if.then1290, %if.then1255, %if.then1231, %if.then1182, %if.then1099, %if.then1074, %if.then1066, %if.then1028, %if.then972, %if.then916, %if.then865, %if.then809, %if.then753, %if.then697, %if.then641, %if.then611, %if.then578, %if.then555, %if.then522, %if.then499, %if.then466, %if.then443, %if.then410, %if.then387, %if.then354, %if.then331, %if.then293, %if.then269, %if.then256, %if.then230, %if.then194, %if.then172, %if.then139, %if.then116, %if.then83, %if.then60, %if.then37
  %2414 = load i32, i32* %i, align 4
  %2415 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_i3434 = getelementptr inbounds %struct.DState, %struct.DState* %2415, i32 0, i32 40
  store i32 %2414, i32* %save_i3434, align 4
  %2416 = load i32, i32* %j, align 4
  %2417 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_j3435 = getelementptr inbounds %struct.DState, %struct.DState* %2417, i32 0, i32 41
  store i32 %2416, i32* %save_j3435, align 8
  %2418 = load i32, i32* %t, align 4
  %2419 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_t3436 = getelementptr inbounds %struct.DState, %struct.DState* %2419, i32 0, i32 42
  store i32 %2418, i32* %save_t3436, align 4
  %2420 = load i32, i32* %alphaSize, align 4
  %2421 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_alphaSize3437 = getelementptr inbounds %struct.DState, %struct.DState* %2421, i32 0, i32 43
  store i32 %2420, i32* %save_alphaSize3437, align 8
  %2422 = load i32, i32* %nGroups, align 4
  %2423 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nGroups3438 = getelementptr inbounds %struct.DState, %struct.DState* %2423, i32 0, i32 44
  store i32 %2422, i32* %save_nGroups3438, align 4
  %2424 = load i32, i32* %nSelectors, align 4
  %2425 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nSelectors3439 = getelementptr inbounds %struct.DState, %struct.DState* %2425, i32 0, i32 45
  store i32 %2424, i32* %save_nSelectors3439, align 8
  %2426 = load i32, i32* %EOB, align 4
  %2427 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_EOB3440 = getelementptr inbounds %struct.DState, %struct.DState* %2427, i32 0, i32 46
  store i32 %2426, i32* %save_EOB3440, align 4
  %2428 = load i32, i32* %groupNo, align 4
  %2429 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_groupNo3441 = getelementptr inbounds %struct.DState, %struct.DState* %2429, i32 0, i32 47
  store i32 %2428, i32* %save_groupNo3441, align 8
  %2430 = load i32, i32* %groupPos, align 4
  %2431 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_groupPos3442 = getelementptr inbounds %struct.DState, %struct.DState* %2431, i32 0, i32 48
  store i32 %2430, i32* %save_groupPos3442, align 4
  %2432 = load i32, i32* %nextSym, align 4
  %2433 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nextSym3443 = getelementptr inbounds %struct.DState, %struct.DState* %2433, i32 0, i32 49
  store i32 %2432, i32* %save_nextSym3443, align 8
  %2434 = load i32, i32* %nblockMAX, align 4
  %2435 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nblockMAX3444 = getelementptr inbounds %struct.DState, %struct.DState* %2435, i32 0, i32 50
  store i32 %2434, i32* %save_nblockMAX3444, align 4
  %2436 = load i32, i32* %nblock, align 4
  %2437 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_nblock3445 = getelementptr inbounds %struct.DState, %struct.DState* %2437, i32 0, i32 51
  store i32 %2436, i32* %save_nblock3445, align 8
  %2438 = load i32, i32* %es, align 4
  %2439 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_es3446 = getelementptr inbounds %struct.DState, %struct.DState* %2439, i32 0, i32 52
  store i32 %2438, i32* %save_es3446, align 4
  %2440 = load i32, i32* %N, align 4
  %2441 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_N3447 = getelementptr inbounds %struct.DState, %struct.DState* %2441, i32 0, i32 53
  store i32 %2440, i32* %save_N3447, align 8
  %2442 = load i32, i32* %curr, align 4
  %2443 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_curr3448 = getelementptr inbounds %struct.DState, %struct.DState* %2443, i32 0, i32 54
  store i32 %2442, i32* %save_curr3448, align 4
  %2444 = load i32, i32* %zt, align 4
  %2445 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_zt3449 = getelementptr inbounds %struct.DState, %struct.DState* %2445, i32 0, i32 55
  store i32 %2444, i32* %save_zt3449, align 8
  %2446 = load i32, i32* %zn, align 4
  %2447 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_zn3450 = getelementptr inbounds %struct.DState, %struct.DState* %2447, i32 0, i32 56
  store i32 %2446, i32* %save_zn3450, align 4
  %2448 = load i32, i32* %zvec, align 4
  %2449 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_zvec3451 = getelementptr inbounds %struct.DState, %struct.DState* %2449, i32 0, i32 57
  store i32 %2448, i32* %save_zvec3451, align 8
  %2450 = load i32, i32* %zj, align 4
  %2451 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_zj3452 = getelementptr inbounds %struct.DState, %struct.DState* %2451, i32 0, i32 58
  store i32 %2450, i32* %save_zj3452, align 4
  %2452 = load i32, i32* %gSel, align 4
  %2453 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_gSel3453 = getelementptr inbounds %struct.DState, %struct.DState* %2453, i32 0, i32 59
  store i32 %2452, i32* %save_gSel3453, align 8
  %2454 = load i32, i32* %gMinlen, align 4
  %2455 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_gMinlen3454 = getelementptr inbounds %struct.DState, %struct.DState* %2455, i32 0, i32 60
  store i32 %2454, i32* %save_gMinlen3454, align 4
  %2456 = load i32*, i32** %gLimit, align 8
  %2457 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_gLimit3455 = getelementptr inbounds %struct.DState, %struct.DState* %2457, i32 0, i32 61
  store i32* %2456, i32** %save_gLimit3455, align 8
  %2458 = load i32*, i32** %gBase, align 8
  %2459 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_gBase3456 = getelementptr inbounds %struct.DState, %struct.DState* %2459, i32 0, i32 62
  store i32* %2458, i32** %save_gBase3456, align 8
  %2460 = load i32*, i32** %gPerm, align 8
  %2461 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %save_gPerm3457 = getelementptr inbounds %struct.DState, %struct.DState* %2461, i32 0, i32 63
  store i32* %2460, i32** %save_gPerm3457, align 8
  %2462 = load i32, i32* %retVal, align 4
  ret i32 %2462
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @makeMaps_d(%struct.DState* %s) #0 {
entry:
  %s.addr = alloca %struct.DState*, align 8
  %i = alloca i32, align 4
  store %struct.DState* %s, %struct.DState** %s.addr, align 8
  %0 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nInUse = getelementptr inbounds %struct.DState, %struct.DState* %0, i32 0, i32 27
  store i32 0, i32* %nInUse, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %inUse = getelementptr inbounds %struct.DState, %struct.DState* %2, i32 0, i32 28
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %inUse, i64 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %tobool = icmp ne i8 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %conv = trunc i32 %5 to i8
  %6 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %seqToUnseq = getelementptr inbounds %struct.DState, %struct.DState* %6, i32 0, i32 30
  %7 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nInUse1 = getelementptr inbounds %struct.DState, %struct.DState* %7, i32 0, i32 27
  %8 = load i32, i32* %nInUse1, align 8
  %idxprom2 = sext i32 %8 to i64
  %arrayidx3 = getelementptr inbounds [256 x i8], [256 x i8]* %seqToUnseq, i64 0, i64 %idxprom2
  store i8 %conv, i8* %arrayidx3, align 1
  %9 = load %struct.DState*, %struct.DState** %s.addr, align 8
  %nInUse4 = getelementptr inbounds %struct.DState, %struct.DState* %9, i32 0, i32 27
  %10 = load i32, i32* %nInUse4, align 8
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %nInUse4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %i, align 4
  %inc5 = add nsw i32 %11, 1
  store i32 %inc5, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare dso_local void @BZ2_hbCreateDecodeTables(i32*, i32*, i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @BZ2_indexIntoF(i32, i32*) #1

declare dso_local void @BZ2_bz__AssertH__fail(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 11.0.0"}
