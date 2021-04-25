; ModuleID = 'bzip2.c'
source_filename = "bzip2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.zzzz = type { i8*, %struct.zzzz* }
%struct.UInt64 = type { [8 x i8] }
%struct.utimbuf = type { i64, i64 }

@.str = private unnamed_addr constant [5 x i8] c".bz2\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c".bz\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c".tbz2\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c".tbz\00", align 1
@zSuffix = dso_local global [4 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [5 x i8] c".tar\00", align 1
@unzSuffix = dso_local global [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0)], align 16
@outputHandleJustInCase = dso_local global %struct._IO_FILE* null, align 8
@smallMode = dso_local global i8 0, align 1
@keepInputFiles = dso_local global i8 0, align 1
@forceOverwrite = dso_local global i8 0, align 1
@noisy = dso_local global i8 0, align 1
@verbosity = dso_local global i32 0, align 4
@blockSize100k = dso_local global i32 0, align 4
@testFailsExist = dso_local global i8 0, align 1
@unzFailsExist = dso_local global i8 0, align 1
@numFileNames = dso_local global i32 0, align 4
@numFilesProcessed = dso_local global i32 0, align 4
@workFactor = dso_local global i32 0, align 4
@deleteOutputOnInterrupt = dso_local global i8 0, align 1
@exitValue = dso_local global i32 0, align 4
@inName = dso_local global [1034 x i8] zeroinitializer, align 16
@.str.6 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@outName = dso_local global [1034 x i8] zeroinitializer, align 16
@progNameReally = dso_local global [1034 x i8] zeroinitializer, align 16
@progName = dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [6 x i8] c"BZIP2\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"BZIP\00", align 1
@longestFileName = dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@srcMode = dso_local global i32 0, align 4
@opMode = dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [6 x i8] c"unzip\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"UNZIP\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"z2cat\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"Z2CAT\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"zcat\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"ZCAT\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.16 = private unnamed_addr constant [19 x i8] c"%s: Bad flag `%s'\0A\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"--stdout\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"--decompress\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"--compress\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"--force\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"--test\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"--keep\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"--small\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"--quiet\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"--license\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"--exponential\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"--repetitive-best\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"--repetitive-fast\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"--fast\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"--best\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"--verbose\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.34 = private unnamed_addr constant [40 x i8] c"%s: -c and -t cannot be used together.\0A\00", align 1
@.str.35 = private unnamed_addr constant [113 x i8] c"\0AYou can use the `bzip2recover' program to attempt to recover\0Adata from undamaged sections of corrupted files.\0A\0A\00", align 1
@tmpName = dso_local global [1034 x i8] zeroinitializer, align 16
@.str.36 = private unnamed_addr constant [869 x i8] c"\0A%s: Caught a SIGSEGV or SIGBUS whilst compressing.\0A\0A   Possible causes are (most likely first):\0A   (1) This computer has unreliable memory or cache hardware\0A       (a surprisingly common problem; try a different machine.)\0A   (2) A bug in the compiler used to create this executable\0A       (unlikely, if you didn't compile bzip2 yourself.)\0A   (3) A real bug in bzip2 -- I hope this should never be the case.\0A   The user's manual, Section 4.3, has more info on (1) and (2).\0A   \0A   If you suspect this is a bug in bzip2, or are unsure about (1)\0A   or (2), feel free to report it to me at: jseward@bzip.org.\0A   Section 4.3 of the user's manual describes the info a useful\0A   bug report should have.  If the manual is available on your\0A   system, please try and read it before mailing me.  If you don't\0A   have the manual or can't be bothered to read it, mail me anyway.\0A\0A\00", align 1
@.str.37 = private unnamed_addr constant [996 x i8] c"\0A%s: Caught a SIGSEGV or SIGBUS whilst decompressing.\0A\0A   Possible causes are (most likely first):\0A   (1) The compressed data is corrupted, and bzip2's usual checks\0A       failed to detect this.  Try bzip2 -tvv my_file.bz2.\0A   (2) This computer has unreliable memory or cache hardware\0A       (a surprisingly common problem; try a different machine.)\0A   (3) A bug in the compiler used to create this executable\0A       (unlikely, if you didn't compile bzip2 yourself.)\0A   (4) A real bug in bzip2 -- I hope this should never be the case.\0A   The user's manual, Section 4.3, has more info on (2) and (3).\0A   \0A   If you suspect this is a bug in bzip2, or are unsure about (2)\0A   or (3), feel free to report it to me at: jseward@bzip.org.\0A   Section 4.3 of the user's manual describes the info a useful\0A   bug report should have.  If the manual is available on your\0A   system, please try and read it before mailing me.  If you don't\0A   have the manual or can't be bothered to read it, mail me anyway.\0A\0A\00", align 1
@.str.38 = private unnamed_addr constant [36 x i8] c"\09Input file = %s, output file = %s\0A\00", align 1
@.str.39 = private unnamed_addr constant [44 x i8] c"%s: Deleting output file %s, if it exists.\0A\00", align 1
@.str.40 = private unnamed_addr constant [59 x i8] c"%s: WARNING: deletion of output file (apparently) failed.\0A\00", align 1
@.str.41 = private unnamed_addr constant [49 x i8] c"%s: WARNING: deletion of output file suppressed\0A\00", align 1
@.str.42 = private unnamed_addr constant [56 x i8] c"%s:    since input file no longer exists.  Output file\0A\00", align 1
@.str.43 = private unnamed_addr constant [32 x i8] c"%s:    `%s' may be incomplete.\0A\00", align 1
@.str.44 = private unnamed_addr constant [61 x i8] c"%s:    I suggest doing an integrity test (bzip2 -tv) of it.\0A\00", align 1
@.str.45 = private unnamed_addr constant [110 x i8] c"%s: WARNING: some files have not been processed:\0A%s:    %d specified on command line, %d not processed yet.\0A\0A\00", align 1
@.str.46 = private unnamed_addr constant [241 x i8] c"\0AIt is possible that the compressed file(s) have become corrupted.\0AYou can use the -tvv option to test integrity of such files.\0A\0AYou can use the `bzip2recover' program to attempt to recover\0Adata from undamaged sections of corrupted files.\0A\0A\00", align 1
@.str.47 = private unnamed_addr constant [120 x i8] c"bzip2: file name\0A`%s'\0Ais suspiciously (more than %d chars) long.\0ATry using a reasonable file name instead.  Sorry! :-)\0A\00", align 1
@.str.48 = private unnamed_addr constant [38 x i8] c"\0A%s: couldn't allocate enough memory\0A\00", align 1
@.str.49 = private unnamed_addr constant [529 x i8] c"bzip2, a block-sorting file compressor.  Version %s.\0A   \0A   Copyright (C) 1996-2005 by Julian Seward.\0A   \0A   This program is free software; you can redistribute it and/or modify\0A   it under the terms set out in the LICENSE file, which is included\0A   in the bzip2-1.0 source distribution.\0A   \0A   This program is distributed in the hope that it will be useful,\0A   but WITHOUT ANY WARRANTY; without even the implied warranty of\0A   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the\0A   LICENSE file for more details.\0A   \0A\00", align 1
@.str.50 = private unnamed_addr constant [1230 x i8] c"bzip2, a block-sorting file compressor.  Version %s.\0A\0A   usage: %s [flags and input files in any order]\0A\0A   -h --help           print this message\0A   -d --decompress     force decompression\0A   -z --compress       force compression\0A   -k --keep           keep (don't delete) input files\0A   -f --force          overwrite existing output files\0A   -t --test           test compressed file integrity\0A   -c --stdout         output to standard out\0A   -q --quiet          suppress noncritical error messages\0A   -v --verbose        be verbose (a 2nd -v gives more)\0A   -L --license        display software version & license\0A   -V --version        display software version & license\0A   -s --small          use less memory (at most 2500k)\0A   -1 .. -9            set block size to 100k .. 900k\0A   --fast              alias for -1\0A   --best              alias for -9\0A\0A   If invoked as `bzip2', default action is to compress.\0A              as `bunzip2',  default action is to decompress.\0A              as `bzcat', default action is to decompress to stdout.\0A\0A   If no file names are given, bzip2 compresses or decompresses\0A   from standard input to standard output.  You can combine\0A   short flags, so `-v -4' means the same as -v4 or -4v, &c.\0A\0A\00", align 1
@.str.51 = private unnamed_addr constant [49 x i8] c"%s: %s is redundant in versions 0.9.5 and above\0A\00", align 1
@.str.52 = private unnamed_addr constant [45 x i8] c"\0A%s: Control-C or similar caught, quitting.\0A\00", align 1
@.str.53 = private unnamed_addr constant [21 x i8] c"compress: bad modes\0A\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"(stdin)\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"(stdout)\00", align 1
@.str.56 = private unnamed_addr constant [39 x i8] c"%s: There are no files matching `%s'.\0A\00", align 1
@.str.57 = private unnamed_addr constant [35 x i8] c"%s: Can't open input file %s: %s.\0A\00", align 1
@.str.58 = private unnamed_addr constant [42 x i8] c"%s: Input file %s already has %s suffix.\0A\00", align 1
@.str.59 = private unnamed_addr constant [35 x i8] c"%s: Input file %s is a directory.\0A\00", align 1
@.str.60 = private unnamed_addr constant [41 x i8] c"%s: Input file %s is not a normal file.\0A\00", align 1
@.str.61 = private unnamed_addr constant [36 x i8] c"%s: Output file %s already exists.\0A\00", align 1
@.str.62 = private unnamed_addr constant [40 x i8] c"%s: Input file %s has %d other link%s.\0A\00", align 1
@.str.63 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@stdin = external dso_local global %struct._IO_FILE*, align 8
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.64 = private unnamed_addr constant [50 x i8] c"%s: I won't write compressed data to a terminal.\0A\00", align 1
@.str.65 = private unnamed_addr constant [34 x i8] c"%s: For help, type: `%s --help'.\0A\00", align 1
@.str.66 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.67 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.68 = private unnamed_addr constant [38 x i8] c"%s: Can't create output file %s: %s.\0A\00", align 1
@.str.69 = private unnamed_addr constant [22 x i8] c"compress: bad srcMode\00", align 1
@.str.70 = private unnamed_addr constant [7 x i8] c"  %s: \00", align 1
@.str.71 = private unnamed_addr constant [109 x i8] c"\0A%s: PANIC -- internal consistency error:\0A\09%s\0A\09This is a BUG.  Please report it to me at:\0A\09jseward@bzip.org\0A\00", align 1
@fileMetaInfo = internal global %struct.stat zeroinitializer, align 8
@.str.72 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.73 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.74 = private unnamed_addr constant [22 x i8] c" no data compressed.\0A\00", align 1
@.str.75 = private unnamed_addr constant [57 x i8] c"%6.3f:1, %6.3f bits/byte, %5.2f%% saved, %s in, %s out.\0A\00", align 1
@.str.76 = private unnamed_addr constant [26 x i8] c"compress:unexpected error\00", align 1
@.str.77 = private unnamed_addr constant [236 x i8] c"bzip2: I'm not configured correctly for this platform!\0A\09I require Int32, Int16 and Char to have sizes\0A\09of 4, 2 and 1 bytes to run properly, and they don't.\0A\09Probably you can fix this by defining them correctly,\0A\09and recompiling.  Bye!\0A\00", align 1
@.str.78 = private unnamed_addr constant [65 x i8] c"\0A%s: I/O or other error, bailing out.  Possible reason follows.\0A\00", align 1
@.str.79 = private unnamed_addr constant [23 x i8] c"uncompress: bad modes\0A\00", align 1
@.str.80 = private unnamed_addr constant [5 x i8] c".out\00", align 1
@.str.81 = private unnamed_addr constant [50 x i8] c"%s: Can't guess original name for %s -- using %s\0A\00", align 1
@.str.82 = private unnamed_addr constant [51 x i8] c"%s: I won't read compressed data from a terminal.\0A\00", align 1
@.str.83 = private unnamed_addr constant [34 x i8] c"%s: Can't open input file %s:%s.\0A\00", align 1
@.str.84 = private unnamed_addr constant [24 x i8] c"uncompress: bad srcMode\00", align 1
@.str.85 = private unnamed_addr constant [6 x i8] c"done\0A\00", align 1
@.str.86 = private unnamed_addr constant [19 x i8] c"not a bzip2 file.\0A\00", align 1
@.str.87 = private unnamed_addr constant [29 x i8] c"%s: %s is not a bzip2 file.\0A\00", align 1
@.str.88 = private unnamed_addr constant [27 x i8] c"decompress:bzReadGetUnused\00", align 1
@.str.89 = private unnamed_addr constant [6 x i8] c"\0A    \00", align 1
@.str.90 = private unnamed_addr constant [45 x i8] c"\0A%s: %s: trailing garbage after EOF ignored\0A\00", align 1
@.str.91 = private unnamed_addr constant [28 x i8] c"decompress:unexpected error\00", align 1
@.str.92 = private unnamed_addr constant [47 x i8] c"\0A%s: Data integrity error when decompressing.\0A\00", align 1
@.str.93 = private unnamed_addr constant [95 x i8] c"\0A%s: Compressed file ends unexpectedly;\0A\09perhaps it is corrupted?  *Possible* reason follows.\0A\00", align 1
@.str.94 = private unnamed_addr constant [18 x i8] c"testf: bad modes\0A\00", align 1
@.str.95 = private unnamed_addr constant [30 x i8] c"%s: Can't open input %s: %s.\0A\00", align 1
@.str.96 = private unnamed_addr constant [19 x i8] c"testf: bad srcMode\00", align 1
@.str.97 = private unnamed_addr constant [4 x i8] c"ok\0A\00", align 1
@.str.98 = private unnamed_addr constant [21 x i8] c"test:bzReadGetUnused\00", align 1
@.str.99 = private unnamed_addr constant [9 x i8] c"%s: %s: \00", align 1
@.str.100 = private unnamed_addr constant [36 x i8] c"data integrity (CRC) error in data\0A\00", align 1
@.str.101 = private unnamed_addr constant [24 x i8] c"file ends unexpectedly\0A\00", align 1
@.str.102 = private unnamed_addr constant [46 x i8] c"bad magic number (file not created by bzip2)\0A\00", align 1
@.str.103 = private unnamed_addr constant [36 x i8] c"trailing garbage after EOF ignored\0A\00", align 1
@.str.104 = private unnamed_addr constant [22 x i8] c"test:unexpected error\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._IO_FILE* @fopen_output_safely(i8* %name, i8* %mode) #0 {
entry:
  %retval = alloca %struct._IO_FILE*, align 8
  %name.addr = alloca i8*, align 8
  %mode.addr = alloca i8*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %fh = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i8* %mode, i8** %mode.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %call = call i32 (i8*, i32, ...) @open(i8* %0, i32 193, i32 384)
  store i32 %call, i32* %fh, align 4
  %1 = load i32, i32* %fh, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._IO_FILE* null, %struct._IO_FILE** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %fh, align 4
  %3 = load i8*, i8** %mode.addr, align 8
  %call1 = call %struct._IO_FILE* @fdopen(i32 %2, i8* %3) #8
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %fp, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp2 = icmp eq %struct._IO_FILE* %4, null
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %5 = load i32, i32* %fh, align 4
  %call4 = call i32 @close(i32 %5)
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  store %struct._IO_FILE* %6, %struct._IO_FILE** %retval, align 8
  br label %return

return:                                           ; preds = %if.end5, %if.then
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %retval, align 8
  ret %struct._IO_FILE* %7
}

declare dso_local i32 @open(i8*, i32, ...) #1

; Function Attrs: nounwind
declare dso_local %struct._IO_FILE* @fdopen(i32, i8*) #2

declare dso_local i32 @close(i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %argList = alloca %struct.zzzz*, align 8
  %aa = alloca %struct.zzzz*, align 8
  %decode = alloca i8, align 1
  %aa2 = alloca %struct.zzzz*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** @outputHandleJustInCase, align 8
  store i8 0, i8* @smallMode, align 1
  store i8 0, i8* @keepInputFiles, align 1
  store i8 0, i8* @forceOverwrite, align 1
  store i8 1, i8* @noisy, align 1
  store i32 0, i32* @verbosity, align 4
  store i32 9, i32* @blockSize100k, align 4
  store i8 0, i8* @testFailsExist, align 1
  store i8 0, i8* @unzFailsExist, align 1
  store i32 0, i32* @numFileNames, align 4
  store i32 0, i32* @numFilesProcessed, align 4
  store i32 30, i32* @workFactor, align 4
  store i8 0, i8* @deleteOutputOnInterrupt, align 1
  store i32 0, i32* @exitValue, align 4
  store i32 0, i32* %j, align 4
  store i32 0, i32* %i, align 4
  %call = call void (i32)* @signal(i32 11, void (i32)* @mySIGSEGVorSIGBUScatcher) #8
  %call1 = call void (i32)* @signal(i32 7, void (i32)* @mySIGSEGVorSIGBUScatcher) #8
  call void @copyFileName(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  call void @copyFileName(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %0 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 0
  %1 = load i8*, i8** %arrayidx, align 8
  call void @copyFileName(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @progNameReally, i64 0, i64 0), i8* %1)
  store i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @progNameReally, i64 0, i64 0), i8** @progName, align 8
  store i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @progNameReally, i64 0, i64 0), i8** %tmp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i8*, i8** %tmp, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** %tmp, align 8
  %5 = load i8, i8* %4, align 1
  %conv3 = sext i8 %5 to i32
  %cmp4 = icmp eq i32 %conv3, 47
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load i8*, i8** %tmp, align 8
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 1
  store i8* %add.ptr, i8** @progName, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i8*, i8** %tmp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %tmp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.zzzz* null, %struct.zzzz** %argList, align 8
  call void @addFlagsFromEnvVar(%struct.zzzz** %argList, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  call void @addFlagsFromEnvVar(%struct.zzzz** %argList, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  store i32 1, i32* %i, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc12, %for.end
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %argc.addr, align 4
  %sub = sub nsw i32 %9, 1
  %cmp7 = icmp sle i32 %8, %sub
  br i1 %cmp7, label %for.body9, label %for.end13

for.body9:                                        ; preds = %for.cond6
  %10 = load %struct.zzzz*, %struct.zzzz** %argList, align 8
  %11 = load i8**, i8*** %argv.addr, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx10 = getelementptr inbounds i8*, i8** %11, i64 %idxprom
  %13 = load i8*, i8** %arrayidx10, align 8
  %call11 = call %struct.zzzz* @snocString(%struct.zzzz* %10, i8* %13)
  store %struct.zzzz* %call11, %struct.zzzz** %argList, align 8
  br label %for.inc12

for.inc12:                                        ; preds = %for.body9
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond6

for.end13:                                        ; preds = %for.cond6
  store i32 7, i32* @longestFileName, align 4
  store i32 0, i32* @numFileNames, align 4
  store i8 1, i8* %decode, align 1
  %15 = load %struct.zzzz*, %struct.zzzz** %argList, align 8
  store %struct.zzzz* %15, %struct.zzzz** %aa, align 8
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc42, %for.end13
  %16 = load %struct.zzzz*, %struct.zzzz** %aa, align 8
  %cmp15 = icmp ne %struct.zzzz* %16, null
  br i1 %cmp15, label %for.body17, label %for.end43

for.body17:                                       ; preds = %for.cond14
  %17 = load %struct.zzzz*, %struct.zzzz** %aa, align 8
  %name = getelementptr inbounds %struct.zzzz, %struct.zzzz* %17, i32 0, i32 0
  %18 = load i8*, i8** %name, align 8
  %call18 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0)) #9
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %for.body17
  store i8 0, i8* %decode, align 1
  br label %for.inc42

if.end22:                                         ; preds = %for.body17
  %19 = load %struct.zzzz*, %struct.zzzz** %aa, align 8
  %name23 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %19, i32 0, i32 0
  %20 = load i8*, i8** %name23, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %20, i64 0
  %21 = load i8, i8* %arrayidx24, align 1
  %conv25 = sext i8 %21 to i32
  %cmp26 = icmp eq i32 %conv25, 45
  br i1 %cmp26, label %land.lhs.true, label %if.end30

land.lhs.true:                                    ; preds = %if.end22
  %22 = load i8, i8* %decode, align 1
  %conv28 = zext i8 %22 to i32
  %tobool = icmp ne i32 %conv28, 0
  br i1 %tobool, label %if.then29, label %if.end30

if.then29:                                        ; preds = %land.lhs.true
  br label %for.inc42

if.end30:                                         ; preds = %land.lhs.true, %if.end22
  %23 = load i32, i32* @numFileNames, align 4
  %inc31 = add nsw i32 %23, 1
  store i32 %inc31, i32* @numFileNames, align 4
  %24 = load i32, i32* @longestFileName, align 4
  %25 = load %struct.zzzz*, %struct.zzzz** %aa, align 8
  %name32 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %25, i32 0, i32 0
  %26 = load i8*, i8** %name32, align 8
  %call33 = call i64 @strlen(i8* %26) #9
  %conv34 = trunc i64 %call33 to i32
  %cmp35 = icmp slt i32 %24, %conv34
  br i1 %cmp35, label %if.then37, label %if.end41

if.then37:                                        ; preds = %if.end30
  %27 = load %struct.zzzz*, %struct.zzzz** %aa, align 8
  %name38 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %27, i32 0, i32 0
  %28 = load i8*, i8** %name38, align 8
  %call39 = call i64 @strlen(i8* %28) #9
  %conv40 = trunc i64 %call39 to i32
  store i32 %conv40, i32* @longestFileName, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then37, %if.end30
  br label %for.inc42

for.inc42:                                        ; preds = %if.end41, %if.then29, %if.then21
  %29 = load %struct.zzzz*, %struct.zzzz** %aa, align 8
  %link = getelementptr inbounds %struct.zzzz, %struct.zzzz* %29, i32 0, i32 1
  %30 = load %struct.zzzz*, %struct.zzzz** %link, align 8
  store %struct.zzzz* %30, %struct.zzzz** %aa, align 8
  br label %for.cond14

for.end43:                                        ; preds = %for.cond14
  %31 = load i32, i32* @numFileNames, align 4
  %cmp44 = icmp eq i32 %31, 0
  br i1 %cmp44, label %if.then46, label %if.else

if.then46:                                        ; preds = %for.end43
  store i32 1, i32* @srcMode, align 4
  br label %if.end47

if.else:                                          ; preds = %for.end43
  store i32 3, i32* @srcMode, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.else, %if.then46
  store i32 1, i32* @opMode, align 4
  %32 = load i8*, i8** @progName, align 8
  %call48 = call i8* @strstr(i8* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0)) #9
  %cmp49 = icmp ne i8* %call48, null
  br i1 %cmp49, label %if.then54, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end47
  %33 = load i8*, i8** @progName, align 8
  %call51 = call i8* @strstr(i8* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0)) #9
  %cmp52 = icmp ne i8* %call51, null
  br i1 %cmp52, label %if.then54, label %if.end55

