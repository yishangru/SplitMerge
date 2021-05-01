; ModuleID = '../llvm/lib/Transforms/SplitMerge/test/generate/sample1-ssa-sccp-gen.ll'
source_filename = "../llvm/lib/Transforms/SplitMerge/test/src/sample1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"result was %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @dm_sample_cond_3(i32 %condition1, i32 %condition2, i32 %condition3) #0 {
entry.dup0:
  %cmp.dup0 = icmp sgt i32 %condition1, 20
  br i1 %cmp.dup0, label %if.then.dup0, label %if.else.dup0

if.else.dup0:                                     ; preds = %entry.dup0
  br label %if.end.dup2

if.end.dup2:                                      ; preds = %if.else.dup0
  %cmp1.dup2 = icmp sgt i32 %condition2, 20
  br i1 %cmp1.dup2, label %if.then2.dup2, label %if.else3.dup2

if.else3.dup2:                                    ; preds = %if.end.dup2
  br label %if.end4.dup2

if.end4.dup2:                                     ; preds = %if.then2.dup2, %if.else3.dup2
  %y.0.dup2 = phi i32 [ 10, %if.else3.dup2 ], [ 30, %if.then2.dup2 ]
  %cmp5.dup2 = icmp sgt i32 %condition3, 20
  br i1 %cmp5.dup2, label %if.then6.dup2, label %if.else8.dup2

if.then2.dup2:                                    ; preds = %if.end.dup2
  br label %if.end4.dup2

if.else8.dup2:                                    ; preds = %if.end4.dup2
  %y.0.dup215 = phi i32 [ %y.0.dup2, %if.end4.dup2 ]
  br label %if.end10.dup2

if.end10.dup2:                                    ; preds = %if.then6.dup2, %if.else8.dup2
  %m.0.dup2 = phi i32 [ -25, %if.else8.dup2 ], [ 35, %if.then6.dup2 ]
  %y.0.dup220 = phi i32 [ %y.0.dup213, %if.then6.dup2 ], [ %y.0.dup215, %if.else8.dup2 ]
  %add13.dup2 = add nsw i32 15, %y.0.dup220
  %add14.dup2 = add nsw i32 %add13.dup2, %m.0.dup2
  %call.dup2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %add14.dup2)
  ret i32 %add14.dup2

if.then6.dup2:                                    ; preds = %if.end4.dup2
  %y.0.dup213 = phi i32 [ %y.0.dup2, %if.end4.dup2 ]
  br label %if.end10.dup2

if.then.dup0:                                     ; preds = %entry.dup0
  br label %if.end.dup1

if.end.dup1:                                      ; preds = %if.then.dup0
  %cmp1.dup1 = icmp sgt i32 %condition2, 20
  br i1 %cmp1.dup1, label %if.then2.dup1, label %if.else3.dup1

if.else3.dup1:                                    ; preds = %if.end.dup1
  br label %if.end4.dup1

if.end4.dup1:                                     ; preds = %if.then2.dup1, %if.else3.dup1
  %y.0.dup1 = phi i32 [ 30, %if.then2.dup1 ], [ 10, %if.else3.dup1 ]
  %cmp5.dup1 = icmp sgt i32 %condition3, 20
  br i1 %cmp5.dup1, label %if.then6.dup1, label %if.else8.dup1

if.then2.dup1:                                    ; preds = %if.end.dup1
  br label %if.end4.dup1

if.else8.dup1:                                    ; preds = %if.end4.dup1
  %y.0.dup12 = phi i32 [ %y.0.dup1, %if.end4.dup1 ]
  br label %if.end10.dup1

if.end10.dup1:                                    ; preds = %if.then6.dup1, %if.else8.dup1
  %m.0.dup1 = phi i32 [ 45, %if.then6.dup1 ], [ -15, %if.else8.dup1 ]
  %y.0.dup19 = phi i32 [ %y.0.dup12, %if.else8.dup1 ], [ %y.0.dup16, %if.then6.dup1 ]
  %add13.dup1 = add nsw i32 25, %y.0.dup19
  %add14.dup1 = add nsw i32 %add13.dup1, %m.0.dup1
  %call.dup1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %add14.dup1)
  ret i32 %add14.dup1

if.then6.dup1:                                    ; preds = %if.end4.dup1
  %y.0.dup16 = phi i32 [ %y.0.dup1, %if.end4.dup1 ]
  br label %if.end10.dup1
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
