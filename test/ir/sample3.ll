; ModuleID = '../llvm/lib/Transforms/SplitMerge/test/src/sample3.c'
source_filename = "../llvm/lib/Transforms/SplitMerge/test/src/sample3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"b is %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"result was %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @dm_sample_loop_complex() #0 {
entry:
  %a = alloca i32, align 4
  %loop = alloca i32, align 4
  %condition = alloca i32, align 4
  %b = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %retval5 = alloca i32, align 4
  %0 = bitcast i32* %a to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #3
  store i32 0, i32* %a, align 4, !tbaa !2
  %1 = bitcast i32* %loop to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #3
  store i32 0, i32* %loop, align 4, !tbaa !2
  %2 = bitcast i32* %condition to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #3
  store i32 0, i32* %condition, align 4, !tbaa !2
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %entry
  br label %while.body

while.body:                                       ; preds = %while.cond
  %3 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #3
  %4 = load i32, i32* %a, align 4, !tbaa !2
  store i32 %4, i32* %b, align 4, !tbaa !2
  %5 = load i32, i32* %condition, align 4, !tbaa !2
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  store i32 1, i32* %a, align 4, !tbaa !2
  %6 = load i32, i32* %a, align 4, !tbaa !2
  %7 = load i32, i32* %loop, align 4, !tbaa !2
  %add = add nsw i32 %7, %6
  store i32 %add, i32* %loop, align 4, !tbaa !2
  store i32 1, i32* %condition, align 4, !tbaa !2
  br label %if.end

if.else:                                          ; preds = %while.body
  store i32 2, i32* %a, align 4, !tbaa !2
  %8 = load i32, i32* %a, align 4, !tbaa !2
  %9 = load i32, i32* %loop, align 4, !tbaa !2
  %add1 = add nsw i32 %9, %8
  store i32 %add1, i32* %loop, align 4, !tbaa !2
  store i32 0, i32* %condition, align 4, !tbaa !2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load i32, i32* %b, align 4, !tbaa !2
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %10)
  %11 = load i32, i32* %loop, align 4, !tbaa !2
  %cmp2 = icmp sgt i32 %11, 10
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 3, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  store i32 0, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3
  %12 = bitcast i32* %b to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %12) #3
  %cleanup.dest = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %cleanup
  %13 = bitcast i32* %retval5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #3
  %14 = load i32, i32* %a, align 4, !tbaa !2
  %15 = load i32, i32* %loop, align 4, !tbaa !2
  %add6 = add nsw i32 %14, %15
  store i32 %add6, i32* %retval5, align 4, !tbaa !2
  %16 = load i32, i32* %retval5, align 4, !tbaa !2
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %17 = load i32, i32* %retval5, align 4, !tbaa !2
  store i32 1, i32* %cleanup.dest.slot, align 4
  %18 = bitcast i32* %retval5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %18) #3
  %19 = bitcast i32* %condition to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %19) #3
  %20 = bitcast i32* %loop to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %20) #3
  %21 = bitcast i32* %a to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %21) #3
  ret i32 %17

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 11.0.0"}
!2 = !{!3, !3, i64 0}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.unroll.disable"}