if.then54:                                        ; preds = %lor.lhs.false, %if.end47
  store i32 2, i32* @opMode, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %lor.lhs.false
  %34 = load i8*, i8** @progName, align 8
  %call56 = call i8* @strstr(i8* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0)) #9
  %cmp57 = icmp ne i8* %call56, null
  br i1 %cmp57, label %if.then71, label %lor.lhs.false59

lor.lhs.false59:                                  ; preds = %if.end55
  %35 = load i8*, i8** @progName, align 8
  %call60 = call i8* @strstr(i8* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0)) #9
  %cmp61 = icmp ne i8* %call60, null
  br i1 %cmp61, label %if.then71, label %lor.lhs.false63

lor.lhs.false63:                                  ; preds = %lor.lhs.false59
  %36 = load i8*, i8** @progName, align 8
  %call64 = call i8* @strstr(i8* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0)) #9
  %cmp65 = icmp ne i8* %call64, null
  br i1 %cmp65, label %if.then71, label %lor.lhs.false67

lor.lhs.false67:                                  ; preds = %lor.lhs.false63
  %37 = load i8*, i8** @progName, align 8
  %call68 = call i8* @strstr(i8* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0)) #9
  %cmp69 = icmp ne i8* %call68, null
  br i1 %cmp69, label %if.then71, label %if.end74

if.then71:                                        ; preds = %lor.lhs.false67, %lor.lhs.false63, %lor.lhs.false59, %if.end55
  store i32 2, i32* @opMode, align 4
  %38 = load i32, i32* @numFileNames, align 4
  %cmp72 = icmp eq i32 %38, 0
  %39 = zext i1 %cmp72 to i64
  %cond = select i1 %cmp72, i32 1, i32 2
  store i32 %cond, i32* @srcMode, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.then71, %lor.lhs.false67
  %40 = load %struct.zzzz*, %struct.zzzz** %argList, align 8
  store %struct.zzzz* %40, %struct.zzzz** %aa, align 8
  br label %for.cond75

for.cond75:                                       ; preds = %for.inc135, %if.end74
  %41 = load %struct.zzzz*, %struct.zzzz** %aa, align 8
  %cmp76 = icmp ne %struct.zzzz* %41, null
  br i1 %cmp76, label %for.body78, label %for.end137

for.body78:                                       ; preds = %for.cond75
  %42 = load %struct.zzzz*, %struct.zzzz** %aa, align 8
  %name79 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %42, i32 0, i32 0
  %43 = load i8*, i8** %name79, align 8
  %call80 = call i32 @strcmp(i8* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0)) #9
  %cmp81 = icmp eq i32 %call80, 0
  br i1 %cmp81, label %if.then83, label %if.end84

if.then83:                                        ; preds = %for.body78
  br label %for.end137

if.end84:                                         ; preds = %for.body78
  %44 = load %struct.zzzz*, %struct.zzzz** %aa, align 8
  %name85 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %44, i32 0, i32 0
  %45 = load i8*, i8** %name85, align 8
  %arrayidx86 = getelementptr inbounds i8, i8* %45, i64 0
  %46 = load i8, i8* %arrayidx86, align 1
  %conv87 = sext i8 %46 to i32
  %cmp88 = icmp eq i32 %conv87, 45
  br i1 %cmp88, label %land.lhs.true90, label %if.end134

land.lhs.true90:                                  ; preds = %if.end84
  %47 = load %struct.zzzz*, %struct.zzzz** %aa, align 8
  %name91 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %47, i32 0, i32 0
  %48 = load i8*, i8** %name91, align 8
  %arrayidx92 = getelementptr inbounds i8, i8* %48, i64 1
  %49 = load i8, i8* %arrayidx92, align 1
  %conv93 = sext i8 %49 to i32
  %cmp94 = icmp ne i32 %conv93, 45
  br i1 %cmp94, label %if.then96, label %if.end134

if.then96:                                        ; preds = %land.lhs.true90
  store i32 1, i32* %j, align 4
  br label %for.cond97

for.cond97:                                       ; preds = %for.inc131, %if.then96
  %50 = load %struct.zzzz*, %struct.zzzz** %aa, align 8
  %name98 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %50, i32 0, i32 0
  %51 = load i8*, i8** %name98, align 8
  %52 = load i32, i32* %j, align 4
  %idxprom99 = sext i32 %52 to i64
  %arrayidx100 = getelementptr inbounds i8, i8* %51, i64 %idxprom99
  %53 = load i8, i8* %arrayidx100, align 1
  %conv101 = sext i8 %53 to i32
  %cmp102 = icmp ne i32 %conv101, 0
  br i1 %cmp102, label %for.body104, label %for.end133

for.body104:                                      ; preds = %for.cond97
  %54 = load %struct.zzzz*, %struct.zzzz** %aa, align 8
  %name105 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %54, i32 0, i32 0
  %55 = load i8*, i8** %name105, align 8
  %56 = load i32, i32* %j, align 4
  %idxprom106 = sext i32 %56 to i64
  %arrayidx107 = getelementptr inbounds i8, i8* %55, i64 %idxprom106
  %57 = load i8, i8* %arrayidx107, align 1
  %conv108 = sext i8 %57 to i32
  switch i32 %conv108, label %sw.default [
    i32 99, label %sw.bb
    i32 100, label %sw.bb109
    i32 122, label %sw.bb110
    i32 102, label %sw.bb111
    i32 116, label %sw.bb112
    i32 107, label %sw.bb113
    i32 115, label %sw.bb114
    i32 113, label %sw.bb115
    i32 49, label %sw.bb116
    i32 50, label %sw.bb117
    i32 51, label %sw.bb118
    i32 52, label %sw.bb119
    i32 53, label %sw.bb120
    i32 54, label %sw.bb121
    i32 55, label %sw.bb122
    i32 56, label %sw.bb123
    i32 57, label %sw.bb124
    i32 86, label %sw.bb125
    i32 76, label %sw.bb125
    i32 118, label %sw.bb126
    i32 104, label %sw.bb128
  ]

sw.bb:                                            ; preds = %for.body104
  store i32 2, i32* @srcMode, align 4
  br label %sw.epilog

sw.bb109:                                         ; preds = %for.body104
  store i32 2, i32* @opMode, align 4
  br label %sw.epilog

sw.bb110:                                         ; preds = %for.body104
  store i32 1, i32* @opMode, align 4
  br label %sw.epilog

sw.bb111:                                         ; preds = %for.body104
  store i8 1, i8* @forceOverwrite, align 1
  br label %sw.epilog

sw.bb112:                                         ; preds = %for.body104
  store i32 3, i32* @opMode, align 4
  br label %sw.epilog

sw.bb113:                                         ; preds = %for.body104
  store i8 1, i8* @keepInputFiles, align 1
  br label %sw.epilog

sw.bb114:                                         ; preds = %for.body104
  store i8 1, i8* @smallMode, align 1
  br label %sw.epilog

sw.bb115:                                         ; preds = %for.body104
  store i8 0, i8* @noisy, align 1
  br label %sw.epilog

sw.bb116:                                         ; preds = %for.body104
  store i32 1, i32* @blockSize100k, align 4
  br label %sw.epilog

sw.bb117:                                         ; preds = %for.body104
  store i32 2, i32* @blockSize100k, align 4
  br label %sw.epilog

sw.bb118:                                         ; preds = %for.body104
  store i32 3, i32* @blockSize100k, align 4
  br label %sw.epilog

sw.bb119:                                         ; preds = %for.body104
  store i32 4, i32* @blockSize100k, align 4
  br label %sw.epilog

sw.bb120:                                         ; preds = %for.body104
  store i32 5, i32* @blockSize100k, align 4
  br label %sw.epilog

sw.bb121:                                         ; preds = %for.body104
  store i32 6, i32* @blockSize100k, align 4
  br label %sw.epilog

sw.bb122:                                         ; preds = %for.body104
  store i32 7, i32* @blockSize100k, align 4
  br label %sw.epilog

sw.bb123:                                         ; preds = %for.body104
  store i32 8, i32* @blockSize100k, align 4
  br label %sw.epilog

sw.bb124:                                         ; preds = %for.body104
  store i32 9, i32* @blockSize100k, align 4
  br label %sw.epilog

sw.bb125:                                         ; preds = %for.body104, %for.body104
  call void @license()
  br label %sw.epilog

sw.bb126:                                         ; preds = %for.body104
  %58 = load i32, i32* @verbosity, align 4
  %inc127 = add nsw i32 %58, 1
  store i32 %inc127, i32* @verbosity, align 4
  br label %sw.epilog

sw.bb128:                                         ; preds = %for.body104
  %59 = load i8*, i8** @progName, align 8
  call void @usage(i8* %59)
  call void @exit(i32 0) #10
  unreachable

sw.default:                                       ; preds = %for.body104
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %61 = load i8*, i8** @progName, align 8
  %62 = load %struct.zzzz*, %struct.zzzz** %aa, align 8
  %name129 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %62, i32 0, i32 0
  %63 = load i8*, i8** %name129, align 8
  %call130 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %60, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0), i8* %61, i8* %63)
  %64 = load i8*, i8** @progName, align 8
  call void @usage(i8* %64)
  call void @exit(i32 1) #10
  unreachable

sw.epilog:                                        ; preds = %sw.bb126, %sw.bb125, %sw.bb124, %sw.bb123, %sw.bb122, %sw.bb121, %sw.bb120, %sw.bb119, %sw.bb118, %sw.bb117, %sw.bb116, %sw.bb115, %sw.bb114, %sw.bb113, %sw.bb112, %sw.bb111, %sw.bb110, %sw.bb109, %sw.bb
  br label %for.inc131

for.inc131:                                       ; preds = %sw.epilog
  %65 = load i32, i32* %j, align 4
  %inc132 = add nsw i32 %65, 1
  store i32 %inc132, i32* %j, align 4
  br label %for.cond97

for.end133:                                       ; preds = %for.cond97
  br label %if.end134

if.end134:                                        ; preds = %for.end133, %land.lhs.true90, %if.end84
  br label %for.inc135

for.inc135:                                       ; preds = %if.end134
  %66 = load %struct.zzzz*, %struct.zzzz** %aa, align 8
  %link136 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %66, i32 0, i32 1
  %67 = load %struct.zzzz*, %struct.zzzz** %link136, align 8
  store %struct.zzzz* %67, %struct.zzzz** %aa, align 8
  br label %for.cond75

for.end137:                                       ; preds = %if.then83, %for.cond75
  %68 = load %struct.zzzz*, %struct.zzzz** %argList, align 8
  store %struct.zzzz* %68, %struct.zzzz** %aa, align 8
  br label %for.cond138

for.cond138:                                      ; preds = %for.inc278, %for.end137
  %69 = load %struct.zzzz*, %struct.zzzz** %aa, align 8
  %cmp139 = icmp ne %struct.zzzz* %69, null
  br i1 %cmp139, label %for.body141, label %for.end280

for.body141:                                      ; preds = %for.cond138
  %70 = load %struct.zzzz*, %struct.zzzz** %aa, align 8
  %name142 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %70, i32 0, i32 0
  %71 = load i8*, i8** %name142, align 8
  %call143 = call i32 @strcmp(i8* %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0)) #9
  %cmp144 = icmp eq i32 %call143, 0
  br i1 %cmp144, label %if.then146, label %if.end147

if.then146:                                       ; preds = %for.body141
  br label %for.end280

if.end147:                                        ; preds = %for.body141
  %72 = load %struct.zzzz*, %struct.zzzz** %aa, align 8
  %name148 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %72, i32 0, i32 0
  %73 = load i8*, i8** %name148, align 8
  %call149 = call i32 @strcmp(i8* %73, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0)) #9
  %cmp150 = icmp eq i32 %call149, 0
  br i1 %cmp150, label %if.then152, label %if.else153

if.then152:                                       ; preds = %if.end147
  store i32 2, i32* @srcMode, align 4
  br label %if.end277

if.else153:                                       ; preds = %if.end147
  %74 = load %struct.zzzz*, %struct.zzzz** %aa, align 8
  %name154 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %74, i32 0, i32 0
  %75 = load i8*, i8** %name154, align 8
  %call155 = call i32 @strcmp(i8* %75, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0)) #9
  %cmp156 = icmp eq i32 %call155, 0
  br i1 %cmp156, label %if.then158, label %if.else159

if.then158:                                       ; preds = %if.else153
  store i32 2, i32* @opMode, align 4
  br label %if.end276

if.else159:                                       ; preds = %if.else153
  %76 = load %struct.zzzz*, %struct.zzzz** %aa, align 8
  %name160 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %76, i32 0, i32 0
  %77 = load i8*, i8** %name160, align 8
  %call161 = call i32 @strcmp(i8* %77, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0)) #9
  %cmp162 = icmp eq i32 %call161, 0
  br i1 %cmp162, label %if.then164, label %if.else165

if.then164:                                       ; preds = %if.else159
  store i32 1, i32* @opMode, align 4
  br label %if.end275

if.else165:                                       ; preds = %if.else159
  %78 = load %struct.zzzz*, %struct.zzzz** %aa, align 8
  %name166 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %78, i32 0, i32 0
  %79 = load i8*, i8** %name166, align 8
  %call167 = call i32 @strcmp(i8* %79, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0)) #9
  %cmp168 = icmp eq i32 %call167, 0
  br i1 %cmp168, label %if.then170, label %if.else171

if.then170:                                       ; preds = %if.else165
  store i8 1, i8* @forceOverwrite, align 1
  br label %if.end274

if.else171:                                       ; preds = %if.else165
  %80 = load %struct.zzzz*, %struct.zzzz** %aa, align 8
  %name172 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %80, i32 0, i32 0
  %81 = load i8*, i8** %name172, align 8
  %call173 = call i32 @strcmp(i8* %81, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0)) #9
  %cmp174 = icmp eq i32 %call173, 0
  br i1 %cmp174, label %if.then176, label %if.else177

if.then176:                                       ; preds = %if.else171
  store i32 3, i32* @opMode, align 4
  br label %if.end273

if.else177:                                       ; preds = %if.else171
  %82 = load %struct.zzzz*, %struct.zzzz** %aa, align 8
  %name178 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %82, i32 0, i32 0
  %83 = load i8*, i8** %name178, align 8
  %call179 = call i32 @strcmp(i8* %83, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0)) #9
  %cmp180 = icmp eq i32 %call179, 0
  br i1 %cmp180, label %if.then182, label %if.else183

if.then182:                                       ; preds = %if.else177
  store i8 1, i8* @keepInputFiles, align 1
  br label %if.end272

if.else183:                                       ; preds = %if.else177
  %84 = load %struct.zzzz*, %struct.zzzz** %aa, align 8
  %name184 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %84, i32 0, i32 0
  %85 = load i8*, i8** %name184, align 8
  %call185 = call i32 @strcmp(i8* %85, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0)) #9
  %cmp186 = icmp eq i32 %call185, 0
  br i1 %cmp186, label %if.then188, label %if.else189

if.then188:                                       ; preds = %if.else183
  store i8 1, i8* @smallMode, align 1
  br label %if.end271

if.else189:                                       ; preds = %if.else183
  %86 = load %struct.zzzz*, %struct.zzzz** %aa, align 8
  %name190 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %86, i32 0, i32 0
  %87 = load i8*, i8** %name190, align 8
  %call191 = call i32 @strcmp(i8* %87, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0)) #9
  %cmp192 = icmp eq i32 %call191, 0
  br i1 %cmp192, label %if.then194, label %if.else195

if.then194:                                       ; preds = %if.else189
  store i8 0, i8* @noisy, align 1
  br label %if.end270

if.else195:                                       ; preds = %if.else189
  %88 = load %struct.zzzz*, %struct.zzzz** %aa, align 8
  %name196 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %88, i32 0, i32 0
  %89 = load i8*, i8** %name196, align 8
  %call197 = call i32 @strcmp(i8* %89, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i64 0, i64 0)) #9
  %cmp198 = icmp eq i32 %call197, 0
  br i1 %cmp198, label %if.then200, label %if.else201

if.then200:                                       ; preds = %if.else195
  call void @license()
  br label %if.end269

if.else201:                                       ; preds = %if.else195
  %90 = load %struct.zzzz*, %struct.zzzz** %aa, align 8
  %name202 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %90, i32 0, i32 0
  %91 = load i8*, i8** %name202, align 8
  %call203 = call i32 @strcmp(i8* %91, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0)) #9
  %cmp204 = icmp eq i32 %call203, 0
  br i1 %cmp204, label %if.then206, label %if.else207

if.then206:                                       ; preds = %if.else201
  call void @license()
  br label %if.end268

if.else207:                                       ; preds = %if.else201
  %92 = load %struct.zzzz*, %struct.zzzz** %aa, align 8
  %name208 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %92, i32 0, i32 0
  %93 = load i8*, i8** %name208, align 8
  %call209 = call i32 @strcmp(i8* %93, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0)) #9
  %cmp210 = icmp eq i32 %call209, 0
  br i1 %cmp210, label %if.then212, label %if.else213

if.then212:                                       ; preds = %if.else207
  store i32 1, i32* @workFactor, align 4
  br label %if.end267

if.else213:                                       ; preds = %if.else207
  %94 = load %struct.zzzz*, %struct.zzzz** %aa, align 8
  %name214 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %94, i32 0, i32 0
  %95 = load i8*, i8** %name214, align 8
  %call215 = call i32 @strcmp(i8* %95, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i64 0, i64 0)) #9
  %cmp216 = icmp eq i32 %call215, 0
  br i1 %cmp216, label %if.then218, label %if.else220

if.then218:                                       ; preds = %if.else213
  %96 = load %struct.zzzz*, %struct.zzzz** %aa, align 8
  %name219 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %96, i32 0, i32 0
  %97 = load i8*, i8** %name219, align 8
  call void @redundant(i8* %97)
  br label %if.end266

if.else220:                                       ; preds = %if.else213
  %98 = load %struct.zzzz*, %struct.zzzz** %aa, align 8
  %name221 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %98, i32 0, i32 0
  %99 = load i8*, i8** %name221, align 8
  %call222 = call i32 @strcmp(i8* %99, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i64 0, i64 0)) #9
  %cmp223 = icmp eq i32 %call222, 0
  br i1 %cmp223, label %if.then225, label %if.else227

if.then225:                                       ; preds = %if.else220
  %100 = load %struct.zzzz*, %struct.zzzz** %aa, align 8
  %name226 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %100, i32 0, i32 0
  %101 = load i8*, i8** %name226, align 8
  call void @redundant(i8* %101)
  br label %if.end265

if.else227:                                       ; preds = %if.else220
  %102 = load %struct.zzzz*, %struct.zzzz** %aa, align 8
  %name228 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %102, i32 0, i32 0
  %103 = load i8*, i8** %name228, align 8
  %call229 = call i32 @strcmp(i8* %103, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0)) #9
  %cmp230 = icmp eq i32 %call229, 0
  br i1 %cmp230, label %if.then232, label %if.else233

if.then232:                                       ; preds = %if.else227
  store i32 1, i32* @blockSize100k, align 4
  br label %if.end264

if.else233:                                       ; preds = %if.else227
  %104 = load %struct.zzzz*, %struct.zzzz** %aa, align 8
  %name234 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %104, i32 0, i32 0
  %105 = load i8*, i8** %name234, align 8
  %call235 = call i32 @strcmp(i8* %105, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0)) #9
  %cmp236 = icmp eq i32 %call235, 0
  br i1 %cmp236, label %if.then238, label %if.else239

if.then238:                                       ; preds = %if.else233
  store i32 9, i32* @blockSize100k, align 4
  br label %if.end263

if.else239:                                       ; preds = %if.else233
  %106 = load %struct.zzzz*, %struct.zzzz** %aa, align 8
  %name240 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %106, i32 0, i32 0
  %107 = load i8*, i8** %name240, align 8
  %call241 = call i32 @strcmp(i8* %107, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i64 0, i64 0)) #9
  %cmp242 = icmp eq i32 %call241, 0
  br i1 %cmp242, label %if.then244, label %if.else246

if.then244:                                       ; preds = %if.else239
  %108 = load i32, i32* @verbosity, align 4
  %inc245 = add nsw i32 %108, 1
  store i32 %inc245, i32* @verbosity, align 4
  br label %if.end262

if.else246:                                       ; preds = %if.else239
  %109 = load %struct.zzzz*, %struct.zzzz** %aa, align 8
  %name247 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %109, i32 0, i32 0
  %110 = load i8*, i8** %name247, align 8
  %call248 = call i32 @strcmp(i8* %110, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i64 0, i64 0)) #9
  %cmp249 = icmp eq i32 %call248, 0
  br i1 %cmp249, label %if.then251, label %if.else252

if.then251:                                       ; preds = %if.else246
  %111 = load i8*, i8** @progName, align 8
  call void @usage(i8* %111)
  call void @exit(i32 0) #10
  unreachable

if.else252:                                       ; preds = %if.else246
  %112 = load %struct.zzzz*, %struct.zzzz** %aa, align 8
  %name253 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %112, i32 0, i32 0
  %113 = load i8*, i8** %name253, align 8
  %call254 = call i32 @strncmp(i8* %113, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i64 2) #9
  %cmp255 = icmp eq i32 %call254, 0
  br i1 %cmp255, label %if.then257, label %if.end260

if.then257:                                       ; preds = %if.else252
  %114 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %115 = load i8*, i8** @progName, align 8
  %116 = load %struct.zzzz*, %struct.zzzz** %aa, align 8
  %name258 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %116, i32 0, i32 0
  %117 = load i8*, i8** %name258, align 8
  %call259 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %114, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0), i8* %115, i8* %117)
  %118 = load i8*, i8** @progName, align 8
  call void @usage(i8* %118)
  call void @exit(i32 1) #10
  unreachable

if.end260:                                        ; preds = %if.else252
  br label %if.end261

if.end261:                                        ; preds = %if.end260
  br label %if.end262

if.end262:                                        ; preds = %if.end261, %if.then244
  br label %if.end263

if.end263:                                        ; preds = %if.end262, %if.then238
  br label %if.end264

if.end264:                                        ; preds = %if.end263, %if.then232
  br label %if.end265

if.end265:                                        ; preds = %if.end264, %if.then225
  br label %if.end266

if.end266:                                        ; preds = %if.end265, %if.then218
  br label %if.end267

if.end267:                                        ; preds = %if.end266, %if.then212
  br label %if.end268

if.end268:                                        ; preds = %if.end267, %if.then206
  br label %if.end269

if.end269:                                        ; preds = %if.end268, %if.then200
  br label %if.end270

if.end270:                                        ; preds = %if.end269, %if.then194
  br label %if.end271

if.end271:                                        ; preds = %if.end270, %if.then188
  br label %if.end272

if.end272:                                        ; preds = %if.end271, %if.then182
  br label %if.end273

if.end273:                                        ; preds = %if.end272, %if.then176
  br label %if.end274

if.end274:                                        ; preds = %if.end273, %if.then170
  br label %if.end275

if.end275:                                        ; preds = %if.end274, %if.then164
  br label %if.end276

if.end276:                                        ; preds = %if.end275, %if.then158
  br label %if.end277

if.end277:                                        ; preds = %if.end276, %if.then152
  br label %for.inc278

