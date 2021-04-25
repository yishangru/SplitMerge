; ModuleID = '../llvm/lib/Transforms/SplitMerge/test/src/sample1.c'
source_filename = "../llvm/lib/Transforms/SplitMerge/test/src/sample1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"result was %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @dm_sample_cond_3(i32 %condition1, i32 %condition2, i32 %condition3) #0 {
entry:
  %condition1.addr = alloca i32, align 4
  %condition2.addr = alloca i32, align 4
  %condition3.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %h = alloca i32, align 4
  %y = alloca i32, align 4
  %m = alloca i32, align 4
  %retval11 = alloca i32, align 4
  store i32 %condition1, i32* %condition1.addr, align 4, !tbaa !2
  store i32 %condition2, i32* %condition2.addr, align 4, !tbaa !2
  store i32 %condition3, i32* %condition3.addr, align 4, !tbaa !2
  %0 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #3
  store i32 10, i32* %x, align 4, !tbaa !2
  %1 = bitcast i32* %h to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #3
  %2 = load i32, i32* %x, align 4, !tbaa !2
  store i32 %2, i32* %h, align 4, !tbaa !2
  %3 = load i32, i32* %condition1.addr, align 4, !tbaa !2
  %cmp = icmp sgt i32 %3, 20
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 15, i32* %x, align 4, !tbaa !2
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 5, i32* %x, align 4, !tbaa !2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #3
  store i32 20, i32* %y, align 4, !tbaa !2
  %5 = load i32, i32* %condition2.addr, align 4, !tbaa !2
  %cmp1 = icmp sgt i32 %5, 20
  br i1 %cmp1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.end
  %6 = load i32, i32* %y, align 4, !tbaa !2
  %add = add nsw i32 %6, 10
  store i32 %add, i32* %y, align 4, !tbaa !2
  br label %if.end4

if.else3:                                         ; preds = %if.end
  %7 = load i32, i32* %y, align 4, !tbaa !2
  %sub = sub nsw i32 %7, 10
  store i32 %sub, i32* %y, align 4, !tbaa !2
  br label %if.end4

if.end4:                                          ; preds = %if.else3, %if.then2
  %8 = bitcast i32* %m to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3
  %9 = load i32, i32* %x, align 4, !tbaa !2
  store i32 %9, i32* %m, align 4, !tbaa !2
  %10 = load i32, i32* %condition3.addr, align 4, !tbaa !2
  %cmp5 = icmp sgt i32 %10, 20
  br i1 %cmp5, label %if.then6, label %if.else8

if.then6:                                         ; preds = %if.end4
  %11 = load i32, i32* %m, align 4, !tbaa !2
  %add7 = add nsw i32 %11, 30
  store i32 %add7, i32* %m, align 4, !tbaa !2
  br label %if.end10

if.else8:                                         ; preds = %if.end4
  %12 = load i32, i32* %m, align 4, !tbaa !2
  %sub9 = sub nsw i32 %12, 30
  store i32 %sub9, i32* %m, align 4, !tbaa !2
  br label %if.end10

if.end10:                                         ; preds = %if.else8, %if.then6
  %13 = bitcast i32* %retval11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #3
  %14 = load i32, i32* %h, align 4, !tbaa !2
  %15 = load i32, i32* %x, align 4, !tbaa !2
  %add12 = add nsw i32 %14, %15
  %16 = load i32, i32* %y, align 4, !tbaa !2
  %add13 = add nsw i32 %add12, %16
  %17 = load i32, i32* %m, align 4, !tbaa !2
  %add14 = add nsw i32 %add13, %17
  store i32 %add14, i32* %retval11, align 4, !tbaa !2
  %18 = load i32, i32* %retval11, align 4, !tbaa !2
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %18)
  %19 = load i32, i32* %retval11, align 4, !tbaa !2
  %20 = bitcast i32* %retval11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %20) #3
  %21 = bitcast i32* %m to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %21) #3
  %22 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #3
  %23 = bitcast i32* %h to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #3
  %24 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %24) #3
  ret i32 %19
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
