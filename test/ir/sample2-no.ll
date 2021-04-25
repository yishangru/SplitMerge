; ModuleID = '../llvm/lib/Transforms/SplitMerge/test/src/sample2.c'
source_filename = "../llvm/lib/Transforms/SplitMerge/test/src/sample2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"b is %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"result was %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_sample_cond_loop() #0 {
entry:
  %a = alloca i32, align 4
  %loop = alloca i32, align 4
  %condition = alloca i32, align 4
  %b = alloca i32, align 4
  %retval5 = alloca i32, align 4
  store i32 0, i32* %a, align 4
  store i32 0, i32* %loop, align 4
  store i32 0, i32* %condition, align 4
  br label %while.body

while.body:                                       ; preds = %entry, %if.end4
  %0 = load i32, i32* %a, align 4
  store i32 %0, i32* %b, align 4
  %1 = load i32, i32* %condition, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  store i32 1, i32* %a, align 4
  %2 = load i32, i32* %a, align 4
  %3 = load i32, i32* %loop, align 4
  %add = add nsw i32 %3, %2
  store i32 %add, i32* %loop, align 4
  store i32 1, i32* %condition, align 4
  br label %if.end

if.else:                                          ; preds = %while.body
  store i32 2, i32* %a, align 4
  %4 = load i32, i32* %a, align 4
  %5 = load i32, i32* %loop, align 4
  %add1 = add nsw i32 %5, %4
  store i32 %add1, i32* %loop, align 4
  store i32 0, i32* %condition, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %b, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %6)
  %7 = load i32, i32* %loop, align 4
  %cmp2 = icmp sgt i32 %7, 10
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  br label %while.end

if.end4:                                          ; preds = %if.end
  br label %while.body

while.end:                                        ; preds = %if.then3
  %8 = load i32, i32* %a, align 4
  %9 = load i32, i32* %loop, align 4
  %add6 = add nsw i32 %8, %9
  store i32 %add6, i32* %retval5, align 4
  %10 = load i32, i32* %retval5, align 4
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %10)
  %11 = load i32, i32* %retval5, align 4
  ret i32 %11
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 11.0.0"}