for.inc278:                                       ; preds = %if.end277
  %119 = load %struct.zzzz*, %struct.zzzz** %aa, align 8
  %link279 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %119, i32 0, i32 1
  %120 = load %struct.zzzz*, %struct.zzzz** %link279, align 8
  store %struct.zzzz* %120, %struct.zzzz** %aa, align 8
  br label %for.cond138

for.end280:                                       ; preds = %if.then146, %for.cond138
  %121 = load i32, i32* @verbosity, align 4
  %cmp281 = icmp sgt i32 %121, 4
  br i1 %cmp281, label %if.then283, label %if.end284

if.then283:                                       ; preds = %for.end280
  store i32 4, i32* @verbosity, align 4
  br label %if.end284

if.end284:                                        ; preds = %if.then283, %for.end280
  %122 = load i32, i32* @opMode, align 4
  %cmp285 = icmp eq i32 %122, 1
  br i1 %cmp285, label %land.lhs.true287, label %if.end294

land.lhs.true287:                                 ; preds = %if.end284
  %123 = load i8, i8* @smallMode, align 1
  %conv288 = zext i8 %123 to i32
  %tobool289 = icmp ne i32 %conv288, 0
  br i1 %tobool289, label %land.lhs.true290, label %if.end294

land.lhs.true290:                                 ; preds = %land.lhs.true287
  %124 = load i32, i32* @blockSize100k, align 4
  %cmp291 = icmp sgt i32 %124, 2
  br i1 %cmp291, label %if.then293, label %if.end294

if.then293:                                       ; preds = %land.lhs.true290
  store i32 2, i32* @blockSize100k, align 4
  br label %if.end294

if.end294:                                        ; preds = %if.then293, %land.lhs.true290, %land.lhs.true287, %if.end284
  %125 = load i32, i32* @opMode, align 4
  %cmp295 = icmp eq i32 %125, 3
  br i1 %cmp295, label %land.lhs.true297, label %if.end302

land.lhs.true297:                                 ; preds = %if.end294
  %126 = load i32, i32* @srcMode, align 4
  %cmp298 = icmp eq i32 %126, 2
  br i1 %cmp298, label %if.then300, label %if.end302

if.then300:                                       ; preds = %land.lhs.true297
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %128 = load i8*, i8** @progName, align 8
  %call301 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %127, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.34, i64 0, i64 0), i8* %128)
  call void @exit(i32 1) #10
  unreachable

if.end302:                                        ; preds = %land.lhs.true297, %if.end294
  %129 = load i32, i32* @srcMode, align 4
  %cmp303 = icmp eq i32 %129, 2
  br i1 %cmp303, label %land.lhs.true305, label %if.end309

land.lhs.true305:                                 ; preds = %if.end302
  %130 = load i32, i32* @numFileNames, align 4
  %cmp306 = icmp eq i32 %130, 0
  br i1 %cmp306, label %if.then308, label %if.end309

if.then308:                                       ; preds = %land.lhs.true305
  store i32 1, i32* @srcMode, align 4
  br label %if.end309

if.end309:                                        ; preds = %if.then308, %land.lhs.true305, %if.end302
  %131 = load i32, i32* @opMode, align 4
  %cmp310 = icmp ne i32 %131, 1
  br i1 %cmp310, label %if.then312, label %if.end313

if.then312:                                       ; preds = %if.end309
  store i32 0, i32* @blockSize100k, align 4
  br label %if.end313

if.end313:                                        ; preds = %if.then312, %if.end309
  %132 = load i32, i32* @srcMode, align 4
  %cmp314 = icmp eq i32 %132, 3
  br i1 %cmp314, label %if.then316, label %if.end320

if.then316:                                       ; preds = %if.end313
  %call317 = call void (i32)* @signal(i32 2, void (i32)* @mySignalCatcher) #8
  %call318 = call void (i32)* @signal(i32 15, void (i32)* @mySignalCatcher) #8
  %call319 = call void (i32)* @signal(i32 1, void (i32)* @mySignalCatcher) #8
  br label %if.end320

if.end320:                                        ; preds = %if.then316, %if.end313
  %133 = load i32, i32* @opMode, align 4
  %cmp321 = icmp eq i32 %133, 1
  br i1 %cmp321, label %if.then323, label %if.else354

if.then323:                                       ; preds = %if.end320
  %134 = load i32, i32* @srcMode, align 4
  %cmp324 = icmp eq i32 %134, 1
  br i1 %cmp324, label %if.then326, label %if.else327

if.then326:                                       ; preds = %if.then323
  call void @compress(i8* null)
  br label %if.end353

if.else327:                                       ; preds = %if.then323
  store i8 1, i8* %decode, align 1
  %135 = load %struct.zzzz*, %struct.zzzz** %argList, align 8
  store %struct.zzzz* %135, %struct.zzzz** %aa, align 8
  br label %for.cond328

for.cond328:                                      ; preds = %for.inc350, %if.else327
  %136 = load %struct.zzzz*, %struct.zzzz** %aa, align 8
  %cmp329 = icmp ne %struct.zzzz* %136, null
  br i1 %cmp329, label %for.body331, label %for.end352

for.body331:                                      ; preds = %for.cond328
  %137 = load %struct.zzzz*, %struct.zzzz** %aa, align 8
  %name332 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %137, i32 0, i32 0
  %138 = load i8*, i8** %name332, align 8
  %call333 = call i32 @strcmp(i8* %138, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0)) #9
  %cmp334 = icmp eq i32 %call333, 0
  br i1 %cmp334, label %if.then336, label %if.end337

if.then336:                                       ; preds = %for.body331
  store i8 0, i8* %decode, align 1
  br label %for.inc350

if.end337:                                        ; preds = %for.body331
  %139 = load %struct.zzzz*, %struct.zzzz** %aa, align 8
  %name338 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %139, i32 0, i32 0
  %140 = load i8*, i8** %name338, align 8
  %arrayidx339 = getelementptr inbounds i8, i8* %140, i64 0
  %141 = load i8, i8* %arrayidx339, align 1
  %conv340 = sext i8 %141 to i32
  %cmp341 = icmp eq i32 %conv340, 45
  br i1 %cmp341, label %land.lhs.true343, label %if.end347

land.lhs.true343:                                 ; preds = %if.end337
  %142 = load i8, i8* %decode, align 1
  %conv344 = zext i8 %142 to i32
  %tobool345 = icmp ne i32 %conv344, 0
  br i1 %tobool345, label %if.then346, label %if.end347

if.then346:                                       ; preds = %land.lhs.true343
  br label %for.inc350

if.end347:                                        ; preds = %land.lhs.true343, %if.end337
  %143 = load i32, i32* @numFilesProcessed, align 4
  %inc348 = add nsw i32 %143, 1
  store i32 %inc348, i32* @numFilesProcessed, align 4
  %144 = load %struct.zzzz*, %struct.zzzz** %aa, align 8
  %name349 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %144, i32 0, i32 0
  %145 = load i8*, i8** %name349, align 8
  call void @compress(i8* %145)
  br label %for.inc350

for.inc350:                                       ; preds = %if.end347, %if.then346, %if.then336
  %146 = load %struct.zzzz*, %struct.zzzz** %aa, align 8
  %link351 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %146, i32 0, i32 1
  %147 = load %struct.zzzz*, %struct.zzzz** %link351, align 8
  store %struct.zzzz* %147, %struct.zzzz** %aa, align 8
  br label %for.cond328

for.end352:                                       ; preds = %for.cond328
  br label %if.end353

if.end353:                                        ; preds = %for.end352, %if.then326
  br label %if.end431

if.else354:                                       ; preds = %if.end320
  %148 = load i32, i32* @opMode, align 4
  %cmp355 = icmp eq i32 %148, 2
  br i1 %cmp355, label %if.then357, label %if.else391

if.then357:                                       ; preds = %if.else354
  store i8 0, i8* @unzFailsExist, align 1
  %149 = load i32, i32* @srcMode, align 4
  %cmp358 = icmp eq i32 %149, 1
  br i1 %cmp358, label %if.then360, label %if.else361

if.then360:                                       ; preds = %if.then357
  call void @uncompress(i8* null)
  br label %if.end387

if.else361:                                       ; preds = %if.then357
  store i8 1, i8* %decode, align 1
  %150 = load %struct.zzzz*, %struct.zzzz** %argList, align 8
  store %struct.zzzz* %150, %struct.zzzz** %aa, align 8
  br label %for.cond362

for.cond362:                                      ; preds = %for.inc384, %if.else361
  %151 = load %struct.zzzz*, %struct.zzzz** %aa, align 8
  %cmp363 = icmp ne %struct.zzzz* %151, null
  br i1 %cmp363, label %for.body365, label %for.end386

for.body365:                                      ; preds = %for.cond362
  %152 = load %struct.zzzz*, %struct.zzzz** %aa, align 8
  %name366 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %152, i32 0, i32 0
  %153 = load i8*, i8** %name366, align 8
  %call367 = call i32 @strcmp(i8* %153, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0)) #9
  %cmp368 = icmp eq i32 %call367, 0
  br i1 %cmp368, label %if.then370, label %if.end371

if.then370:                                       ; preds = %for.body365
  store i8 0, i8* %decode, align 1
  br label %for.inc384

if.end371:                                        ; preds = %for.body365
  %154 = load %struct.zzzz*, %struct.zzzz** %aa, align 8
  %name372 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %154, i32 0, i32 0
  %155 = load i8*, i8** %name372, align 8
  %arrayidx373 = getelementptr inbounds i8, i8* %155, i64 0
  %156 = load i8, i8* %arrayidx373, align 1
  %conv374 = sext i8 %156 to i32
  %cmp375 = icmp eq i32 %conv374, 45
  br i1 %cmp375, label %land.lhs.true377, label %if.end381

land.lhs.true377:                                 ; preds = %if.end371
  %157 = load i8, i8* %decode, align 1
  %conv378 = zext i8 %157 to i32
  %tobool379 = icmp ne i32 %conv378, 0
  br i1 %tobool379, label %if.then380, label %if.end381

if.then380:                                       ; preds = %land.lhs.true377
  br label %for.inc384

if.end381:                                        ; preds = %land.lhs.true377, %if.end371
  %158 = load i32, i32* @numFilesProcessed, align 4
  %inc382 = add nsw i32 %158, 1
  store i32 %inc382, i32* @numFilesProcessed, align 4
  %159 = load %struct.zzzz*, %struct.zzzz** %aa, align 8
  %name383 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %159, i32 0, i32 0
  %160 = load i8*, i8** %name383, align 8
  call void @uncompress(i8* %160)
  br label %for.inc384

for.inc384:                                       ; preds = %if.end381, %if.then380, %if.then370
  %161 = load %struct.zzzz*, %struct.zzzz** %aa, align 8
  %link385 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %161, i32 0, i32 1
  %162 = load %struct.zzzz*, %struct.zzzz** %link385, align 8
  store %struct.zzzz* %162, %struct.zzzz** %aa, align 8
  br label %for.cond362

for.end386:                                       ; preds = %for.cond362
  br label %if.end387

if.end387:                                        ; preds = %for.end386, %if.then360
  %163 = load i8, i8* @unzFailsExist, align 1
  %tobool388 = icmp ne i8 %163, 0
  br i1 %tobool388, label %if.then389, label %if.end390

if.then389:                                       ; preds = %if.end387
  call void @setExit(i32 2)
  %164 = load i32, i32* @exitValue, align 4
  call void @exit(i32 %164) #10
  unreachable

if.end390:                                        ; preds = %if.end387
  br label %if.end430

if.else391:                                       ; preds = %if.else354
  store i8 0, i8* @testFailsExist, align 1
  %165 = load i32, i32* @srcMode, align 4
  %cmp392 = icmp eq i32 %165, 1
  br i1 %cmp392, label %if.then394, label %if.else395

if.then394:                                       ; preds = %if.else391
  call void @testf(i8* null)
  br label %if.end421

if.else395:                                       ; preds = %if.else391
  store i8 1, i8* %decode, align 1
  %166 = load %struct.zzzz*, %struct.zzzz** %argList, align 8
  store %struct.zzzz* %166, %struct.zzzz** %aa, align 8
  br label %for.cond396

for.cond396:                                      ; preds = %for.inc418, %if.else395
  %167 = load %struct.zzzz*, %struct.zzzz** %aa, align 8
  %cmp397 = icmp ne %struct.zzzz* %167, null
  br i1 %cmp397, label %for.body399, label %for.end420

for.body399:                                      ; preds = %for.cond396
  %168 = load %struct.zzzz*, %struct.zzzz** %aa, align 8
  %name400 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %168, i32 0, i32 0
  %169 = load i8*, i8** %name400, align 8
  %call401 = call i32 @strcmp(i8* %169, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0)) #9
  %cmp402 = icmp eq i32 %call401, 0
  br i1 %cmp402, label %if.then404, label %if.end405

if.then404:                                       ; preds = %for.body399
  store i8 0, i8* %decode, align 1
  br label %for.inc418

if.end405:                                        ; preds = %for.body399
  %170 = load %struct.zzzz*, %struct.zzzz** %aa, align 8
  %name406 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %170, i32 0, i32 0
  %171 = load i8*, i8** %name406, align 8
  %arrayidx407 = getelementptr inbounds i8, i8* %171, i64 0
  %172 = load i8, i8* %arrayidx407, align 1
  %conv408 = sext i8 %172 to i32
  %cmp409 = icmp eq i32 %conv408, 45
  br i1 %cmp409, label %land.lhs.true411, label %if.end415

land.lhs.true411:                                 ; preds = %if.end405
  %173 = load i8, i8* %decode, align 1
  %conv412 = zext i8 %173 to i32
  %tobool413 = icmp ne i32 %conv412, 0
  br i1 %tobool413, label %if.then414, label %if.end415

if.then414:                                       ; preds = %land.lhs.true411
  br label %for.inc418

if.end415:                                        ; preds = %land.lhs.true411, %if.end405
  %174 = load i32, i32* @numFilesProcessed, align 4
  %inc416 = add nsw i32 %174, 1
  store i32 %inc416, i32* @numFilesProcessed, align 4
  %175 = load %struct.zzzz*, %struct.zzzz** %aa, align 8
  %name417 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %175, i32 0, i32 0
  %176 = load i8*, i8** %name417, align 8
  call void @testf(i8* %176)
  br label %for.inc418

for.inc418:                                       ; preds = %if.end415, %if.then414, %if.then404
  %177 = load %struct.zzzz*, %struct.zzzz** %aa, align 8
  %link419 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %177, i32 0, i32 1
  %178 = load %struct.zzzz*, %struct.zzzz** %link419, align 8
  store %struct.zzzz* %178, %struct.zzzz** %aa, align 8
  br label %for.cond396

for.end420:                                       ; preds = %for.cond396
  br label %if.end421

if.end421:                                        ; preds = %for.end420, %if.then394
  %179 = load i8, i8* @testFailsExist, align 1
  %conv422 = zext i8 %179 to i32
  %tobool423 = icmp ne i32 %conv422, 0
  br i1 %tobool423, label %land.lhs.true424, label %if.end429

land.lhs.true424:                                 ; preds = %if.end421
  %180 = load i8, i8* @noisy, align 1
  %conv425 = zext i8 %180 to i32
  %tobool426 = icmp ne i32 %conv425, 0
  br i1 %tobool426, label %if.then427, label %if.end429

if.then427:                                       ; preds = %land.lhs.true424
  %181 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call428 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %181, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.35, i64 0, i64 0))
  call void @setExit(i32 2)
  %182 = load i32, i32* @exitValue, align 4
  call void @exit(i32 %182) #10
  unreachable

if.end429:                                        ; preds = %land.lhs.true424, %if.end421
  br label %if.end430

if.end430:                                        ; preds = %if.end429, %if.end390
  br label %if.end431

if.end431:                                        ; preds = %if.end430, %if.end353
  %183 = load %struct.zzzz*, %struct.zzzz** %argList, align 8
  store %struct.zzzz* %183, %struct.zzzz** %aa, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end440, %if.end431
  %184 = load %struct.zzzz*, %struct.zzzz** %aa, align 8
  %cmp432 = icmp ne %struct.zzzz* %184, null
  br i1 %cmp432, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %185 = load %struct.zzzz*, %struct.zzzz** %aa, align 8
  %link434 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %185, i32 0, i32 1
  %186 = load %struct.zzzz*, %struct.zzzz** %link434, align 8
  store %struct.zzzz* %186, %struct.zzzz** %aa2, align 8
  %187 = load %struct.zzzz*, %struct.zzzz** %aa, align 8
  %name435 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %187, i32 0, i32 0
  %188 = load i8*, i8** %name435, align 8
  %cmp436 = icmp ne i8* %188, null
  br i1 %cmp436, label %if.then438, label %if.end440

if.then438:                                       ; preds = %while.body
  %189 = load %struct.zzzz*, %struct.zzzz** %aa, align 8
  %name439 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %189, i32 0, i32 0
  %190 = load i8*, i8** %name439, align 8
  call void @free(i8* %190) #8
  br label %if.end440

if.end440:                                        ; preds = %if.then438, %while.body
  %191 = load %struct.zzzz*, %struct.zzzz** %aa, align 8
  %192 = bitcast %struct.zzzz* %191 to i8*
  call void @free(i8* %192) #8
  %193 = load %struct.zzzz*, %struct.zzzz** %aa2, align 8
  store %struct.zzzz* %193, %struct.zzzz** %aa, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %194 = load i32, i32* @exitValue, align 4
  ret i32 %194
}

; Function Attrs: nounwind
declare dso_local void (i32)* @signal(i32, void (i32)*) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mySIGSEGVorSIGBUScatcher(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* @opMode, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load i8*, i8** @progName, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([869 x i8], [869 x i8]* @.str.36, i64 0, i64 0), i8* %2)
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i8*, i8** @progName, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([996 x i8], [996 x i8]* @.str.37, i64 0, i64 0), i8* %4)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @showFileNames()
  %5 = load i32, i32* @opMode, align 4
  %cmp2 = icmp eq i32 %5, 1
  br i1 %cmp2, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.end
  call void @cleanUpAndFail(i32 3) #11
  unreachable

if.else4:                                         ; preds = %if.end
  call void @cadvise()
  call void @cleanUpAndFail(i32 2) #11
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copyFileName(i8* %to, i8* %from) #0 {
entry:
  %to.addr = alloca i8*, align 8
  %from.addr = alloca i8*, align 8
  store i8* %to, i8** %to.addr, align 8
  store i8* %from, i8** %from.addr, align 8
  %0 = load i8*, i8** %from.addr, align 8
  %call = call i64 @strlen(i8* %0) #9
  %cmp = icmp ugt i64 %call, 1024
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load i8*, i8** %from.addr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.47, i64 0, i64 0), i8* %2, i32 1024)
  call void @setExit(i32 1)
  %3 = load i32, i32* @exitValue, align 4
  call void @exit(i32 %3) #10
  unreachable

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %to.addr, align 8
  %5 = load i8*, i8** %from.addr, align 8
  %call2 = call i8* @strncpy(i8* %4, i8* %5, i64 1024) #8
  %6 = load i8*, i8** %to.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 1024
  store i8 0, i8* %arrayidx, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addFlagsFromEnvVar(%struct.zzzz** %argList, i8* %varName) #0 {
entry:
  %argList.addr = alloca %struct.zzzz**, align 8
  %varName.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %envbase = alloca i8*, align 8
  %p = alloca i8*, align 8
  store %struct.zzzz** %argList, %struct.zzzz*** %argList.addr, align 8
  store i8* %varName, i8** %varName.addr, align 8
  %0 = load i8*, i8** %varName.addr, align 8
  %call = call i8* @getenv(i8* %0) #8
  store i8* %call, i8** %envbase, align 8
  %1 = load i8*, i8** %envbase, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then, label %if.end48

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %envbase, align 8
  store i8* %2, i8** %p, align 8
  store i32 0, i32* %i, align 4
  br label %while.body

while.body:                                       ; preds = %if.then, %if.end46
  %3 = load i8*, i8** %p, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %5 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then3, label %if.end

if.then3:                                         ; preds = %while.body
  br label %while.end47

if.end:                                           ; preds = %while.body
  %6 = load i32, i32* %i, align 4
  %7 = load i8*, i8** %p, align 8
  %idx.ext = sext i32 %6 to i64
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %idx.ext
  store i8* %add.ptr, i8** %p, align 8
  store i32 0, i32* %i, align 4
  br label %while.cond4

while.cond4:                                      ; preds = %while.body11, %if.end
  %call5 = call i16** @__ctype_b_loc() #12
  %8 = load i16*, i16** %call5, align 8
  %9 = load i8*, i8** %p, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %9, i64 0
  %10 = load i8, i8* %arrayidx6, align 1
  %conv7 = sext i8 %10 to i32
  %idxprom8 = sext i32 %conv7 to i64
  %arrayidx9 = getelementptr inbounds i16, i16* %8, i64 %idxprom8
  %11 = load i16, i16* %arrayidx9, align 2
  %conv10 = zext i16 %11 to i32
  %and = and i32 %conv10, 8192
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %while.body11, label %while.end

while.body11:                                     ; preds = %while.cond4
  %12 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %while.cond4

while.end:                                        ; preds = %while.cond4
  br label %while.cond12

while.cond12:                                     ; preds = %while.body27, %while.end
  %13 = load i8*, i8** %p, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %14 to i64
  %arrayidx14 = getelementptr inbounds i8, i8* %13, i64 %idxprom13
  %15 = load i8, i8* %arrayidx14, align 1
  %conv15 = sext i8 %15 to i32
  %cmp16 = icmp ne i32 %conv15, 0
  br i1 %cmp16, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond12
  %call18 = call i16** @__ctype_b_loc() #12
  %16 = load i16*, i16** %call18, align 8
  %17 = load i8*, i8** %p, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %18 to i64
  %arrayidx20 = getelementptr inbounds i8, i8* %17, i64 %idxprom19
  %19 = load i8, i8* %arrayidx20, align 1
  %conv21 = sext i8 %19 to i32
  %idxprom22 = sext i32 %conv21 to i64
  %arrayidx23 = getelementptr inbounds i16, i16* %16, i64 %idxprom22
  %20 = load i16, i16* %arrayidx23, align 2
  %conv24 = zext i16 %20 to i32
  %and25 = and i32 %conv24, 8192
  %tobool26 = icmp ne i32 %and25, 0
  %lnot = xor i1 %tobool26, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond12
  %21 = phi i1 [ false, %while.cond12 ], [ %lnot, %land.rhs ]
  br i1 %21, label %while.body27, label %while.end28

while.body27:                                     ; preds = %land.end
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %while.cond12

while.end28:                                      ; preds = %land.end
  %23 = load i32, i32* %i, align 4
  %cmp29 = icmp sgt i32 %23, 0
  br i1 %cmp29, label %if.then31, label %if.end46

