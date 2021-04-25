; ModuleID = '../llvm/lib/Transforms/SplitMerge/test/ir/sample1.ll'
source_filename = "../llvm/lib/Transforms/SplitMerge/test/src/sample1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"result was %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @dm_sample_cond_3(i32 %condition1, i32 %condition2, i32 %condition3) #0 {
entry:
  %cmp = icmp sgt i32 %condition1, 20
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %x.0 = phi i32 [ 15, %if.then ], [ 5, %if.else ]
  %cmp1 = icmp sgt i32 %condition2, 20
  br i1 %cmp1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.end
  %add = add nsw i32 20, 10
  br label %if.end4

if.else3:                                         ; preds = %if.end
  %sub = sub nsw i32 20, 10
  br label %if.end4

if.end4:                                          ; preds = %if.else3, %if.then2
  %y.0 = phi i32 [ %add, %if.then2 ], [ %sub, %if.else3 ]
  %cmp5 = icmp sgt i32 %condition3, 20
  br i1 %cmp5, label %if.then6, label %if.else8

if.then6:                                         ; preds = %if.end4
  %add7 = add nsw i32 %x.0, 30
  br label %if.end10

if.else8:                                         ; preds = %if.end4
  %sub9 = sub nsw i32 %x.0, 30
  br label %if.end10

if.end10:                                         ; preds = %if.else8, %if.then6
  %m.0 = phi i32 [ %add7, %if.then6 ], [ %sub9, %if.else8 ]
  %add12 = add nsw i32 10, %x.0
  %add13 = add nsw i32 %add12, %y.0
  %add14 = add nsw i32 %add13, %m.0
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %add14)
  ret i32 %add14
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 11.0.0"}