if.then31:                                        ; preds = %while.end28
  %24 = load i32, i32* %i, align 4
  store i32 %24, i32* %k, align 4
  %25 = load i32, i32* %k, align 4
  %cmp32 = icmp sgt i32 %25, 1024
  br i1 %cmp32, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.then31
  store i32 1024, i32* %k, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.then31
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end35
  %26 = load i32, i32* %j, align 4
  %27 = load i32, i32* %k, align 4
  %cmp36 = icmp slt i32 %26, %27
  br i1 %cmp36, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load i8*, i8** %p, align 8
  %29 = load i32, i32* %j, align 4
  %idxprom38 = sext i32 %29 to i64
  %arrayidx39 = getelementptr inbounds i8, i8* %28, i64 %idxprom38
  %30 = load i8, i8* %arrayidx39, align 1
  %31 = load i32, i32* %j, align 4
  %idxprom40 = sext i32 %31 to i64
  %arrayidx41 = getelementptr inbounds [1034 x i8], [1034 x i8]* @tmpName, i64 0, i64 %idxprom40
  store i8 %30, i8* %arrayidx41, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load i32, i32* %j, align 4
  %inc42 = add nsw i32 %32, 1
  store i32 %inc42, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %33 = load i32, i32* %k, align 4
  %idxprom43 = sext i32 %33 to i64
  %arrayidx44 = getelementptr inbounds [1034 x i8], [1034 x i8]* @tmpName, i64 0, i64 %idxprom43
  store i8 0, i8* %arrayidx44, align 1
  %34 = load %struct.zzzz**, %struct.zzzz*** %argList.addr, align 8
  %35 = load %struct.zzzz*, %struct.zzzz** %34, align 8
  %call45 = call %struct.zzzz* @snocString(%struct.zzzz* %35, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @tmpName, i64 0, i64 0))
  %36 = load %struct.zzzz**, %struct.zzzz*** %argList.addr, align 8
  store %struct.zzzz* %call45, %struct.zzzz** %36, align 8
  br label %if.end46

if.end46:                                         ; preds = %for.end, %while.end28
  br label %while.body

while.end47:                                      ; preds = %if.then3
  br label %if.end48

if.end48:                                         ; preds = %while.end47, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.zzzz* @snocString(%struct.zzzz* %root, i8* %name) #0 {
entry:
  %retval = alloca %struct.zzzz*, align 8
  %root.addr = alloca %struct.zzzz*, align 8
  %name.addr = alloca i8*, align 8
  %tmp = alloca %struct.zzzz*, align 8
  %tmp6 = alloca %struct.zzzz*, align 8
  store %struct.zzzz* %root, %struct.zzzz** %root.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load %struct.zzzz*, %struct.zzzz** %root.addr, align 8
  %cmp = icmp eq %struct.zzzz* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call %struct.zzzz* @mkCell()
  store %struct.zzzz* %call, %struct.zzzz** %tmp, align 8
  %1 = load i8*, i8** %name.addr, align 8
  %call1 = call i64 @strlen(i8* %1) #9
  %add = add i64 5, %call1
  %conv = trunc i64 %add to i32
  %call2 = call i8* @myMalloc(i32 %conv)
  %2 = load %struct.zzzz*, %struct.zzzz** %tmp, align 8
  %name3 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %2, i32 0, i32 0
  store i8* %call2, i8** %name3, align 8
  %3 = load %struct.zzzz*, %struct.zzzz** %tmp, align 8
  %name4 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %3, i32 0, i32 0
  %4 = load i8*, i8** %name4, align 8
  %5 = load i8*, i8** %name.addr, align 8
  %call5 = call i8* @strcpy(i8* %4, i8* %5) #8
  %6 = load %struct.zzzz*, %struct.zzzz** %tmp, align 8
  store %struct.zzzz* %6, %struct.zzzz** %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %7 = load %struct.zzzz*, %struct.zzzz** %root.addr, align 8
  store %struct.zzzz* %7, %struct.zzzz** %tmp6, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %8 = load %struct.zzzz*, %struct.zzzz** %tmp6, align 8
  %link = getelementptr inbounds %struct.zzzz, %struct.zzzz* %8, i32 0, i32 1
  %9 = load %struct.zzzz*, %struct.zzzz** %link, align 8
  %cmp7 = icmp ne %struct.zzzz* %9, null
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load %struct.zzzz*, %struct.zzzz** %tmp6, align 8
  %link9 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %10, i32 0, i32 1
  %11 = load %struct.zzzz*, %struct.zzzz** %link9, align 8
  store %struct.zzzz* %11, %struct.zzzz** %tmp6, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %12 = load %struct.zzzz*, %struct.zzzz** %tmp6, align 8
  %link10 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %12, i32 0, i32 1
  %13 = load %struct.zzzz*, %struct.zzzz** %link10, align 8
  %14 = load i8*, i8** %name.addr, align 8
  %call11 = call %struct.zzzz* @snocString(%struct.zzzz* %13, i8* %14)
  %15 = load %struct.zzzz*, %struct.zzzz** %tmp6, align 8
  %link12 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %15, i32 0, i32 1
  store %struct.zzzz* %call11, %struct.zzzz** %link12, align 8
  %16 = load %struct.zzzz*, %struct.zzzz** %root.addr, align 8
  store %struct.zzzz* %16, %struct.zzzz** %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then
  %17 = load %struct.zzzz*, %struct.zzzz** %retval, align 8
  ret %struct.zzzz* %17
}

; Function Attrs: nounwind readonly
declare dso_local i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #3

; Function Attrs: nounwind readonly
declare dso_local i8* @strstr(i8*, i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @license() #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i8* @BZ2_bzlibVersion()
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([529 x i8], [529 x i8]* @.str.49, i64 0, i64 0), i8* %call)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage(i8* %fullProgName) #0 {
entry:
  %fullProgName.addr = alloca i8*, align 8
  store i8* %fullProgName, i8** %fullProgName.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i8* @BZ2_bzlibVersion()
  %1 = load i8*, i8** %fullProgName.addr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([1230 x i8], [1230 x i8]* @.str.50, i64 0, i64 0), i8* %call, i8* %1)
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #4

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @redundant(i8* %flag) #0 {
entry:
  %flag.addr = alloca i8*, align 8
  store i8* %flag, i8** %flag.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1 = load i8*, i8** @progName, align 8
  %2 = load i8*, i8** %flag.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.51, i64 0, i64 0), i8* %1, i8* %2)
  ret void
}

; Function Attrs: nounwind readonly
declare dso_local i32 @strncmp(i8*, i8*, i64) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mySignalCatcher(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1 = load i8*, i8** @progName, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.52, i64 0, i64 0), i8* %1)
  call void @cleanUpAndFail(i32 1) #11
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compress(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %inStr = alloca %struct._IO_FILE*, align 8
  %outStr = alloca %struct._IO_FILE*, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %statBuf = alloca %struct.stat, align 8
  %retVal = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i8 0, i8* @deleteOutputOnInterrupt, align 1
  %0 = load i8*, i8** %name.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* @srcMode, align 4
  %cmp1 = icmp ne i32 %1, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @panic(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.53, i64 0, i64 0)) #11
  unreachable

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load i32, i32* @srcMode, align 4
  switch i32 %2, label %sw.epilog [
    i32 1, label %sw.bb
    i32 3, label %sw.bb2
    i32 2, label %sw.bb3
  ]

sw.bb:                                            ; preds = %if.end
  call void @copyFileName(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i64 0, i64 0))
  call void @copyFileName(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i64 0, i64 0))
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  %3 = load i8*, i8** %name.addr, align 8
  call void @copyFileName(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i64 0, i64 0), i8* %3)
  %4 = load i8*, i8** %name.addr, align 8
  call void @copyFileName(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i64 0, i64 0), i8* %4)
  %call = call i8* @strcat(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)) #8
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  %5 = load i8*, i8** %name.addr, align 8
  call void @copyFileName(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i64 0, i64 0), i8* %5)
  call void @copyFileName(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i64 0, i64 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb3, %sw.bb2, %sw.bb
  %6 = load i32, i32* @srcMode, align 4
  %cmp4 = icmp ne i32 %6, 1
  br i1 %cmp4, label %land.lhs.true5, label %if.end12

land.lhs.true5:                                   ; preds = %sw.epilog
  %call6 = call zeroext i8 @containsDubiousChars(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i64 0, i64 0))
  %conv = zext i8 %call6 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %if.then7, label %if.end12

if.then7:                                         ; preds = %land.lhs.true5
  %7 = load i8, i8* @noisy, align 1
  %tobool8 = icmp ne i8 %7, 0
  br i1 %tobool8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.then7
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = load i8*, i8** @progName, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.56, i64 0, i64 0), i8* %9, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i64 0, i64 0))
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.then7
  call void @setExit(i32 1)
  br label %return

if.end12:                                         ; preds = %land.lhs.true5, %sw.epilog
  %10 = load i32, i32* @srcMode, align 4
  %cmp13 = icmp ne i32 %10, 1
  br i1 %cmp13, label %land.lhs.true15, label %if.end22

land.lhs.true15:                                  ; preds = %if.end12
  %call16 = call zeroext i8 @fileExists(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i64 0, i64 0))
  %tobool17 = icmp ne i8 %call16, 0
  br i1 %tobool17, label %if.end22, label %if.then18

if.then18:                                        ; preds = %land.lhs.true15
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %12 = load i8*, i8** @progName, align 8
  %call19 = call i32* @__errno_location() #12
  %13 = load i32, i32* %call19, align 4
  %call20 = call i8* @strerror(i32 %13) #8
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.57, i64 0, i64 0), i8* %12, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i64 0, i64 0), i8* %call20)
  call void @setExit(i32 1)
  br label %return

if.end22:                                         ; preds = %land.lhs.true15, %if.end12
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end22
  %14 = load i32, i32* %i, align 4
  %cmp23 = icmp slt i32 %14, 4
  br i1 %cmp23, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %i, align 4
  %idxprom = sext i32 %15 to i64
  %arrayidx = getelementptr inbounds [4 x i8*], [4 x i8*]* @zSuffix, i64 0, i64 %idxprom
  %16 = load i8*, i8** %arrayidx, align 8
  %call25 = call zeroext i8 @hasSuffix(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i64 0, i64 0), i8* %16)
  %tobool26 = icmp ne i8 %call25, 0
  br i1 %tobool26, label %if.then27, label %if.end34

if.then27:                                        ; preds = %for.body
  %17 = load i8, i8* @noisy, align 1
  %tobool28 = icmp ne i8 %17, 0
  br i1 %tobool28, label %if.then29, label %if.end33

if.then29:                                        ; preds = %if.then27
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = load i8*, i8** @progName, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %20 to i64
  %arrayidx31 = getelementptr inbounds [4 x i8*], [4 x i8*]* @zSuffix, i64 0, i64 %idxprom30
  %21 = load i8*, i8** %arrayidx31, align 8
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.58, i64 0, i64 0), i8* %19, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i64 0, i64 0), i8* %21)
  br label %if.end33

if.end33:                                         ; preds = %if.then29, %if.then27
  call void @setExit(i32 1)
  br label %return

if.end34:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end34
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load i32, i32* @srcMode, align 4
  %cmp35 = icmp eq i32 %23, 3
  br i1 %cmp35, label %if.then39, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %24 = load i32, i32* @srcMode, align 4
  %cmp37 = icmp eq i32 %24, 2
  br i1 %cmp37, label %if.then39, label %if.end46

if.then39:                                        ; preds = %lor.lhs.false, %for.end
  %call40 = call i32 @stat(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i64 0, i64 0), %struct.stat* %statBuf) #8
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %statBuf, i32 0, i32 3
  %25 = load i32, i32* %st_mode, align 8
  %and = and i32 %25, 61440
  %cmp41 = icmp eq i32 %and, 16384
  br i1 %cmp41, label %if.then43, label %if.end45

if.then43:                                        ; preds = %if.then39
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %27 = load i8*, i8** @progName, align 8
  %call44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.59, i64 0, i64 0), i8* %27, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i64 0, i64 0))
  call void @setExit(i32 1)
  br label %return

if.end45:                                         ; preds = %if.then39
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %lor.lhs.false
  %28 = load i32, i32* @srcMode, align 4
  %cmp47 = icmp eq i32 %28, 3
  br i1 %cmp47, label %land.lhs.true49, label %if.end60

land.lhs.true49:                                  ; preds = %if.end46
  %29 = load i8, i8* @forceOverwrite, align 1
  %tobool50 = icmp ne i8 %29, 0
  br i1 %tobool50, label %if.end60, label %land.lhs.true51

land.lhs.true51:                                  ; preds = %land.lhs.true49
  %call52 = call zeroext i8 @notAStandardFile(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i64 0, i64 0))
  %conv53 = zext i8 %call52 to i32
  %tobool54 = icmp ne i32 %conv53, 0
  br i1 %tobool54, label %if.then55, label %if.end60

if.then55:                                        ; preds = %land.lhs.true51
  %30 = load i8, i8* @noisy, align 1
  %tobool56 = icmp ne i8 %30, 0
  br i1 %tobool56, label %if.then57, label %if.end59

if.then57:                                        ; preds = %if.then55
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %32 = load i8*, i8** @progName, align 8
  %call58 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.60, i64 0, i64 0), i8* %32, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i64 0, i64 0))
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %if.then55
  call void @setExit(i32 1)
  br label %return

if.end60:                                         ; preds = %land.lhs.true51, %land.lhs.true49, %if.end46
  %33 = load i32, i32* @srcMode, align 4
  %cmp61 = icmp eq i32 %33, 3
  br i1 %cmp61, label %land.lhs.true63, label %if.end73

land.lhs.true63:                                  ; preds = %if.end60
  %call64 = call zeroext i8 @fileExists(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i64 0, i64 0))
  %conv65 = zext i8 %call64 to i32
  %tobool66 = icmp ne i32 %conv65, 0
  br i1 %tobool66, label %if.then67, label %if.end73

if.then67:                                        ; preds = %land.lhs.true63
  %34 = load i8, i8* @forceOverwrite, align 1
  %tobool68 = icmp ne i8 %34, 0
  br i1 %tobool68, label %if.then69, label %if.else

if.then69:                                        ; preds = %if.then67
  %call70 = call i32 @remove(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i64 0, i64 0)) #8
  br label %if.end72

if.else:                                          ; preds = %if.then67
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %36 = load i8*, i8** @progName, align 8
  %call71 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.61, i64 0, i64 0), i8* %36, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i64 0, i64 0))
  call void @setExit(i32 1)
  br label %return

if.end72:                                         ; preds = %if.then69
  br label %if.end73

if.end73:                                         ; preds = %if.end72, %land.lhs.true63, %if.end60
  %37 = load i32, i32* @srcMode, align 4
  %cmp74 = icmp eq i32 %37, 3
  br i1 %cmp74, label %land.lhs.true76, label %if.end86

land.lhs.true76:                                  ; preds = %if.end73
  %38 = load i8, i8* @forceOverwrite, align 1
  %tobool77 = icmp ne i8 %38, 0
  br i1 %tobool77, label %if.end86, label %land.lhs.true78

land.lhs.true78:                                  ; preds = %land.lhs.true76
  %call79 = call i32 @countHardLinks(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i64 0, i64 0))
  store i32 %call79, i32* %n, align 4
  %cmp80 = icmp sgt i32 %call79, 0
  br i1 %cmp80, label %if.then82, label %if.end86

if.then82:                                        ; preds = %land.lhs.true78
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %40 = load i8*, i8** @progName, align 8
  %41 = load i32, i32* %n, align 4
  %42 = load i32, i32* %n, align 4
  %cmp83 = icmp sgt i32 %42, 1
  %43 = zext i1 %cmp83 to i64
  %cond = select i1 %cmp83, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %call85 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.62, i64 0, i64 0), i8* %40, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i64 0, i64 0), i32 %41, i8* %cond)
  call void @setExit(i32 1)
  br label %return

if.end86:                                         ; preds = %land.lhs.true78, %land.lhs.true76, %if.end73
  %44 = load i32, i32* @srcMode, align 4
  %cmp87 = icmp eq i32 %44, 3
  br i1 %cmp87, label %if.then89, label %if.end90

if.then89:                                        ; preds = %if.end86
  call void @saveInputFileMetaInfo(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i64 0, i64 0))
  br label %if.end90

if.end90:                                         ; preds = %if.then89, %if.end86
  %45 = load i32, i32* @srcMode, align 4
  switch i32 %45, label %sw.default [
    i32 1, label %sw.bb91
    i32 2, label %sw.bb99
    i32 3, label %sw.bb120
  ]

sw.bb91:                                          ; preds = %if.end90
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  store %struct._IO_FILE* %46, %struct._IO_FILE** %inStr, align 8
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %47, %struct._IO_FILE** %outStr, align 8
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call92 = call i32 @fileno(%struct._IO_FILE* %48) #8
  %call93 = call i32 @isatty(i32 %call92) #8
  %tobool94 = icmp ne i32 %call93, 0
  br i1 %tobool94, label %if.then95, label %if.end98

if.then95:                                        ; preds = %sw.bb91
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %50 = load i8*, i8** @progName, align 8
  %call96 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.64, i64 0, i64 0), i8* %50)
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %52 = load i8*, i8** @progName, align 8
  %53 = load i8*, i8** @progName, align 8
  %call97 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.65, i64 0, i64 0), i8* %52, i8* %53)
  call void @setExit(i32 1)
  br label %return

if.end98:                                         ; preds = %sw.bb91
  br label %sw.epilog147

sw.bb99:                                          ; preds = %if.end90
  %call100 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.66, i64 0, i64 0))
  store %struct._IO_FILE* %call100, %struct._IO_FILE** %inStr, align 8
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %54, %struct._IO_FILE** %outStr, align 8
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call101 = call i32 @fileno(%struct._IO_FILE* %55) #8
  %call102 = call i32 @isatty(i32 %call101) #8
  %tobool103 = icmp ne i32 %call102, 0
  br i1 %tobool103, label %if.then104, label %if.end112

if.then104:                                       ; preds = %sw.bb99
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %57 = load i8*, i8** @progName, align 8
  %call105 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %56, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.64, i64 0, i64 0), i8* %57)
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %59 = load i8*, i8** @progName, align 8
  %60 = load i8*, i8** @progName, align 8
  %call106 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %58, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.65, i64 0, i64 0), i8* %59, i8* %60)
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %inStr, align 8
  %cmp107 = icmp ne %struct._IO_FILE* %61, null
  br i1 %cmp107, label %if.then109, label %if.end111

if.then109:                                       ; preds = %if.then104
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** %inStr, align 8
  %call110 = call i32 @fclose(%struct._IO_FILE* %62)
  br label %if.end111

if.end111:                                        ; preds = %if.then109, %if.then104
  call void @setExit(i32 1)
  br label %return

if.end112:                                        ; preds = %sw.bb99
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** %inStr, align 8
  %cmp113 = icmp eq %struct._IO_FILE* %63, null
  br i1 %cmp113, label %if.then115, label %if.end119

if.then115:                                       ; preds = %if.end112
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %65 = load i8*, i8** @progName, align 8
  %call116 = call i32* @__errno_location() #12
  %66 = load i32, i32* %call116, align 4
  %call117 = call i8* @strerror(i32 %66) #8
  %call118 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %64, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.57, i64 0, i64 0), i8* %65, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i64 0, i64 0), i8* %call117)
  call void @setExit(i32 1)
  br label %return

if.end119:                                        ; preds = %if.end112
  br label %sw.epilog147

sw.bb120:                                         ; preds = %if.end90
  %call121 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.66, i64 0, i64 0))
  store %struct._IO_FILE* %call121, %struct._IO_FILE** %inStr, align 8
  %call122 = call %struct._IO_FILE* @fopen_output_safely(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.67, i64 0, i64 0))
  store %struct._IO_FILE* %call122, %struct._IO_FILE** %outStr, align 8
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %outStr, align 8
  %cmp123 = icmp eq %struct._IO_FILE* %67, null
  br i1 %cmp123, label %if.then125, label %if.end134

if.then125:                                       ; preds = %sw.bb120
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %69 = load i8*, i8** @progName, align 8
  %call126 = call i32* @__errno_location() #12
  %70 = load i32, i32* %call126, align 4
  %call127 = call i8* @strerror(i32 %70) #8
  %call128 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %68, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.68, i64 0, i64 0), i8* %69, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i64 0, i64 0), i8* %call127)
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** %inStr, align 8
  %cmp129 = icmp ne %struct._IO_FILE* %71, null
  br i1 %cmp129, label %if.then131, label %if.end133

if.then131:                                       ; preds = %if.then125
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %inStr, align 8
  %call132 = call i32 @fclose(%struct._IO_FILE* %72)
  br label %if.end133

if.end133:                                        ; preds = %if.then131, %if.then125
  call void @setExit(i32 1)
  br label %return

if.end134:                                        ; preds = %sw.bb120
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** %inStr, align 8
  %cmp135 = icmp eq %struct._IO_FILE* %73, null
  br i1 %cmp135, label %if.then137, label %if.end146

if.then137:                                       ; preds = %if.end134
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %75 = load i8*, i8** @progName, align 8
  %call138 = call i32* @__errno_location() #12
  %76 = load i32, i32* %call138, align 4
  %call139 = call i8* @strerror(i32 %76) #8
  %call140 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %74, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.57, i64 0, i64 0), i8* %75, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i64 0, i64 0), i8* %call139)
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** %outStr, align 8
  %cmp141 = icmp ne %struct._IO_FILE* %77, null
  br i1 %cmp141, label %if.then143, label %if.end145

if.then143:                                       ; preds = %if.then137
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** %outStr, align 8
  %call144 = call i32 @fclose(%struct._IO_FILE* %78)
  br label %if.end145

if.end145:                                        ; preds = %if.then143, %if.then137
  call void @setExit(i32 1)
  br label %return

if.end146:                                        ; preds = %if.end134
  br label %sw.epilog147

sw.default:                                       ; preds = %if.end90
  call void @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.69, i64 0, i64 0)) #11
  unreachable

sw.epilog147:                                     ; preds = %if.end146, %if.end119, %if.end98
  %79 = load i32, i32* @verbosity, align 4
  %cmp148 = icmp sge i32 %79, 1
  br i1 %cmp148, label %if.then150, label %if.end153

if.then150:                                       ; preds = %sw.epilog147
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call151 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %80, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i64 0, i64 0), i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i64 0, i64 0))
  call void @pad(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i64 0, i64 0))
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call152 = call i32 @fflush(%struct._IO_FILE* %81)
  br label %if.end153

if.end153:                                        ; preds = %if.then150, %sw.epilog147
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** %outStr, align 8
  store %struct._IO_FILE* %82, %struct._IO_FILE** @outputHandleJustInCase, align 8
  store i8 1, i8* @deleteOutputOnInterrupt, align 1
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** %inStr, align 8
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** %outStr, align 8
  call void @compressStream(%struct._IO_FILE* %83, %struct._IO_FILE* %84)
  store %struct._IO_FILE* null, %struct._IO_FILE** @outputHandleJustInCase, align 8
  %85 = load i32, i32* @srcMode, align 4
  %cmp154 = icmp eq i32 %85, 3
  br i1 %cmp154, label %if.then156, label %if.end165

if.then156:                                       ; preds = %if.end153
  call void @applySavedMetaInfoToOutputFile(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i64 0, i64 0))
  store i8 0, i8* @deleteOutputOnInterrupt, align 1
  %86 = load i8, i8* @keepInputFiles, align 1
  %tobool157 = icmp ne i8 %86, 0
  br i1 %tobool157, label %if.end164, label %if.then158

if.then158:                                       ; preds = %if.then156
  %call159 = call i32 @remove(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i64 0, i64 0)) #8
  store i32 %call159, i32* %retVal, align 4
  %87 = load i32, i32* %retVal, align 4
  %cmp160 = icmp ne i32 %87, 0
  br i1 %cmp160, label %if.then162, label %if.end163

if.then162:                                       ; preds = %if.then158
  call void @ioError() #11
  unreachable

if.end163:                                        ; preds = %if.then158
  br label %if.end164

if.end164:                                        ; preds = %if.end163, %if.then156
  br label %if.end165

if.end165:                                        ; preds = %if.end164, %if.end153
  store i8 0, i8* @deleteOutputOnInterrupt, align 1
  br label %return

return:                                           ; preds = %if.end165, %if.end145, %if.end133, %if.then115, %if.end111, %if.then95, %if.then82, %if.else, %if.end59, %if.then43, %if.end33, %if.then18, %if.end11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uncompress(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %inStr = alloca %struct._IO_FILE*, align 8
  %outStr = alloca %struct._IO_FILE*, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %magicNumberOK = alloca i8, align 1
  %cantGuess = alloca i8, align 1
  %statBuf = alloca %struct.stat, align 8
  %retVal = alloca i32, align 4
  %retVal168 = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i8 0, i8* @deleteOutputOnInterrupt, align 1
  %0 = load i8*, i8** %name.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* @srcMode, align 4
  %cmp1 = icmp ne i32 %1, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.79, i64 0, i64 0)) #11
  unreachable

if.end:                                           ; preds = %land.lhs.true, %entry
  store i8 0, i8* %cantGuess, align 1
  %2 = load i32, i32* @srcMode, align 4
  switch i32 %2, label %sw.epilog [
    i32 1, label %sw.bb
    i32 3, label %sw.bb2
    i32 2, label %sw.bb9
  ]

sw.bb:                                            ; preds = %if.end
  call void @copyFileName(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i64 0, i64 0))
  call void @copyFileName(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i64 0, i64 0))
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  %3 = load i8*, i8** %name.addr, align 8
  call void @copyFileName(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i64 0, i64 0), i8* %3)
  %4 = load i8*, i8** %name.addr, align 8
  call void @copyFileName(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i64 0, i64 0), i8* %4)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb2
  %5 = load i32, i32* %i, align 4
  %cmp3 = icmp slt i32 %5, 4
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [4 x i8*], [4 x i8*]* @zSuffix, i64 0, i64 %idxprom
  %7 = load i8*, i8** %arrayidx, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [4 x i8*], [4 x i8*]* @unzSuffix, i64 0, i64 %idxprom4
  %9 = load i8*, i8** %arrayidx5, align 8
  %call = call zeroext i8 @mapSuffix(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i64 0, i64 0), i8* %7, i8* %9)
  %tobool = icmp ne i8 %call, 0
  br i1 %tobool, label %if.then6, label %if.end7

if.then6:                                         ; preds = %for.body
  br label %zzz

if.end7:                                          ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end7
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i8 1, i8* %cantGuess, align 1
  %call8 = call i8* @strcat(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.80, i64 0, i64 0)) #8
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end
  %11 = load i8*, i8** %name.addr, align 8
  call void @copyFileName(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i64 0, i64 0), i8* %11)
  call void @copyFileName(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i64 0, i64 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb9, %for.end, %sw.bb
  br label %zzz

zzz:                                              ; preds = %sw.epilog, %if.then6
  %12 = load i32, i32* @srcMode, align 4
  %cmp10 = icmp ne i32 %12, 1
  br i1 %cmp10, label %land.lhs.true11, label %if.end19

land.lhs.true11:                                  ; preds = %zzz
  %call12 = call zeroext i8 @containsDubiousChars(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i64 0, i64 0))
  %conv = zext i8 %call12 to i32
  %tobool13 = icmp ne i32 %conv, 0
  br i1 %tobool13, label %if.then14, label %if.end19

if.then14:                                        ; preds = %land.lhs.true11
  %13 = load i8, i8* @noisy, align 1
  %tobool15 = icmp ne i8 %13, 0
  br i1 %tobool15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.then14
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %15 = load i8*, i8** @progName, align 8
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.56, i64 0, i64 0), i8* %15, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i64 0, i64 0))
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.then14
  call void @setExit(i32 1)
  br label %if.end191

if.end19:                                         ; preds = %land.lhs.true11, %zzz
  %16 = load i32, i32* @srcMode, align 4
  %cmp20 = icmp ne i32 %16, 1
  br i1 %cmp20, label %land.lhs.true22, label %if.end29

land.lhs.true22:                                  ; preds = %if.end19
  %call23 = call zeroext i8 @fileExists(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i64 0, i64 0))
  %tobool24 = icmp ne i8 %call23, 0
  br i1 %tobool24, label %if.end29, label %if.then25

if.then25:                                        ; preds = %land.lhs.true22
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %18 = load i8*, i8** @progName, align 8
  %call26 = call i32* @__errno_location() #12
  %19 = load i32, i32* %call26, align 4
  %call27 = call i8* @strerror(i32 %19) #8
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.57, i64 0, i64 0), i8* %18, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i64 0, i64 0), i8* %call27)
  call void @setExit(i32 1)
  br label %if.end191

if.end29:                                         ; preds = %land.lhs.true22, %if.end19
  %20 = load i32, i32* @srcMode, align 4
  %cmp30 = icmp eq i32 %20, 3
  br i1 %cmp30, label %if.then34, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end29
  %21 = load i32, i32* @srcMode, align 4
  %cmp32 = icmp eq i32 %21, 2
  br i1 %cmp32, label %if.then34, label %if.end41

if.then34:                                        ; preds = %lor.lhs.false, %if.end29
  %call35 = call i32 @stat(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i64 0, i64 0), %struct.stat* %statBuf) #8
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %statBuf, i32 0, i32 3
  %22 = load i32, i32* %st_mode, align 8
  %and = and i32 %22, 61440
  %cmp36 = icmp eq i32 %and, 16384
  br i1 %cmp36, label %if.then38, label %if.end40

if.then38:                                        ; preds = %if.then34
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %24 = load i8*, i8** @progName, align 8
  %call39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.59, i64 0, i64 0), i8* %24, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i64 0, i64 0))
  call void @setExit(i32 1)
  br label %if.end191

if.end40:                                         ; preds = %if.then34
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %lor.lhs.false
  %25 = load i32, i32* @srcMode, align 4
  %cmp42 = icmp eq i32 %25, 3
  br i1 %cmp42, label %land.lhs.true44, label %if.end55

land.lhs.true44:                                  ; preds = %if.end41
  %26 = load i8, i8* @forceOverwrite, align 1
  %tobool45 = icmp ne i8 %26, 0
  br i1 %tobool45, label %if.end55, label %land.lhs.true46

land.lhs.true46:                                  ; preds = %land.lhs.true44
  %call47 = call zeroext i8 @notAStandardFile(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i64 0, i64 0))
  %conv48 = zext i8 %call47 to i32
  %tobool49 = icmp ne i32 %conv48, 0
  br i1 %tobool49, label %if.then50, label %if.end55

if.then50:                                        ; preds = %land.lhs.true46
  %27 = load i8, i8* @noisy, align 1
  %tobool51 = icmp ne i8 %27, 0
  br i1 %tobool51, label %if.then52, label %if.end54

if.then52:                                        ; preds = %if.then50
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %29 = load i8*, i8** @progName, align 8
  %call53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.60, i64 0, i64 0), i8* %29, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i64 0, i64 0))
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %if.then50
  call void @setExit(i32 1)
  br label %if.end191

if.end55:                                         ; preds = %land.lhs.true46, %land.lhs.true44, %if.end41
  %30 = load i8, i8* %cantGuess, align 1
  %tobool56 = icmp ne i8 %30, 0
  br i1 %tobool56, label %if.then57, label %if.end62

if.then57:                                        ; preds = %if.end55
  %31 = load i8, i8* @noisy, align 1
  %tobool58 = icmp ne i8 %31, 0
  br i1 %tobool58, label %if.then59, label %if.end61

if.then59:                                        ; preds = %if.then57
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %33 = load i8*, i8** @progName, align 8
  %call60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.81, i64 0, i64 0), i8* %33, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i64 0, i64 0), i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i64 0, i64 0))
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %if.then57
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %if.end55
  %34 = load i32, i32* @srcMode, align 4
  %cmp63 = icmp eq i32 %34, 3
  br i1 %cmp63, label %land.lhs.true65, label %if.end75

land.lhs.true65:                                  ; preds = %if.end62
  %call66 = call zeroext i8 @fileExists(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i64 0, i64 0))
  %conv67 = zext i8 %call66 to i32
  %tobool68 = icmp ne i32 %conv67, 0
  br i1 %tobool68, label %if.then69, label %if.end75

if.then69:                                        ; preds = %land.lhs.true65
  %35 = load i8, i8* @forceOverwrite, align 1
  %tobool70 = icmp ne i8 %35, 0
  br i1 %tobool70, label %if.then71, label %if.else

if.then71:                                        ; preds = %if.then69
  %call72 = call i32 @remove(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i64 0, i64 0)) #8
  br label %if.end74

if.else:                                          ; preds = %if.then69
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %37 = load i8*, i8** @progName, align 8
  %call73 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.61, i64 0, i64 0), i8* %37, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i64 0, i64 0))
  call void @setExit(i32 1)
  br label %if.end191

if.end74:                                         ; preds = %if.then71
  br label %if.end75

if.end75:                                         ; preds = %if.end74, %land.lhs.true65, %if.end62
  %38 = load i32, i32* @srcMode, align 4
  %cmp76 = icmp eq i32 %38, 3
  br i1 %cmp76, label %land.lhs.true78, label %if.end88

land.lhs.true78:                                  ; preds = %if.end75
  %39 = load i8, i8* @forceOverwrite, align 1
  %tobool79 = icmp ne i8 %39, 0
  br i1 %tobool79, label %if.end88, label %land.lhs.true80

land.lhs.true80:                                  ; preds = %land.lhs.true78
  %call81 = call i32 @countHardLinks(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i64 0, i64 0))
  store i32 %call81, i32* %n, align 4
  %cmp82 = icmp sgt i32 %call81, 0
  br i1 %cmp82, label %if.then84, label %if.end88

if.then84:                                        ; preds = %land.lhs.true80
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %41 = load i8*, i8** @progName, align 8
  %42 = load i32, i32* %n, align 4
  %43 = load i32, i32* %n, align 4
  %cmp85 = icmp sgt i32 %43, 1
  %44 = zext i1 %cmp85 to i64
  %cond = select i1 %cmp85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %call87 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.62, i64 0, i64 0), i8* %41, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i64 0, i64 0), i32 %42, i8* %cond)
  call void @setExit(i32 1)
  br label %if.end191

if.end88:                                         ; preds = %land.lhs.true80, %land.lhs.true78, %if.end75
  %45 = load i32, i32* @srcMode, align 4
  %cmp89 = icmp eq i32 %45, 3
  br i1 %cmp89, label %if.then91, label %if.end92

if.then91:                                        ; preds = %if.end88
  call void @saveInputFileMetaInfo(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i64 0, i64 0))
  br label %if.end92

if.end92:                                         ; preds = %if.then91, %if.end88
  %46 = load i32, i32* @srcMode, align 4
  switch i32 %46, label %sw.default [
    i32 1, label %sw.bb93
    i32 2, label %sw.bb101
    i32 3, label %sw.bb115
  ]

sw.bb93:                                          ; preds = %if.end92
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  store %struct._IO_FILE* %47, %struct._IO_FILE** %inStr, align 8
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %48, %struct._IO_FILE** %outStr, align 8
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call94 = call i32 @fileno(%struct._IO_FILE* %49) #8
  %call95 = call i32 @isatty(i32 %call94) #8
  %tobool96 = icmp ne i32 %call95, 0
  br i1 %tobool96, label %if.then97, label %if.end100

if.then97:                                        ; preds = %sw.bb93
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %51 = load i8*, i8** @progName, align 8
  %call98 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.82, i64 0, i64 0), i8* %51)
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %53 = load i8*, i8** @progName, align 8
  %54 = load i8*, i8** @progName, align 8
  %call99 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %52, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.65, i64 0, i64 0), i8* %53, i8* %54)
  call void @setExit(i32 1)
  br label %if.end191

if.end100:                                        ; preds = %sw.bb93
  br label %sw.epilog142

sw.bb101:                                         ; preds = %if.end92
  %call102 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.66, i64 0, i64 0))
  store %struct._IO_FILE* %call102, %struct._IO_FILE** %inStr, align 8
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %55, %struct._IO_FILE** %outStr, align 8
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %inStr, align 8
  %cmp103 = icmp eq %struct._IO_FILE* %56, null
  br i1 %cmp103, label %if.then105, label %if.end114

if.then105:                                       ; preds = %sw.bb101
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %58 = load i8*, i8** @progName, align 8
  %call106 = call i32* @__errno_location() #12
  %59 = load i32, i32* %call106, align 4
  %call107 = call i8* @strerror(i32 %59) #8
  %call108 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %57, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.83, i64 0, i64 0), i8* %58, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i64 0, i64 0), i8* %call107)
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %inStr, align 8
  %cmp109 = icmp ne %struct._IO_FILE* %60, null
  br i1 %cmp109, label %if.then111, label %if.end113

if.then111:                                       ; preds = %if.then105
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %inStr, align 8
  %call112 = call i32 @fclose(%struct._IO_FILE* %61)
  br label %if.end113

if.end113:                                        ; preds = %if.then111, %if.then105
  call void @setExit(i32 1)
  br label %if.end191

if.end114:                                        ; preds = %sw.bb101
  br label %sw.epilog142

sw.bb115:                                         ; preds = %if.end92
  %call116 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.66, i64 0, i64 0))
  store %struct._IO_FILE* %call116, %struct._IO_FILE** %inStr, align 8
  %call117 = call %struct._IO_FILE* @fopen_output_safely(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.67, i64 0, i64 0))
  store %struct._IO_FILE* %call117, %struct._IO_FILE** %outStr, align 8
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** %outStr, align 8
  %cmp118 = icmp eq %struct._IO_FILE* %62, null
  br i1 %cmp118, label %if.then120, label %if.end129

if.then120:                                       ; preds = %sw.bb115
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %64 = load i8*, i8** @progName, align 8
  %call121 = call i32* @__errno_location() #12
  %65 = load i32, i32* %call121, align 4
  %call122 = call i8* @strerror(i32 %65) #8
  %call123 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %63, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.68, i64 0, i64 0), i8* %64, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i64 0, i64 0), i8* %call122)
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** %inStr, align 8
  %cmp124 = icmp ne %struct._IO_FILE* %66, null
  br i1 %cmp124, label %if.then126, label %if.end128

if.then126:                                       ; preds = %if.then120
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %inStr, align 8
  %call127 = call i32 @fclose(%struct._IO_FILE* %67)
  br label %if.end128

if.end128:                                        ; preds = %if.then126, %if.then120
  call void @setExit(i32 1)
  br label %if.end191

if.end129:                                        ; preds = %sw.bb115
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** %inStr, align 8
  %cmp130 = icmp eq %struct._IO_FILE* %68, null
  br i1 %cmp130, label %if.then132, label %if.end141

if.then132:                                       ; preds = %if.end129
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %70 = load i8*, i8** @progName, align 8
  %call133 = call i32* @__errno_location() #12
  %71 = load i32, i32* %call133, align 4
  %call134 = call i8* @strerror(i32 %71) #8
  %call135 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %69, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.57, i64 0, i64 0), i8* %70, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i64 0, i64 0), i8* %call134)
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %outStr, align 8
  %cmp136 = icmp ne %struct._IO_FILE* %72, null
  br i1 %cmp136, label %if.then138, label %if.end140

if.then138:                                       ; preds = %if.then132
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** %outStr, align 8
  %call139 = call i32 @fclose(%struct._IO_FILE* %73)
  br label %if.end140

if.end140:                                        ; preds = %if.then138, %if.then132
  call void @setExit(i32 1)
  br label %if.end191

if.end141:                                        ; preds = %if.end129
  br label %sw.epilog142

sw.default:                                       ; preds = %if.end92
  call void @panic(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.84, i64 0, i64 0)) #11
  unreachable

sw.epilog142:                                     ; preds = %if.end141, %if.end114, %if.end100
  %74 = load i32, i32* @verbosity, align 4
  %cmp143 = icmp sge i32 %74, 1
  br i1 %cmp143, label %if.then145, label %if.end148

if.then145:                                       ; preds = %sw.epilog142
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call146 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %75, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i64 0, i64 0), i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i64 0, i64 0))
  call void @pad(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i64 0, i64 0))
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call147 = call i32 @fflush(%struct._IO_FILE* %76)
  br label %if.end148

if.end148:                                        ; preds = %if.then145, %sw.epilog142
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** %outStr, align 8
  store %struct._IO_FILE* %77, %struct._IO_FILE** @outputHandleJustInCase, align 8
  store i8 1, i8* @deleteOutputOnInterrupt, align 1
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** %inStr, align 8
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** %outStr, align 8
  %call149 = call zeroext i8 @uncompressStream(%struct._IO_FILE* %78, %struct._IO_FILE* %79)
  store i8 %call149, i8* %magicNumberOK, align 1
  store %struct._IO_FILE* null, %struct._IO_FILE** @outputHandleJustInCase, align 8
  %80 = load i8, i8* %magicNumberOK, align 1
  %tobool150 = icmp ne i8 %80, 0
  br i1 %tobool150, label %if.then151, label %if.else164

if.then151:                                       ; preds = %if.end148
  %81 = load i32, i32* @srcMode, align 4
  %cmp152 = icmp eq i32 %81, 3
  br i1 %cmp152, label %if.then154, label %if.end163

if.then154:                                       ; preds = %if.then151
  call void @applySavedMetaInfoToOutputFile(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i64 0, i64 0))
  store i8 0, i8* @deleteOutputOnInterrupt, align 1
  %82 = load i8, i8* @keepInputFiles, align 1
  %tobool155 = icmp ne i8 %82, 0
  br i1 %tobool155, label %if.end162, label %if.then156

if.then156:                                       ; preds = %if.then154
  %call157 = call i32 @remove(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i64 0, i64 0)) #8
  store i32 %call157, i32* %retVal, align 4
  %83 = load i32, i32* %retVal, align 4
  %cmp158 = icmp ne i32 %83, 0
  br i1 %cmp158, label %if.then160, label %if.end161

if.then160:                                       ; preds = %if.then156
  call void @ioError() #11
  unreachable

if.end161:                                        ; preds = %if.then156
  br label %if.end162

if.end162:                                        ; preds = %if.end161, %if.then154
  br label %if.end163

if.end163:                                        ; preds = %if.end162, %if.then151
  br label %if.end175

if.else164:                                       ; preds = %if.end148
  store i8 1, i8* @unzFailsExist, align 1
  store i8 0, i8* @deleteOutputOnInterrupt, align 1
  %84 = load i32, i32* @srcMode, align 4
  %cmp165 = icmp eq i32 %84, 3
  br i1 %cmp165, label %if.then167, label %if.end174

if.then167:                                       ; preds = %if.else164
  %call169 = call i32 @remove(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i64 0, i64 0)) #8
  store i32 %call169, i32* %retVal168, align 4
  %85 = load i32, i32* %retVal168, align 4
  %cmp170 = icmp ne i32 %85, 0
  br i1 %cmp170, label %if.then172, label %if.end173

if.then172:                                       ; preds = %if.then167
  call void @ioError() #11
  unreachable

if.end173:                                        ; preds = %if.then167
  br label %if.end174

if.end174:                                        ; preds = %if.end173, %if.else164
  br label %if.end175

if.end175:                                        ; preds = %if.end174, %if.end163
  store i8 0, i8* @deleteOutputOnInterrupt, align 1
  %86 = load i8, i8* %magicNumberOK, align 1
  %tobool176 = icmp ne i8 %86, 0
  br i1 %tobool176, label %if.then177, label %if.else183

if.then177:                                       ; preds = %if.end175
  %87 = load i32, i32* @verbosity, align 4
  %cmp178 = icmp sge i32 %87, 1
  br i1 %cmp178, label %if.then180, label %if.end182

if.then180:                                       ; preds = %if.then177
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call181 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %88, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.85, i64 0, i64 0))
  br label %if.end182

if.end182:                                        ; preds = %if.then180, %if.then177
  br label %if.end191

if.else183:                                       ; preds = %if.end175
  call void @setExit(i32 2)
  %89 = load i32, i32* @verbosity, align 4
  %cmp184 = icmp sge i32 %89, 1
  br i1 %cmp184, label %if.then186, label %if.else188

if.then186:                                       ; preds = %if.else183
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call187 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %90, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.86, i64 0, i64 0))
  br label %if.end190

if.else188:                                       ; preds = %if.else183
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %92 = load i8*, i8** @progName, align 8
  %call189 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %91, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.87, i64 0, i64 0), i8* %92, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i64 0, i64 0))
  br label %if.end190

if.end190:                                        ; preds = %if.else188, %if.then186
  br label %if.end191

if.end191:                                        ; preds = %if.end18, %if.then25, %if.then38, %if.end54, %if.else, %if.then84, %if.then97, %if.end113, %if.end128, %if.end140, %if.end190, %if.end182
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setExit(i32 %v) #0 {
entry:
  %v.addr = alloca i32, align 4
  store i32 %v, i32* %v.addr, align 4
  %0 = load i32, i32* %v.addr, align 4
  %1 = load i32, i32* @exitValue, align 4
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %v.addr, align 4
  store i32 %2, i32* @exitValue, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @testf(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %inStr = alloca %struct._IO_FILE*, align 8
  %allOK = alloca i8, align 1
  %statBuf = alloca %struct.stat, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8 0, i8* @deleteOutputOnInterrupt, align 1
  %0 = load i8*, i8** %name.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* @srcMode, align 4
  %cmp1 = icmp ne i32 %1, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @panic(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.94, i64 0, i64 0)) #11
  unreachable

if.end:                                           ; preds = %land.lhs.true, %entry
  call void @copyFileName(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %2 = load i32, i32* @srcMode, align 4
  switch i32 %2, label %sw.epilog [
    i32 1, label %sw.bb
    i32 3, label %sw.bb2
    i32 2, label %sw.bb3
  ]

sw.bb:                                            ; preds = %if.end
  call void @copyFileName(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i64 0, i64 0))
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  %3 = load i8*, i8** %name.addr, align 8
  call void @copyFileName(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i64 0, i64 0), i8* %3)
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  %4 = load i8*, i8** %name.addr, align 8
  call void @copyFileName(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i64 0, i64 0), i8* %4)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb3, %sw.bb2, %sw.bb
  %5 = load i32, i32* @srcMode, align 4
  %cmp4 = icmp ne i32 %5, 1
  br i1 %cmp4, label %land.lhs.true5, label %if.end11

land.lhs.true5:                                   ; preds = %sw.epilog
  %call = call zeroext i8 @containsDubiousChars(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i64 0, i64 0))
  %conv = zext i8 %call to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %if.then6, label %if.end11

if.then6:                                         ; preds = %land.lhs.true5
  %6 = load i8, i8* @noisy, align 1
  %tobool7 = icmp ne i8 %6, 0
  br i1 %tobool7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.then6
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %8 = load i8*, i8** @progName, align 8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.56, i64 0, i64 0), i8* %8, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i64 0, i64 0))
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.then6
  call void @setExit(i32 1)
  br label %if.end67

if.end11:                                         ; preds = %land.lhs.true5, %sw.epilog
  %9 = load i32, i32* @srcMode, align 4
  %cmp12 = icmp ne i32 %9, 1
  br i1 %cmp12, label %land.lhs.true14, label %if.end21

land.lhs.true14:                                  ; preds = %if.end11
  %call15 = call zeroext i8 @fileExists(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i64 0, i64 0))
  %tobool16 = icmp ne i8 %call15, 0
  br i1 %tobool16, label %if.end21, label %if.then17

if.then17:                                        ; preds = %land.lhs.true14
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = load i8*, i8** @progName, align 8
  %call18 = call i32* @__errno_location() #12
  %12 = load i32, i32* %call18, align 4
  %call19 = call i8* @strerror(i32 %12) #8
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.95, i64 0, i64 0), i8* %11, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i64 0, i64 0), i8* %call19)
  call void @setExit(i32 1)
  br label %if.end67

if.end21:                                         ; preds = %land.lhs.true14, %if.end11
  %13 = load i32, i32* @srcMode, align 4
  %cmp22 = icmp ne i32 %13, 1
  br i1 %cmp22, label %if.then24, label %if.end31

if.then24:                                        ; preds = %if.end21
  %call25 = call i32 @stat(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i64 0, i64 0), %struct.stat* %statBuf) #8
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %statBuf, i32 0, i32 3
  %14 = load i32, i32* %st_mode, align 8
  %and = and i32 %14, 61440
  %cmp26 = icmp eq i32 %and, 16384
  br i1 %cmp26, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.then24
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %16 = load i8*, i8** @progName, align 8
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.59, i64 0, i64 0), i8* %16, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i64 0, i64 0))
  call void @setExit(i32 1)
  br label %if.end67

if.end30:                                         ; preds = %if.then24
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.end21
  %17 = load i32, i32* @srcMode, align 4
  switch i32 %17, label %sw.default [
    i32 1, label %sw.bb32
    i32 2, label %sw.bb40
    i32 3, label %sw.bb40
  ]

sw.bb32:                                          ; preds = %if.end31
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call33 = call i32 @fileno(%struct._IO_FILE* %18) #8
  %call34 = call i32 @isatty(i32 %call33) #8
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.then36, label %if.end39

if.then36:                                        ; preds = %sw.bb32
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %20 = load i8*, i8** @progName, align 8
  %call37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.82, i64 0, i64 0), i8* %20)
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %22 = load i8*, i8** @progName, align 8
  %23 = load i8*, i8** @progName, align 8
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.65, i64 0, i64 0), i8* %22, i8* %23)
  call void @setExit(i32 1)
  br label %if.end67

if.end39:                                         ; preds = %sw.bb32
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  store %struct._IO_FILE* %24, %struct._IO_FILE** %inStr, align 8
  br label %sw.epilog49

sw.bb40:                                          ; preds = %if.end31, %if.end31
  %call41 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.66, i64 0, i64 0))
  store %struct._IO_FILE* %call41, %struct._IO_FILE** %inStr, align 8
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %inStr, align 8
  %cmp42 = icmp eq %struct._IO_FILE* %25, null
  br i1 %cmp42, label %if.then44, label %if.end48

if.then44:                                        ; preds = %sw.bb40
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %27 = load i8*, i8** @progName, align 8
  %call45 = call i32* @__errno_location() #12
  %28 = load i32, i32* %call45, align 4
  %call46 = call i8* @strerror(i32 %28) #8
  %call47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.83, i64 0, i64 0), i8* %27, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i64 0, i64 0), i8* %call46)
  call void @setExit(i32 1)
  br label %if.end67

if.end48:                                         ; preds = %sw.bb40
  br label %sw.epilog49

sw.default:                                       ; preds = %if.end31
  call void @panic(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.96, i64 0, i64 0)) #11
  unreachable

sw.epilog49:                                      ; preds = %if.end48, %if.end39
  %29 = load i32, i32* @verbosity, align 4
  %cmp50 = icmp sge i32 %29, 1
  br i1 %cmp50, label %if.then52, label %if.end55

if.then52:                                        ; preds = %sw.epilog49
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i64 0, i64 0), i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i64 0, i64 0))
  call void @pad(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i64 0, i64 0))
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call54 = call i32 @fflush(%struct._IO_FILE* %31)
  br label %if.end55

if.end55:                                         ; preds = %if.then52, %sw.epilog49
  store %struct._IO_FILE* null, %struct._IO_FILE** @outputHandleJustInCase, align 8
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %inStr, align 8
  %call56 = call zeroext i8 @testStream(%struct._IO_FILE* %32)
  store i8 %call56, i8* %allOK, align 1
  %33 = load i8, i8* %allOK, align 1
  %conv57 = zext i8 %33 to i32
  %tobool58 = icmp ne i32 %conv57, 0
  br i1 %tobool58, label %land.lhs.true59, label %if.end64

land.lhs.true59:                                  ; preds = %if.end55
  %34 = load i32, i32* @verbosity, align 4
  %cmp60 = icmp sge i32 %34, 1
  br i1 %cmp60, label %if.then62, label %if.end64

if.then62:                                        ; preds = %land.lhs.true59
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call63 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.97, i64 0, i64 0))
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %land.lhs.true59, %if.end55
  %36 = load i8, i8* %allOK, align 1
  %tobool65 = icmp ne i8 %36, 0
  br i1 %tobool65, label %if.end67, label %if.then66

if.then66:                                        ; preds = %if.end64
  store i8 1, i8* @testFailsExist, align 1
  br label %if.end67

if.end67:                                         ; preds = %if.end10, %if.then17, %if.then28, %if.then36, %if.then44, %if.then66, %if.end64
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @showFileNames() #0 {
entry:
  %0 = load i8, i8* @noisy, align 1
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i64 0, i64 0), i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @cleanUpAndFail(i32 %ec) #5 {
entry:
  %ec.addr = alloca i32, align 4
  %retVal = alloca i32, align 4
  %statBuf = alloca %struct.stat, align 8
  store i32 %ec, i32* %ec.addr, align 4
  %0 = load i32, i32* @srcMode, align 4
  %cmp = icmp eq i32 %0, 3
  br i1 %cmp, label %land.lhs.true, label %if.end25

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* @opMode, align 4
  %cmp1 = icmp ne i32 %1, 3
  br i1 %cmp1, label %land.lhs.true2, label %if.end25

land.lhs.true2:                                   ; preds = %land.lhs.true
  %2 = load i8, i8* @deleteOutputOnInterrupt, align 1
  %conv = zext i8 %2 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %if.then, label %if.end25

if.then:                                          ; preds = %land.lhs.true2
  %call = call i32 @stat(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i64 0, i64 0), %struct.stat* %statBuf) #8
  store i32 %call, i32* %retVal, align 4
  %3 = load i32, i32* %retVal, align 4
  %cmp3 = icmp eq i32 %3, 0
  br i1 %cmp3, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  %4 = load i8, i8* @noisy, align 1
  %tobool6 = icmp ne i8 %4, 0
  br i1 %tobool6, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then5
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = load i8*, i8** @progName, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.39, i64 0, i64 0), i8* %6, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then5
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @outputHandleJustInCase, align 8
  %cmp9 = icmp ne %struct._IO_FILE* %7, null
  br i1 %cmp9, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @outputHandleJustInCase, align 8
  %call12 = call i32 @fclose(%struct._IO_FILE* %8)
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end
  %call14 = call i32 @remove(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i64 0, i64 0)) #8
  store i32 %call14, i32* %retVal, align 4
  %9 = load i32, i32* %retVal, align 4
  %cmp15 = icmp ne i32 %9, 0
  br i1 %cmp15, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end13
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = load i8*, i8** @progName, align 8
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.40, i64 0, i64 0), i8* %11)
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end13
  br label %if.end24

if.else:                                          ; preds = %if.then
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = load i8*, i8** @progName, align 8
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.41, i64 0, i64 0), i8* %13)
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %15 = load i8*, i8** @progName, align 8
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.42, i64 0, i64 0), i8* %15)
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %17 = load i8*, i8** @progName, align 8
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.43, i64 0, i64 0), i8* %17, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i64 0, i64 0))
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = load i8*, i8** @progName, align 8
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.44, i64 0, i64 0), i8* %19)
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.end19
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %land.lhs.true2, %land.lhs.true, %entry
  %20 = load i8, i8* @noisy, align 1
  %conv26 = zext i8 %20 to i32
  %tobool27 = icmp ne i32 %conv26, 0
  br i1 %tobool27, label %land.lhs.true28, label %if.end36

land.lhs.true28:                                  ; preds = %if.end25
  %21 = load i32, i32* @numFileNames, align 4
  %cmp29 = icmp sgt i32 %21, 0
  br i1 %cmp29, label %land.lhs.true31, label %if.end36

land.lhs.true31:                                  ; preds = %land.lhs.true28
  %22 = load i32, i32* @numFilesProcessed, align 4
  %23 = load i32, i32* @numFileNames, align 4
  %cmp32 = icmp slt i32 %22, %23
  br i1 %cmp32, label %if.then34, label %if.end36

if.then34:                                        ; preds = %land.lhs.true31
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %25 = load i8*, i8** @progName, align 8
  %26 = load i8*, i8** @progName, align 8
  %27 = load i32, i32* @numFileNames, align 4
  %28 = load i32, i32* @numFileNames, align 4
  %29 = load i32, i32* @numFilesProcessed, align 4
  %sub = sub nsw i32 %28, %29
  %call35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.45, i64 0, i64 0), i8* %25, i8* %26, i32 %27, i32 %sub)
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %land.lhs.true31, %land.lhs.true28, %if.end25
  %30 = load i32, i32* %ec.addr, align 4
  call void @setExit(i32 %30)
  %31 = load i32, i32* @exitValue, align 4
  call void @exit(i32 %31) #10
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cadvise() #0 {
entry:
  %0 = load i8, i8* @noisy, align 1
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([241 x i8], [241 x i8]* @.str.46, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @stat(i8*, %struct.stat*) #2

declare dso_local i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare dso_local i32 @remove(i8*) #2

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8*) #2

; Function Attrs: nounwind readnone
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.zzzz* @mkCell() #0 {
entry:
  %c = alloca %struct.zzzz*, align 8
  %call = call i8* @myMalloc(i32 16)
  %0 = bitcast i8* %call to %struct.zzzz*
  store %struct.zzzz* %0, %struct.zzzz** %c, align 8
  %1 = load %struct.zzzz*, %struct.zzzz** %c, align 8
  %name = getelementptr inbounds %struct.zzzz, %struct.zzzz* %1, i32 0, i32 0
  store i8* null, i8** %name, align 8
  %2 = load %struct.zzzz*, %struct.zzzz** %c, align 8
  %link = getelementptr inbounds %struct.zzzz, %struct.zzzz* %2, i32 0, i32 1
  store %struct.zzzz* null, %struct.zzzz** %link, align 8
  %3 = load %struct.zzzz*, %struct.zzzz** %c, align 8
  ret %struct.zzzz* %3
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @myMalloc(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  %p = alloca i8*, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @malloc(i64 %conv) #8
  store i8* %call, i8** %p, align 8
  %1 = load i8*, i8** %p, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @outOfMemory() #11
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %p, align 8
  ret i8* %2
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #2

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @outOfMemory() #5 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1 = load i8*, i8** @progName, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.48, i64 0, i64 0), i8* %1)
  call void @showFileNames()
  call void @cleanUpAndFail(i32 1) #11
  unreachable
}

declare dso_local i8* @BZ2_bzlibVersion() #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @panic(i8* %s) #5 {
entry:
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1 = load i8*, i8** @progName, align 8
  %2 = load i8*, i8** %s.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.71, i64 0, i64 0), i8* %1, i8* %2)
  call void @showFileNames()
  call void @cleanUpAndFail(i32 3) #11
  unreachable
}

; Function Attrs: nounwind
declare dso_local i8* @strcat(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @containsDubiousChars(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  ret i8 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @fileExists(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %tmp = alloca %struct._IO_FILE*, align 8
  %exists = alloca i8, align 1
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.66, i64 0, i64 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %tmp, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %tmp, align 8
  %cmp = icmp ne %struct._IO_FILE* %1, null
  %conv = zext i1 %cmp to i32
  %conv1 = trunc i32 %conv to i8
  store i8 %conv1, i8* %exists, align 1
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %tmp, align 8
  %cmp2 = icmp ne %struct._IO_FILE* %2, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %tmp, align 8
  %call4 = call i32 @fclose(%struct._IO_FILE* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i8, i8* %exists, align 1
  ret i8 %4
}

; Function Attrs: nounwind
declare dso_local i8* @strerror(i32) #2

; Function Attrs: nounwind readnone
declare dso_local i32* @__errno_location() #6

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @hasSuffix(i8* %s, i8* %suffix) #0 {
entry:
  %retval = alloca i8, align 1
  %s.addr = alloca i8*, align 8
  %suffix.addr = alloca i8*, align 8
  %ns = alloca i32, align 4
  %nx = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store i8* %suffix, i8** %suffix.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i64 @strlen(i8* %0) #9
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %ns, align 4
  %1 = load i8*, i8** %suffix.addr, align 8
  %call1 = call i64 @strlen(i8* %1) #9
  %conv2 = trunc i64 %call1 to i32
  store i32 %conv2, i32* %nx, align 4
  %2 = load i32, i32* %ns, align 4
  %3 = load i32, i32* %nx, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 0, i8* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %s.addr, align 8
  %5 = load i32, i32* %ns, align 4
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  %6 = load i32, i32* %nx, align 4
  %idx.ext4 = sext i32 %6 to i64
  %idx.neg = sub i64 0, %idx.ext4
  %add.ptr5 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.neg
  %7 = load i8*, i8** %suffix.addr, align 8
  %call6 = call i32 @strcmp(i8* %add.ptr5, i8* %7) #9
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  store i8 1, i8* %retval, align 1
  br label %return

if.end10:                                         ; preds = %if.end
  store i8 0, i8* %retval, align 1
  br label %return

return:                                           ; preds = %if.end10, %if.then9, %if.then
  %8 = load i8, i8* %retval, align 1
  ret i8 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @notAStandardFile(i8* %name) #0 {
entry:
  %retval = alloca i8, align 1
  %name.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %statBuf = alloca %struct.stat, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %call = call i32 @lstat(i8* %0, %struct.stat* %statBuf) #8
  store i32 %call, i32* %i, align 4
  %1 = load i32, i32* %i, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 1, i8* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %statBuf, i32 0, i32 3
  %2 = load i32, i32* %st_mode, align 8
  %and = and i32 %2, 61440
  %cmp1 = icmp eq i32 %and, 32768
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i8 0, i8* %retval, align 1
  br label %return

if.end3:                                          ; preds = %if.end
  store i8 1, i8* %retval, align 1
  br label %return

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %3 = load i8, i8* %retval, align 1
  ret i8 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @countHardLinks(i8* %name) #0 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %statBuf = alloca %struct.stat, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %call = call i32 @lstat(i8* %0, %struct.stat* %statBuf) #8
  store i32 %call, i32* %i, align 4
  %1 = load i32, i32* %i, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %st_nlink = getelementptr inbounds %struct.stat, %struct.stat* %statBuf, i32 0, i32 2
  %2 = load i64, i64* %st_nlink, align 8
  %sub = sub i64 %2, 1
  %conv = trunc i64 %sub to i32
  store i32 %conv, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @saveInputFileMetaInfo(i8* %srcName) #0 {
entry:
  %srcName.addr = alloca i8*, align 8
  %retVal = alloca i32, align 4
  store i8* %srcName, i8** %srcName.addr, align 8
  %0 = load i8*, i8** %srcName.addr, align 8
  %call = call i32 @stat(i8* %0, %struct.stat* @fileMetaInfo) #8
  store i32 %call, i32* %retVal, align 4
  %1 = load i32, i32* %retVal, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @ioError() #11
  unreachable

if.end:                                           ; preds = %entry
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @isatty(i32) #2

; Function Attrs: nounwind
declare dso_local i32 @fileno(%struct._IO_FILE*) #2

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pad(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i64 @strlen(i8* %0) #9
  %conv = trunc i64 %call to i32
  %1 = load i32, i32* @longestFileName, align 4
  %cmp = icmp sge i32 %conv, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end

if.end:                                           ; preds = %entry
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* @longestFileName, align 4
  %4 = load i8*, i8** %s.addr, align 8
  %call2 = call i64 @strlen(i8* %4) #9
  %conv3 = trunc i64 %call2 to i32
  %sub = sub nsw i32 %3, %conv3
  %cmp4 = icmp sle i32 %2, %sub
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.72, i64 0, i64 0))
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

declare dso_local i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compressStream(%struct._IO_FILE* %stream, %struct._IO_FILE* %zStream) #0 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %zStream.addr = alloca %struct._IO_FILE*, align 8
  %bzf = alloca i8*, align 8
  %ibuf = alloca [5000 x i8], align 16
  %nIbuf = alloca i32, align 4
  %nbytes_in_lo32 = alloca i32, align 4
  %nbytes_in_hi32 = alloca i32, align 4
  %nbytes_out_lo32 = alloca i32, align 4
  %nbytes_out_hi32 = alloca i32, align 4
  %bzerr = alloca i32, align 4
  %bzerr_dummy = alloca i32, align 4
  %ret = alloca i32, align 4
  %buf_nin = alloca [32 x i8], align 16
  %buf_nout = alloca [32 x i8], align 16
  %nbytes_in = alloca %struct.UInt64, align 1
  %nbytes_out = alloca %struct.UInt64, align 1
  %nbytes_in_d = alloca double, align 8
  %nbytes_out_d = alloca double, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store %struct._IO_FILE* %zStream, %struct._IO_FILE** %zStream.addr, align 8
  store i8* null, i8** %bzf, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call = call i32 @ferror(%struct._IO_FILE* %0) #8
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %errhandler_io

if.end:                                           ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %zStream.addr, align 8
  %call1 = call i32 @ferror(%struct._IO_FILE* %1) #8
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  br label %errhandler_io

if.end4:                                          ; preds = %if.end
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %zStream.addr, align 8
  %3 = load i32, i32* @blockSize100k, align 4
  %4 = load i32, i32* @verbosity, align 4
  %5 = load i32, i32* @workFactor, align 4
  %call5 = call i8* @BZ2_bzWriteOpen(i32* %bzerr, %struct._IO_FILE* %2, i32 %3, i32 %4, i32 %5)
  store i8* %call5, i8** %bzf, align 8
  %6 = load i32, i32* %bzerr, align 4
  %cmp = icmp ne i32 %6, 0
  br i1 %cmp, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end4
  br label %errhandler

if.end7:                                          ; preds = %if.end4
  %7 = load i32, i32* @verbosity, align 4
  %cmp8 = icmp sge i32 %7, 2
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end7
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.73, i64 0, i64 0))
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end7
  br label %while.body

while.body:                                       ; preds = %if.end11, %if.end29
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call12 = call zeroext i8 @myfeof(%struct._IO_FILE* %9)
  %tobool13 = icmp ne i8 %call12, 0
  br i1 %tobool13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %while.body
  br label %while.end

if.end15:                                         ; preds = %while.body
  %arraydecay = getelementptr inbounds [5000 x i8], [5000 x i8]* %ibuf, i64 0, i64 0
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call16 = call i64 @fread(i8* %arraydecay, i64 1, i64 5000, %struct._IO_FILE* %10)
  %conv = trunc i64 %call16 to i32
  store i32 %conv, i32* %nIbuf, align 4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call17 = call i32 @ferror(%struct._IO_FILE* %11) #8
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end15
  br label %errhandler_io

if.end20:                                         ; preds = %if.end15
  %12 = load i32, i32* %nIbuf, align 4
  %cmp21 = icmp sgt i32 %12, 0
  br i1 %cmp21, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end20
  %13 = load i8*, i8** %bzf, align 8
  %arraydecay24 = getelementptr inbounds [5000 x i8], [5000 x i8]* %ibuf, i64 0, i64 0
  %14 = load i32, i32* %nIbuf, align 4
  call void @BZ2_bzWrite(i32* %bzerr, i8* %13, i8* %arraydecay24, i32 %14)
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end20
  %15 = load i32, i32* %bzerr, align 4
  %cmp26 = icmp ne i32 %15, 0
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end25
  br label %errhandler

if.end29:                                         ; preds = %if.end25
  br label %while.body

while.end:                                        ; preds = %if.then14
  %16 = load i8*, i8** %bzf, align 8
  call void @BZ2_bzWriteClose64(i32* %bzerr, i8* %16, i32 0, i32* %nbytes_in_lo32, i32* %nbytes_in_hi32, i32* %nbytes_out_lo32, i32* %nbytes_out_hi32)
  %17 = load i32, i32* %bzerr, align 4
  %cmp30 = icmp ne i32 %17, 0
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %while.end
  br label %errhandler

if.end33:                                         ; preds = %while.end
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %zStream.addr, align 8
  %call34 = call i32 @ferror(%struct._IO_FILE* %18) #8
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end33
  br label %errhandler_io

if.end37:                                         ; preds = %if.end33
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %zStream.addr, align 8
  %call38 = call i32 @fflush(%struct._IO_FILE* %19)
  store i32 %call38, i32* %ret, align 4
  %20 = load i32, i32* %ret, align 4
  %cmp39 = icmp eq i32 %20, -1
  br i1 %cmp39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end37
  br label %errhandler_io

if.end42:                                         ; preds = %if.end37
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %zStream.addr, align 8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %cmp43 = icmp ne %struct._IO_FILE* %21, %22
  br i1 %cmp43, label %if.then45, label %if.end51

if.then45:                                        ; preds = %if.end42
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %zStream.addr, align 8
  %call46 = call i32 @fclose(%struct._IO_FILE* %23)
  store i32 %call46, i32* %ret, align 4
  store %struct._IO_FILE* null, %struct._IO_FILE** @outputHandleJustInCase, align 8
  %24 = load i32, i32* %ret, align 4
  %cmp47 = icmp eq i32 %24, -1
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.then45
  br label %errhandler_io

if.end50:                                         ; preds = %if.then45
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.end42
  store %struct._IO_FILE* null, %struct._IO_FILE** @outputHandleJustInCase, align 8
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call52 = call i32 @ferror(%struct._IO_FILE* %25) #8
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.then54, label %if.end55

if.then54:                                        ; preds = %if.end51
  br label %errhandler_io

if.end55:                                         ; preds = %if.end51
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call56 = call i32 @fclose(%struct._IO_FILE* %26)
  store i32 %call56, i32* %ret, align 4
  %27 = load i32, i32* %ret, align 4
  %cmp57 = icmp eq i32 %27, -1
  br i1 %cmp57, label %if.then59, label %if.end60

if.then59:                                        ; preds = %if.end55
  br label %errhandler_io

if.end60:                                         ; preds = %if.end55
  %28 = load i32, i32* @verbosity, align 4
  %cmp61 = icmp sge i32 %28, 1
  br i1 %cmp61, label %if.then63, label %if.end81

if.then63:                                        ; preds = %if.end60
  %29 = load i32, i32* %nbytes_in_lo32, align 4
  %cmp64 = icmp eq i32 %29, 0
  br i1 %cmp64, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then63
  %30 = load i32, i32* %nbytes_in_hi32, align 4
  %cmp66 = icmp eq i32 %30, 0
  br i1 %cmp66, label %if.then68, label %if.else

if.then68:                                        ; preds = %land.lhs.true
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call69 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.74, i64 0, i64 0))
  br label %if.end80

if.else:                                          ; preds = %land.lhs.true, %if.then63
  %32 = load i32, i32* %nbytes_in_lo32, align 4
  %33 = load i32, i32* %nbytes_in_hi32, align 4
  call void @uInt64_from_UInt32s(%struct.UInt64* %nbytes_in, i32 %32, i32 %33)
  %34 = load i32, i32* %nbytes_out_lo32, align 4
  %35 = load i32, i32* %nbytes_out_hi32, align 4
  call void @uInt64_from_UInt32s(%struct.UInt64* %nbytes_out, i32 %34, i32 %35)
  %call70 = call double @uInt64_to_double(%struct.UInt64* %nbytes_in)
  store double %call70, double* %nbytes_in_d, align 8
  %call71 = call double @uInt64_to_double(%struct.UInt64* %nbytes_out)
  store double %call71, double* %nbytes_out_d, align 8
  %arraydecay72 = getelementptr inbounds [32 x i8], [32 x i8]* %buf_nin, i64 0, i64 0
  call void @uInt64_toAscii(i8* %arraydecay72, %struct.UInt64* %nbytes_in)
  %arraydecay73 = getelementptr inbounds [32 x i8], [32 x i8]* %buf_nout, i64 0, i64 0
  call void @uInt64_toAscii(i8* %arraydecay73, %struct.UInt64* %nbytes_out)
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %37 = load double, double* %nbytes_in_d, align 8
  %38 = load double, double* %nbytes_out_d, align 8
  %div = fdiv double %37, %38
  %39 = load double, double* %nbytes_out_d, align 8
  %mul = fmul double 8.000000e+00, %39
  %40 = load double, double* %nbytes_in_d, align 8
  %div74 = fdiv double %mul, %40
  %41 = load double, double* %nbytes_out_d, align 8
  %42 = load double, double* %nbytes_in_d, align 8
  %div75 = fdiv double %41, %42
  %sub = fsub double 1.000000e+00, %div75
  %mul76 = fmul double 1.000000e+02, %sub
  %arraydecay77 = getelementptr inbounds [32 x i8], [32 x i8]* %buf_nin, i64 0, i64 0
  %arraydecay78 = getelementptr inbounds [32 x i8], [32 x i8]* %buf_nout, i64 0, i64 0
  %call79 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.75, i64 0, i64 0), double %div, double %div74, double %mul76, i8* %arraydecay77, i8* %arraydecay78)
  br label %if.end80

if.end80:                                         ; preds = %if.else, %if.then68
  br label %if.end81

if.end81:                                         ; preds = %if.end80, %if.end60
  ret void

errhandler:                                       ; preds = %if.then32, %if.then28, %if.then6
  %43 = load i8*, i8** %bzf, align 8
  call void @BZ2_bzWriteClose64(i32* %bzerr_dummy, i8* %43, i32 1, i32* %nbytes_in_lo32, i32* %nbytes_in_hi32, i32* %nbytes_out_lo32, i32* %nbytes_out_hi32)
  %44 = load i32, i32* %bzerr, align 4
  switch i32 %44, label %sw.default [
    i32 -9, label %sw.bb
    i32 -3, label %sw.bb82
    i32 -6, label %sw.bb83
  ]

sw.bb:                                            ; preds = %errhandler
  call void @configError() #11
  unreachable

sw.bb82:                                          ; preds = %errhandler
  call void @outOfMemory() #11
  unreachable

sw.bb83:                                          ; preds = %errhandler
  br label %errhandler_io

errhandler_io:                                    ; preds = %sw.bb83, %if.then59, %if.then54, %if.then49, %if.then41, %if.then36, %if.then19, %if.then3, %if.then
  call void @ioError() #11
  unreachable

sw.default:                                       ; preds = %errhandler
  call void @panic(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.76, i64 0, i64 0)) #11
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @applySavedMetaInfoToOutputFile(i8* %dstName) #0 {
entry:
  %dstName.addr = alloca i8*, align 8
  %retVal = alloca i32, align 4
  %uTimBuf = alloca %struct.utimbuf, align 8
  store i8* %dstName, i8** %dstName.addr, align 8
  %0 = load i64, i64* getelementptr inbounds (%struct.stat, %struct.stat* @fileMetaInfo, i32 0, i32 11, i32 0), align 8
  %actime = getelementptr inbounds %struct.utimbuf, %struct.utimbuf* %uTimBuf, i32 0, i32 0
  store i64 %0, i64* %actime, align 8
  %1 = load i64, i64* getelementptr inbounds (%struct.stat, %struct.stat* @fileMetaInfo, i32 0, i32 12, i32 0), align 8
  %modtime = getelementptr inbounds %struct.utimbuf, %struct.utimbuf* %uTimBuf, i32 0, i32 1
  store i64 %1, i64* %modtime, align 8
  %2 = load i8*, i8** %dstName.addr, align 8
  %3 = load i32, i32* getelementptr inbounds (%struct.stat, %struct.stat* @fileMetaInfo, i32 0, i32 3), align 8
  %call = call i32 @chmod(i8* %2, i32 %3) #8
  store i32 %call, i32* %retVal, align 4
  %4 = load i32, i32* %retVal, align 4
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @ioError() #11
  unreachable

if.end:                                           ; preds = %entry
  %5 = load i8*, i8** %dstName.addr, align 8
  %call1 = call i32 @utime(i8* %5, %struct.utimbuf* %uTimBuf) #8
  store i32 %call1, i32* %retVal, align 4
  %6 = load i32, i32* %retVal, align 4
  %cmp2 = icmp ne i32 %6, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @ioError() #11
  unreachable

if.end4:                                          ; preds = %if.end
  %7 = load i8*, i8** %dstName.addr, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.stat, %struct.stat* @fileMetaInfo, i32 0, i32 4), align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.stat, %struct.stat* @fileMetaInfo, i32 0, i32 5), align 8
  %call5 = call i32 @chown(i8* %7, i32 %8, i32 %9) #8
  store i32 %call5, i32* %retVal, align 4
  ret void
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @ioError() #5 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1 = load i8*, i8** @progName, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.78, i64 0, i64 0), i8* %1)
  %2 = load i8*, i8** @progName, align 8
  call void @perror(i8* %2)
  call void @showFileNames()
  call void @cleanUpAndFail(i32 1) #11
  unreachable
}

; Function Attrs: nounwind
declare dso_local i32 @lstat(i8*, %struct.stat*) #2

; Function Attrs: nounwind
declare dso_local i32 @ferror(%struct._IO_FILE*) #2

declare dso_local i8* @BZ2_bzWriteOpen(i32*, %struct._IO_FILE*, i32, i32, i32) #1

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

declare dso_local void @BZ2_bzWrite(i32*, i8*, i8*, i32) #1

declare dso_local void @BZ2_bzWriteClose64(i32*, i8*, i32, i32*, i32*, i32*, i32*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uInt64_from_UInt32s(%struct.UInt64* %n, i32 %lo32, i32 %hi32) #0 {
entry:
  %n.addr = alloca %struct.UInt64*, align 8
  %lo32.addr = alloca i32, align 4
  %hi32.addr = alloca i32, align 4
  store %struct.UInt64* %n, %struct.UInt64** %n.addr, align 8
  store i32 %lo32, i32* %lo32.addr, align 4
  store i32 %hi32, i32* %hi32.addr, align 4
  %0 = load i32, i32* %hi32.addr, align 4
  %shr = lshr i32 %0, 24
  %and = and i32 %shr, 255
  %conv = trunc i32 %and to i8
  %1 = load %struct.UInt64*, %struct.UInt64** %n.addr, align 8
  %b = getelementptr inbounds %struct.UInt64, %struct.UInt64* %1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* %b, i64 0, i64 7
  store i8 %conv, i8* %arrayidx, align 1
  %2 = load i32, i32* %hi32.addr, align 4
  %shr1 = lshr i32 %2, 16
  %and2 = and i32 %shr1, 255
  %conv3 = trunc i32 %and2 to i8
  %3 = load %struct.UInt64*, %struct.UInt64** %n.addr, align 8
  %b4 = getelementptr inbounds %struct.UInt64, %struct.UInt64* %3, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [8 x i8], [8 x i8]* %b4, i64 0, i64 6
  store i8 %conv3, i8* %arrayidx5, align 1
  %4 = load i32, i32* %hi32.addr, align 4
  %shr6 = lshr i32 %4, 8
  %and7 = and i32 %shr6, 255
  %conv8 = trunc i32 %and7 to i8
  %5 = load %struct.UInt64*, %struct.UInt64** %n.addr, align 8
  %b9 = getelementptr inbounds %struct.UInt64, %struct.UInt64* %5, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [8 x i8], [8 x i8]* %b9, i64 0, i64 5
  store i8 %conv8, i8* %arrayidx10, align 1
  %6 = load i32, i32* %hi32.addr, align 4
  %and11 = and i32 %6, 255
  %conv12 = trunc i32 %and11 to i8
  %7 = load %struct.UInt64*, %struct.UInt64** %n.addr, align 8
  %b13 = getelementptr inbounds %struct.UInt64, %struct.UInt64* %7, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [8 x i8], [8 x i8]* %b13, i64 0, i64 4
  store i8 %conv12, i8* %arrayidx14, align 1
  %8 = load i32, i32* %lo32.addr, align 4
  %shr15 = lshr i32 %8, 24
  %and16 = and i32 %shr15, 255
  %conv17 = trunc i32 %and16 to i8
  %9 = load %struct.UInt64*, %struct.UInt64** %n.addr, align 8
  %b18 = getelementptr inbounds %struct.UInt64, %struct.UInt64* %9, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [8 x i8], [8 x i8]* %b18, i64 0, i64 3
  store i8 %conv17, i8* %arrayidx19, align 1
  %10 = load i32, i32* %lo32.addr, align 4
  %shr20 = lshr i32 %10, 16
  %and21 = and i32 %shr20, 255
  %conv22 = trunc i32 %and21 to i8
  %11 = load %struct.UInt64*, %struct.UInt64** %n.addr, align 8
  %b23 = getelementptr inbounds %struct.UInt64, %struct.UInt64* %11, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [8 x i8], [8 x i8]* %b23, i64 0, i64 2
  store i8 %conv22, i8* %arrayidx24, align 1
  %12 = load i32, i32* %lo32.addr, align 4
  %shr25 = lshr i32 %12, 8
  %and26 = and i32 %shr25, 255
  %conv27 = trunc i32 %and26 to i8
  %13 = load %struct.UInt64*, %struct.UInt64** %n.addr, align 8
  %b28 = getelementptr inbounds %struct.UInt64, %struct.UInt64* %13, i32 0, i32 0
  %arrayidx29 = getelementptr inbounds [8 x i8], [8 x i8]* %b28, i64 0, i64 1
  store i8 %conv27, i8* %arrayidx29, align 1
  %14 = load i32, i32* %lo32.addr, align 4
  %and30 = and i32 %14, 255
  %conv31 = trunc i32 %and30 to i8
  %15 = load %struct.UInt64*, %struct.UInt64** %n.addr, align 8
  %b32 = getelementptr inbounds %struct.UInt64, %struct.UInt64* %15, i32 0, i32 0
  %arrayidx33 = getelementptr inbounds [8 x i8], [8 x i8]* %b32, i64 0, i64 0
  store i8 %conv31, i8* %arrayidx33, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal double @uInt64_to_double(%struct.UInt64* %n) #0 {
entry:
  %n.addr = alloca %struct.UInt64*, align 8
  %i = alloca i32, align 4
  %base = alloca double, align 8
  %sum = alloca double, align 8
  store %struct.UInt64* %n, %struct.UInt64** %n.addr, align 8
  store double 1.000000e+00, double* %base, align 8
  store double 0.000000e+00, double* %sum, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load double, double* %base, align 8
  %2 = load %struct.UInt64*, %struct.UInt64** %n.addr, align 8
  %b = getelementptr inbounds %struct.UInt64, %struct.UInt64* %2, i32 0, i32 0
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* %b, i64 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = uitofp i8 %4 to double
  %mul = fmul double %1, %conv
  %5 = load double, double* %sum, align 8
  %add = fadd double %5, %mul
  store double %add, double* %sum, align 8
  %6 = load double, double* %base, align 8
  %mul1 = fmul double %6, 2.560000e+02
  store double %mul1, double* %base, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load double, double* %sum, align 8
  ret double %8
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uInt64_toAscii(i8* %outbuf, %struct.UInt64* %n) #0 {
entry:
  %outbuf.addr = alloca i8*, align 8
  %n.addr = alloca %struct.UInt64*, align 8
  %i = alloca i32, align 4
  %q = alloca i32, align 4
  %buf = alloca [32 x i8], align 16
  %nBuf = alloca i32, align 4
  %n_copy = alloca %struct.UInt64, align 1
  store i8* %outbuf, i8** %outbuf.addr, align 8
  store %struct.UInt64* %n, %struct.UInt64** %n.addr, align 8
  store i32 0, i32* %nBuf, align 4
  %0 = load %struct.UInt64*, %struct.UInt64** %n.addr, align 8
  %1 = bitcast %struct.UInt64* %n_copy to i8*
  %2 = bitcast %struct.UInt64* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1, i8* align 1 %2, i64 8, i1 false)
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %call = call i32 @uInt64_qrm10(%struct.UInt64* %n_copy)
  store i32 %call, i32* %q, align 4
  %3 = load i32, i32* %q, align 4
  %add = add nsw i32 %3, 48
  %conv = trunc i32 %add to i8
  %4 = load i32, i32* %nBuf, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i64 0, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  %5 = load i32, i32* %nBuf, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %nBuf, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %call1 = call zeroext i8 @uInt64_isZero(%struct.UInt64* %n_copy)
  %tobool = icmp ne i8 %call1, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %6 = load i8*, i8** %outbuf.addr, align 8
  %7 = load i32, i32* %nBuf, align 4
  %idxprom2 = sext i32 %7 to i64
  %arrayidx3 = getelementptr inbounds i8, i8* %6, i64 %idxprom2
  store i8 0, i8* %arrayidx3, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %nBuf, align 4
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %nBuf, align 4
  %11 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %10, %11
  %sub5 = sub nsw i32 %sub, 1
  %idxprom6 = sext i32 %sub5 to i64
  %arrayidx7 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i64 0, i64 %idxprom6
  %12 = load i8, i8* %arrayidx7, align 1
  %13 = load i8*, i8** %outbuf.addr, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %14 to i64
  %arrayidx9 = getelementptr inbounds i8, i8* %13, i64 %idxprom8
  store i8 %12, i8* %arrayidx9, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %inc10 = add nsw i32 %15, 1
  store i32 %inc10, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @configError() #5 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([236 x i8], [236 x i8]* @.str.77, i64 0, i64 0))
  call void @setExit(i32 3)
  %1 = load i32, i32* @exitValue, align 4
  call void @exit(i32 %1) #10
  unreachable
}

declare dso_local i32 @fgetc(%struct._IO_FILE*) #1

declare dso_local i32 @ungetc(i32, %struct._IO_FILE*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uInt64_qrm10(%struct.UInt64* %n) #0 {
entry:
  %n.addr = alloca %struct.UInt64*, align 8
  %rem = alloca i32, align 4
  %tmp = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.UInt64* %n, %struct.UInt64** %n.addr, align 8
  store i32 0, i32* %rem, align 4
  store i32 7, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %rem, align 4
  %mul = mul i32 %1, 256
  %2 = load %struct.UInt64*, %struct.UInt64** %n.addr, align 8
  %b = getelementptr inbounds %struct.UInt64, %struct.UInt64* %2, i32 0, i32 0
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* %b, i64 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %add = add i32 %mul, %conv
  store i32 %add, i32* %tmp, align 4
  %5 = load i32, i32* %tmp, align 4
  %div = udiv i32 %5, 10
  %conv1 = trunc i32 %div to i8
  %6 = load %struct.UInt64*, %struct.UInt64** %n.addr, align 8
  %b2 = getelementptr inbounds %struct.UInt64, %struct.UInt64* %6, i32 0, i32 0
  %7 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %7 to i64
  %arrayidx4 = getelementptr inbounds [8 x i8], [8 x i8]* %b2, i64 0, i64 %idxprom3
  store i8 %conv1, i8* %arrayidx4, align 1
  %8 = load i32, i32* %tmp, align 4
  %rem5 = urem i32 %8, 10
  store i32 %rem5, i32* %rem, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* %rem, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @uInt64_isZero(%struct.UInt64* %n) #0 {
entry:
  %retval = alloca i8, align 1
  %n.addr = alloca %struct.UInt64*, align 8
  %i = alloca i32, align 4
  store %struct.UInt64* %n, %struct.UInt64** %n.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.UInt64*, %struct.UInt64** %n.addr, align 8
  %b = getelementptr inbounds %struct.UInt64, %struct.UInt64* %1, i32 0, i32 0
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* %b, i64 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %cmp1 = icmp ne i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i8 0, i8* %retval, align 1
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i8 1, i8* %retval, align 1
  br label %return

return:                                           ; preds = %for.end, %if.then
  %5 = load i8, i8* %retval, align 1
  ret i8 %5
}

; Function Attrs: nounwind
declare dso_local i32 @chmod(i8*, i32) #2

; Function Attrs: nounwind
declare dso_local i32 @utime(i8*, %struct.utimbuf*) #2

; Function Attrs: nounwind
declare dso_local i32 @chown(i8*, i32, i32) #2

declare dso_local void @perror(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @mapSuffix(i8* %name, i8* %oldSuffix, i8* %newSuffix) #0 {
entry:
  %retval = alloca i8, align 1
  %name.addr = alloca i8*, align 8
  %oldSuffix.addr = alloca i8*, align 8
  %newSuffix.addr = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %oldSuffix, i8** %oldSuffix.addr, align 8
  store i8* %newSuffix, i8** %newSuffix.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i8*, i8** %oldSuffix.addr, align 8
  %call = call zeroext i8 @hasSuffix(i8* %0, i8* %1)
  %tobool = icmp ne i8 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8 0, i8* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %name.addr, align 8
  %3 = load i8*, i8** %name.addr, align 8
  %call1 = call i64 @strlen(i8* %3) #9
  %4 = load i8*, i8** %oldSuffix.addr, align 8
  %call2 = call i64 @strlen(i8* %4) #9
  %sub = sub i64 %call1, %call2
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %sub
  store i8 0, i8* %arrayidx, align 1
  %5 = load i8*, i8** %name.addr, align 8
  %6 = load i8*, i8** %newSuffix.addr, align 8
  %call3 = call i8* @strcat(i8* %5, i8* %6) #8
  store i8 1, i8* %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i8, i8* %retval, align 1
  ret i8 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @uncompressStream(%struct._IO_FILE* %zStream, %struct._IO_FILE* %stream) #0 {
entry:
  %retval = alloca i8, align 1
  %zStream.addr = alloca %struct._IO_FILE*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %bzf = alloca i8*, align 8
  %bzerr = alloca i32, align 4
  %bzerr_dummy = alloca i32, align 4
  %ret = alloca i32, align 4
  %nread = alloca i32, align 4
  %streamNo = alloca i32, align 4
  %i = alloca i32, align 4
  %obuf = alloca [5000 x i8], align 16
  %unused = alloca [5000 x i8], align 16
  %nUnused = alloca i32, align 4
  %unusedTmpV = alloca i8*, align 8
  %unusedTmp = alloca i8*, align 8
  store %struct._IO_FILE* %zStream, %struct._IO_FILE** %zStream.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store i8* null, i8** %bzf, align 8
  store i32 0, i32* %nUnused, align 4
  store i32 0, i32* %streamNo, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call = call i32 @ferror(%struct._IO_FILE* %0) #8
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %errhandler_io

if.end:                                           ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %zStream.addr, align 8
  %call1 = call i32 @ferror(%struct._IO_FILE* %1) #8
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  br label %errhandler_io

if.end4:                                          ; preds = %if.end
  br label %while.body

while.body:                                       ; preds = %if.end4, %if.end61
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %zStream.addr, align 8
  %3 = load i32, i32* @verbosity, align 4
  %4 = load i8, i8* @smallMode, align 1
  %conv = zext i8 %4 to i32
  %arraydecay = getelementptr inbounds [5000 x i8], [5000 x i8]* %unused, i64 0, i64 0
  %5 = load i32, i32* %nUnused, align 4
  %call5 = call i8* @BZ2_bzReadOpen(i32* %bzerr, %struct._IO_FILE* %2, i32 %3, i32 %conv, i8* %arraydecay, i32 %5)
  store i8* %call5, i8** %bzf, align 8
  %6 = load i8*, i8** %bzf, align 8
  %cmp = icmp eq i8* %6, null
  br i1 %cmp, label %if.then9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %7 = load i32, i32* %bzerr, align 4
  %cmp7 = icmp ne i32 %7, 0
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %lor.lhs.false, %while.body
  br label %errhandler

if.end10:                                         ; preds = %lor.lhs.false
  %8 = load i32, i32* %streamNo, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %streamNo, align 4
  br label %while.cond11

while.cond11:                                     ; preds = %if.end36, %if.end10
  %9 = load i32, i32* %bzerr, align 4
  %cmp12 = icmp eq i32 %9, 0
  br i1 %cmp12, label %while.body14, label %while.end

while.body14:                                     ; preds = %while.cond11
  %10 = load i8*, i8** %bzf, align 8
  %arraydecay15 = getelementptr inbounds [5000 x i8], [5000 x i8]* %obuf, i64 0, i64 0
  %call16 = call i32 @BZ2_bzRead(i32* %bzerr, i8* %10, i8* %arraydecay15, i32 5000)
  store i32 %call16, i32* %nread, align 4
  %11 = load i32, i32* %bzerr, align 4
  %cmp17 = icmp eq i32 %11, -5
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %while.body14
  br label %trycat

if.end20:                                         ; preds = %while.body14
  %12 = load i32, i32* %bzerr, align 4
  %cmp21 = icmp eq i32 %12, 0
  br i1 %cmp21, label %land.lhs.true, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %if.end20
  %13 = load i32, i32* %bzerr, align 4
  %cmp24 = icmp eq i32 %13, 4
  br i1 %cmp24, label %land.lhs.true, label %if.end32

land.lhs.true:                                    ; preds = %lor.lhs.false23, %if.end20
  %14 = load i32, i32* %nread, align 4
  %cmp26 = icmp sgt i32 %14, 0
  br i1 %cmp26, label %if.then28, label %if.end32

if.then28:                                        ; preds = %land.lhs.true
  %arraydecay29 = getelementptr inbounds [5000 x i8], [5000 x i8]* %obuf, i64 0, i64 0
  %15 = load i32, i32* %nread, align 4
  %conv30 = sext i32 %15 to i64
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call31 = call i64 @fwrite(i8* %arraydecay29, i64 1, i64 %conv30, %struct._IO_FILE* %16)
  br label %if.end32

if.end32:                                         ; preds = %if.then28, %land.lhs.true, %lor.lhs.false23
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call33 = call i32 @ferror(%struct._IO_FILE* %17) #8
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.end32
  br label %errhandler_io

if.end36:                                         ; preds = %if.end32
  br label %while.cond11

while.end:                                        ; preds = %while.cond11
  %18 = load i32, i32* %bzerr, align 4
  %cmp37 = icmp ne i32 %18, 4
  br i1 %cmp37, label %if.then39, label %if.end40

if.then39:                                        ; preds = %while.end
  br label %errhandler

if.end40:                                         ; preds = %while.end
  %19 = load i8*, i8** %bzf, align 8
  call void @BZ2_bzReadGetUnused(i32* %bzerr, i8* %19, i8** %unusedTmpV, i32* %nUnused)
  %20 = load i32, i32* %bzerr, align 4
  %cmp41 = icmp ne i32 %20, 0
  br i1 %cmp41, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end40
  call void @panic(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.88, i64 0, i64 0)) #11
  unreachable

if.end44:                                         ; preds = %if.end40
  %21 = load i8*, i8** %unusedTmpV, align 8
  store i8* %21, i8** %unusedTmp, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end44
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* %nUnused, align 4
  %cmp45 = icmp slt i32 %22, %23
  br i1 %cmp45, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load i8*, i8** %unusedTmp, align 8
  %25 = load i32, i32* %i, align 4
  %idxprom = sext i32 %25 to i64
  %arrayidx = getelementptr inbounds i8, i8* %24, i64 %idxprom
  %26 = load i8, i8* %arrayidx, align 1
  %27 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %27 to i64
  %arrayidx48 = getelementptr inbounds [5000 x i8], [5000 x i8]* %unused, i64 0, i64 %idxprom47
  store i8 %26, i8* %arrayidx48, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %i, align 4
  %inc49 = add nsw i32 %28, 1
  store i32 %inc49, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = load i8*, i8** %bzf, align 8
  call void @BZ2_bzReadClose(i32* %bzerr, i8* %29)
  %30 = load i32, i32* %bzerr, align 4
  %cmp50 = icmp ne i32 %30, 0
  br i1 %cmp50, label %if.then52, label %if.end53

if.then52:                                        ; preds = %for.end
  call void @panic(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.88, i64 0, i64 0)) #11
  unreachable

if.end53:                                         ; preds = %for.end
  %31 = load i32, i32* %nUnused, align 4
  %cmp54 = icmp eq i32 %31, 0
  br i1 %cmp54, label %land.lhs.true56, label %if.end61

land.lhs.true56:                                  ; preds = %if.end53
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %zStream.addr, align 8
  %call57 = call zeroext i8 @myfeof(%struct._IO_FILE* %32)
  %conv58 = zext i8 %call57 to i32
  %tobool59 = icmp ne i32 %conv58, 0
  br i1 %tobool59, label %if.then60, label %if.end61

if.then60:                                        ; preds = %land.lhs.true56
  br label %while.end62

if.end61:                                         ; preds = %land.lhs.true56, %if.end53
  br label %while.body

while.end62:                                      ; preds = %if.then60
  br label %closeok

closeok:                                          ; preds = %while.end120, %while.end62
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %zStream.addr, align 8
  %call63 = call i32 @ferror(%struct._IO_FILE* %33) #8
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %if.then65, label %if.end66

if.then65:                                        ; preds = %closeok
  br label %errhandler_io

if.end66:                                         ; preds = %closeok
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %zStream.addr, align 8
  %call67 = call i32 @fclose(%struct._IO_FILE* %34)
  store i32 %call67, i32* %ret, align 4
  %35 = load i32, i32* %ret, align 4
  %cmp68 = icmp eq i32 %35, -1
  br i1 %cmp68, label %if.then70, label %if.end71

if.then70:                                        ; preds = %if.end66
  br label %errhandler_io

if.end71:                                         ; preds = %if.end66
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call72 = call i32 @ferror(%struct._IO_FILE* %36) #8
  %tobool73 = icmp ne i32 %call72, 0
  br i1 %tobool73, label %if.then74, label %if.end75

if.then74:                                        ; preds = %if.end71
  br label %errhandler_io

if.end75:                                         ; preds = %if.end71
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call76 = call i32 @fflush(%struct._IO_FILE* %37)
  store i32 %call76, i32* %ret, align 4
  %38 = load i32, i32* %ret, align 4
  %cmp77 = icmp ne i32 %38, 0
  br i1 %cmp77, label %if.then79, label %if.end80

if.then79:                                        ; preds = %if.end75
  br label %errhandler_io

if.end80:                                         ; preds = %if.end75
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %cmp81 = icmp ne %struct._IO_FILE* %39, %40
  br i1 %cmp81, label %if.then83, label %if.end89

if.then83:                                        ; preds = %if.end80
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call84 = call i32 @fclose(%struct._IO_FILE* %41)
  store i32 %call84, i32* %ret, align 4
  store %struct._IO_FILE* null, %struct._IO_FILE** @outputHandleJustInCase, align 8
  %42 = load i32, i32* %ret, align 4
  %cmp85 = icmp eq i32 %42, -1
  br i1 %cmp85, label %if.then87, label %if.end88

if.then87:                                        ; preds = %if.then83
  br label %errhandler_io

if.end88:                                         ; preds = %if.then83
  br label %if.end89

if.end89:                                         ; preds = %if.end88, %if.end80
  store %struct._IO_FILE* null, %struct._IO_FILE** @outputHandleJustInCase, align 8
  %43 = load i32, i32* @verbosity, align 4
  %cmp90 = icmp sge i32 %43, 2
  br i1 %cmp90, label %if.then92, label %if.end94

if.then92:                                        ; preds = %if.end89
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call93 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.89, i64 0, i64 0))
  br label %if.end94

if.end94:                                         ; preds = %if.then92, %if.end89
  store i8 1, i8* %retval, align 1
  br label %return

trycat:                                           ; preds = %if.then19
  %45 = load i8, i8* @forceOverwrite, align 1
  %tobool95 = icmp ne i8 %45, 0
  br i1 %tobool95, label %if.then96, label %if.end121

if.then96:                                        ; preds = %trycat
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %zStream.addr, align 8
  call void @rewind(%struct._IO_FILE* %46)
  br label %while.body97

while.body97:                                     ; preds = %if.then96, %if.end119
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %zStream.addr, align 8
  %call98 = call zeroext i8 @myfeof(%struct._IO_FILE* %47)
  %tobool99 = icmp ne i8 %call98, 0
  br i1 %tobool99, label %if.then100, label %if.end101

if.then100:                                       ; preds = %while.body97
  br label %while.end120

if.end101:                                        ; preds = %while.body97
  %arraydecay102 = getelementptr inbounds [5000 x i8], [5000 x i8]* %obuf, i64 0, i64 0
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %zStream.addr, align 8
  %call103 = call i64 @fread(i8* %arraydecay102, i64 1, i64 5000, %struct._IO_FILE* %48)
  %conv104 = trunc i64 %call103 to i32
  store i32 %conv104, i32* %nread, align 4
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %zStream.addr, align 8
  %call105 = call i32 @ferror(%struct._IO_FILE* %49) #8
  %tobool106 = icmp ne i32 %call105, 0
  br i1 %tobool106, label %if.then107, label %if.end108

if.then107:                                       ; preds = %if.end101
  br label %errhandler_io

if.end108:                                        ; preds = %if.end101
  %50 = load i32, i32* %nread, align 4
  %cmp109 = icmp sgt i32 %50, 0
  br i1 %cmp109, label %if.then111, label %if.end115

if.then111:                                       ; preds = %if.end108
  %arraydecay112 = getelementptr inbounds [5000 x i8], [5000 x i8]* %obuf, i64 0, i64 0
  %51 = load i32, i32* %nread, align 4
  %conv113 = sext i32 %51 to i64
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call114 = call i64 @fwrite(i8* %arraydecay112, i64 1, i64 %conv113, %struct._IO_FILE* %52)
  br label %if.end115

if.end115:                                        ; preds = %if.then111, %if.end108
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call116 = call i32 @ferror(%struct._IO_FILE* %53) #8
  %tobool117 = icmp ne i32 %call116, 0
  br i1 %tobool117, label %if.then118, label %if.end119

if.then118:                                       ; preds = %if.end115
  br label %errhandler_io

if.end119:                                        ; preds = %if.end115
  br label %while.body97

while.end120:                                     ; preds = %if.then100
  br label %closeok

if.end121:                                        ; preds = %trycat
  br label %errhandler

errhandler:                                       ; preds = %if.end121, %if.then39, %if.then9
  %54 = load i8*, i8** %bzf, align 8
  call void @BZ2_bzReadClose(i32* %bzerr_dummy, i8* %54)
  %55 = load i32, i32* %bzerr, align 4
  switch i32 %55, label %sw.default [
    i32 -9, label %sw.bb
    i32 -6, label %sw.bb122
    i32 -4, label %sw.bb123
    i32 -3, label %sw.bb124
    i32 -7, label %sw.bb125
    i32 -5, label %sw.bb126
  ]

sw.bb:                                            ; preds = %errhandler
  call void @configError() #11
  unreachable

sw.bb122:                                         ; preds = %errhandler
  br label %errhandler_io

errhandler_io:                                    ; preds = %sw.bb122, %if.then118, %if.then107, %if.then87, %if.then79, %if.then74, %if.then70, %if.then65, %if.then35, %if.then3, %if.then
  call void @ioError() #11
  unreachable

sw.bb123:                                         ; preds = %errhandler
  call void @crcError() #11
  unreachable

sw.bb124:                                         ; preds = %errhandler
  call void @outOfMemory() #11
  unreachable

sw.bb125:                                         ; preds = %errhandler
  call void @compressedStreamEOF() #11
  unreachable

sw.bb126:                                         ; preds = %errhandler
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %zStream.addr, align 8
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %cmp127 = icmp ne %struct._IO_FILE* %56, %57
  br i1 %cmp127, label %if.then129, label %if.end131

if.then129:                                       ; preds = %sw.bb126
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %zStream.addr, align 8
  %call130 = call i32 @fclose(%struct._IO_FILE* %58)
  br label %if.end131

if.end131:                                        ; preds = %if.then129, %sw.bb126
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %cmp132 = icmp ne %struct._IO_FILE* %59, %60
  br i1 %cmp132, label %if.then134, label %if.end136

if.then134:                                       ; preds = %if.end131
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call135 = call i32 @fclose(%struct._IO_FILE* %61)
  br label %if.end136

if.end136:                                        ; preds = %if.then134, %if.end131
  %62 = load i32, i32* %streamNo, align 4
  %cmp137 = icmp eq i32 %62, 1
  br i1 %cmp137, label %if.then139, label %if.else

if.then139:                                       ; preds = %if.end136
  store i8 0, i8* %retval, align 1
  br label %return

if.else:                                          ; preds = %if.end136
  %63 = load i8, i8* @noisy, align 1
  %tobool140 = icmp ne i8 %63, 0
  br i1 %tobool140, label %if.then141, label %if.end143

if.then141:                                       ; preds = %if.else
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %65 = load i8*, i8** @progName, align 8
  %call142 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %64, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.90, i64 0, i64 0), i8* %65, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i64 0, i64 0))
  br label %if.end143

if.end143:                                        ; preds = %if.then141, %if.else
  store i8 1, i8* %retval, align 1
  br label %return

sw.default:                                       ; preds = %errhandler
  call void @panic(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.91, i64 0, i64 0)) #11
  unreachable

return:                                           ; preds = %if.end143, %if.then139, %if.end94
  %66 = load i8, i8* %retval, align 1
  ret i8 %66
}

declare dso_local i8* @BZ2_bzReadOpen(i32*, %struct._IO_FILE*, i32, i32, i8*, i32) #1

declare dso_local i32 @BZ2_bzRead(i32*, i8*, i8*, i32) #1

declare dso_local i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

declare dso_local void @BZ2_bzReadGetUnused(i32*, i8*, i8**, i32*) #1

declare dso_local void @BZ2_bzReadClose(i32*, i8*) #1

declare dso_local void @rewind(%struct._IO_FILE*) #1

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @crcError() #5 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1 = load i8*, i8** @progName, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.92, i64 0, i64 0), i8* %1)
  call void @showFileNames()
  call void @cadvise()
  call void @cleanUpAndFail(i32 2) #11
  unreachable
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @compressedStreamEOF() #5 {
entry:
  %0 = load i8, i8* @noisy, align 1
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load i8*, i8** @progName, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.93, i64 0, i64 0), i8* %2)
  %3 = load i8*, i8** @progName, align 8
  call void @perror(i8* %3)
  call void @showFileNames()
  call void @cadvise()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @cleanUpAndFail(i32 2) #11
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @testStream(%struct._IO_FILE* %zStream) #0 {
entry:
  %retval = alloca i8, align 1
  %zStream.addr = alloca %struct._IO_FILE*, align 8
  %bzf = alloca i8*, align 8
  %bzerr = alloca i32, align 4
  %bzerr_dummy = alloca i32, align 4
  %ret = alloca i32, align 4
  %nread = alloca i32, align 4
  %streamNo = alloca i32, align 4
  %i = alloca i32, align 4
  %obuf = alloca [5000 x i8], align 16
  %unused = alloca [5000 x i8], align 16
  %nUnused = alloca i32, align 4
  %unusedTmpV = alloca i8*, align 8
  %unusedTmp = alloca i8*, align 8
  store %struct._IO_FILE* %zStream, %struct._IO_FILE** %zStream.addr, align 8
  store i8* null, i8** %bzf, align 8
  store i32 0, i32* %nUnused, align 4
  store i32 0, i32* %streamNo, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %zStream.addr, align 8
  %call = call i32 @ferror(%struct._IO_FILE* %0) #8
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %errhandler_io

if.end:                                           ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.end, %if.end40
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %zStream.addr, align 8
  %2 = load i32, i32* @verbosity, align 4
  %3 = load i8, i8* @smallMode, align 1
  %conv = zext i8 %3 to i32
  %arraydecay = getelementptr inbounds [5000 x i8], [5000 x i8]* %unused, i64 0, i64 0
  %4 = load i32, i32* %nUnused, align 4
  %call1 = call i8* @BZ2_bzReadOpen(i32* %bzerr, %struct._IO_FILE* %1, i32 %2, i32 %conv, i8* %arraydecay, i32 %4)
  store i8* %call1, i8** %bzf, align 8
  %5 = load i8*, i8** %bzf, align 8
  %cmp = icmp eq i8* %5, null
  br i1 %cmp, label %if.then5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %6 = load i32, i32* %bzerr, align 4
  %cmp3 = icmp ne i32 %6, 0
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %lor.lhs.false, %while.body
  br label %errhandler

if.end6:                                          ; preds = %lor.lhs.false
  %7 = load i32, i32* %streamNo, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %streamNo, align 4
  br label %while.cond7

while.cond7:                                      ; preds = %if.end16, %if.end6
  %8 = load i32, i32* %bzerr, align 4
  %cmp8 = icmp eq i32 %8, 0
  br i1 %cmp8, label %while.body10, label %while.end

while.body10:                                     ; preds = %while.cond7
  %9 = load i8*, i8** %bzf, align 8
  %arraydecay11 = getelementptr inbounds [5000 x i8], [5000 x i8]* %obuf, i64 0, i64 0
  %call12 = call i32 @BZ2_bzRead(i32* %bzerr, i8* %9, i8* %arraydecay11, i32 5000)
  store i32 %call12, i32* %nread, align 4
  %10 = load i32, i32* %bzerr, align 4
  %cmp13 = icmp eq i32 %10, -5
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %while.body10
  br label %errhandler

if.end16:                                         ; preds = %while.body10
  br label %while.cond7

while.end:                                        ; preds = %while.cond7
  %11 = load i32, i32* %bzerr, align 4
  %cmp17 = icmp ne i32 %11, 4
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %while.end
  br label %errhandler

if.end20:                                         ; preds = %while.end
  %12 = load i8*, i8** %bzf, align 8
  call void @BZ2_bzReadGetUnused(i32* %bzerr, i8* %12, i8** %unusedTmpV, i32* %nUnused)
  %13 = load i32, i32* %bzerr, align 4
  %cmp21 = icmp ne i32 %13, 0
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end20
  call void @panic(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.98, i64 0, i64 0)) #11
  unreachable

if.end24:                                         ; preds = %if.end20
  %14 = load i8*, i8** %unusedTmpV, align 8
  store i8* %14, i8** %unusedTmp, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end24
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %nUnused, align 4
  %cmp25 = icmp slt i32 %15, %16
  br i1 %cmp25, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i8*, i8** %unusedTmp, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom = sext i32 %18 to i64
  %arrayidx = getelementptr inbounds i8, i8* %17, i64 %idxprom
  %19 = load i8, i8* %arrayidx, align 1
  %20 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %20 to i64
  %arrayidx28 = getelementptr inbounds [5000 x i8], [5000 x i8]* %unused, i64 0, i64 %idxprom27
  store i8 %19, i8* %arrayidx28, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %i, align 4
  %inc29 = add nsw i32 %21, 1
  store i32 %inc29, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load i8*, i8** %bzf, align 8
  call void @BZ2_bzReadClose(i32* %bzerr, i8* %22)
  %23 = load i32, i32* %bzerr, align 4
  %cmp30 = icmp ne i32 %23, 0
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %for.end
  call void @panic(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.98, i64 0, i64 0)) #11
  unreachable

if.end33:                                         ; preds = %for.end
  %24 = load i32, i32* %nUnused, align 4
  %cmp34 = icmp eq i32 %24, 0
  br i1 %cmp34, label %land.lhs.true, label %if.end40

land.lhs.true:                                    ; preds = %if.end33
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %zStream.addr, align 8
  %call36 = call zeroext i8 @myfeof(%struct._IO_FILE* %25)
  %conv37 = zext i8 %call36 to i32
  %tobool38 = icmp ne i32 %conv37, 0
  br i1 %tobool38, label %if.then39, label %if.end40

if.then39:                                        ; preds = %land.lhs.true
  br label %while.end41

if.end40:                                         ; preds = %land.lhs.true, %if.end33
  br label %while.body

while.end41:                                      ; preds = %if.then39
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %zStream.addr, align 8
  %call42 = call i32 @ferror(%struct._IO_FILE* %26) #8
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then44, label %if.end45

if.then44:                                        ; preds = %while.end41
  br label %errhandler_io

if.end45:                                         ; preds = %while.end41
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %zStream.addr, align 8
  %call46 = call i32 @fclose(%struct._IO_FILE* %27)
  store i32 %call46, i32* %ret, align 4
  %28 = load i32, i32* %ret, align 4
  %cmp47 = icmp eq i32 %28, -1
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.end45
  br label %errhandler_io

if.end50:                                         ; preds = %if.end45
  %29 = load i32, i32* @verbosity, align 4
  %cmp51 = icmp sge i32 %29, 2
  br i1 %cmp51, label %if.then53, label %if.end55

if.then53:                                        ; preds = %if.end50
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call54 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.89, i64 0, i64 0))
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %if.end50
  store i8 1, i8* %retval, align 1
  br label %return

errhandler:                                       ; preds = %if.then19, %if.then15, %if.then5
  %31 = load i8*, i8** %bzf, align 8
  call void @BZ2_bzReadClose(i32* %bzerr_dummy, i8* %31)
  %32 = load i32, i32* @verbosity, align 4
  %cmp56 = icmp eq i32 %32, 0
  br i1 %cmp56, label %if.then58, label %if.end60

if.then58:                                        ; preds = %errhandler
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %34 = load i8*, i8** @progName, align 8
  %call59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.99, i64 0, i64 0), i8* %34, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i64 0, i64 0))
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %errhandler
  %35 = load i32, i32* %bzerr, align 4
  switch i32 %35, label %sw.default [
    i32 -9, label %sw.bb
    i32 -6, label %sw.bb61
    i32 -4, label %sw.bb62
    i32 -3, label %sw.bb64
    i32 -7, label %sw.bb65
    i32 -5, label %sw.bb67
  ]

sw.bb:                                            ; preds = %if.end60
  call void @configError() #11
  unreachable

sw.bb61:                                          ; preds = %if.end60
  br label %errhandler_io

errhandler_io:                                    ; preds = %sw.bb61, %if.then49, %if.then44, %if.then
  call void @ioError() #11
  unreachable

sw.bb62:                                          ; preds = %if.end60
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call63 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.100, i64 0, i64 0))
  store i8 0, i8* %retval, align 1
  br label %return

sw.bb64:                                          ; preds = %if.end60
  call void @outOfMemory() #11
  unreachable

sw.bb65:                                          ; preds = %if.end60
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call66 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.101, i64 0, i64 0))
  store i8 0, i8* %retval, align 1
  br label %return

sw.bb67:                                          ; preds = %if.end60
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %zStream.addr, align 8
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %cmp68 = icmp ne %struct._IO_FILE* %38, %39
  br i1 %cmp68, label %if.then70, label %if.end72

if.then70:                                        ; preds = %sw.bb67
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %zStream.addr, align 8
  %call71 = call i32 @fclose(%struct._IO_FILE* %40)
  br label %if.end72

if.end72:                                         ; preds = %if.then70, %sw.bb67
  %41 = load i32, i32* %streamNo, align 4
  %cmp73 = icmp eq i32 %41, 1
  br i1 %cmp73, label %if.then75, label %if.else

if.then75:                                        ; preds = %if.end72
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call76 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.102, i64 0, i64 0))
  store i8 0, i8* %retval, align 1
  br label %return

if.else:                                          ; preds = %if.end72
  %43 = load i8, i8* @noisy, align 1
  %tobool77 = icmp ne i8 %43, 0
  br i1 %tobool77, label %if.then78, label %if.end80

if.then78:                                        ; preds = %if.else
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call79 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.103, i64 0, i64 0))
  br label %if.end80

if.end80:                                         ; preds = %if.then78, %if.else
  store i8 1, i8* %retval, align 1
  br label %return

sw.default:                                       ; preds = %if.end60
  call void @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.104, i64 0, i64 0)) #11
  unreachable

return:                                           ; preds = %if.end80, %if.then75, %sw.bb65, %sw.bb62, %if.end55
  %45 = load i8, i8* %retval, align 1
  ret i8 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noinline noreturn nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly }
attributes #10 = { noreturn nounwind }
attributes #11 = { noreturn }
attributes #12 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 11.0.0"}
