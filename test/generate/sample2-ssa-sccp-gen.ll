; ModuleID = '../llvm/lib/Transforms/SplitMerge/test/ir/sample2-ssa-sccp.ll'
source_filename = "../llvm/lib/Transforms/SplitMerge/test/src/sample2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"b is %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"result was %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @dm_sample_cond_loop(i32 %condition) #0 {
entry.dup0:
  br label %while.cond.dup1

while.cond.dup1:                                  ; preds = %entry.dup0, %cleanup.cont.dup1
  %loop.0.dup1 = phi i32 [ 0, %entry.dup0 ], [ %loop.1, %cleanup.cont.dup1 ]
  %a.0.dup1 = phi i32 [ 0, %entry.dup0 ], [ %a.1, %cleanup.cont.dup1 ]
  br label %while.body.dup1

cleanup.cont.dup1:                                ; No predecessors!
  br label %while.cond.dup1, !llvm.loop !2

cleanup.dup1:                                     ; preds = %if.then3.dup1, %if.end4.dup1
  %cleanup.dest.slot.0.dup1 = phi i32 [ 3, %if.then3.dup1 ], [ 0, %if.end4.dup1 ]
  %loop.1.dup11 = phi i32 [ %loop.1.dup1, %if.end4.dup1 ], [ %loop.1.dup1, %if.then3.dup1 ]
  %a.1.dup12 = phi i32 [ %a.1.dup1, %if.end4.dup1 ], [ %a.1.dup1, %if.then3.dup1 ]
  %add1.dup13 = phi i32 [ %add1.dup1, %if.end4.dup1 ], [ %add1.dup1, %if.then3.dup1 ]
  %add.dup14 = phi i32 [ %add.dup1, %if.end4.dup1 ], [ %add.dup1, %if.then3.dup1 ]
  switch i32 %cleanup.dest.slot.0, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %while.end
  ]

if.then3.dup1:                                    ; preds = %if.end.dup1
  br label %cleanup.dup1

if.end.dup1:                                      ; preds = %if.then.dup1, %if.else.dup1
  %loop.1.dup1 = phi i32 [ %add.dup1, %if.then.dup1 ], [ %add1.dup1, %if.else.dup1 ]
  %a.1.dup1 = phi i32 [ 1, %if.then.dup1 ], [ 2, %if.else.dup1 ]
  %call.dup1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %a.0)
  %cmp2.dup1 = icmp sgt i32 %loop.1, 10
  br i1 %cmp2, label %if.then3.dup1, label %if.end4.dup1

if.then.dup1:                                     ; preds = %while.body.dup1
  %add.dup1 = add nsw i32 %loop.0, 1
  br label %if.end.dup1

while.body.dup1:                                  ; preds = %while.cond.dup1
  %cmp.dup1 = icmp sgt i32 %condition, 10
  br i1 %cmp, label %if.then.dup1, label %if.else.dup1

if.else.dup1:                                     ; preds = %while.body.dup1
  %add1.dup1 = add nsw i32 %loop.0, 2
  br label %if.end.dup1

if.end4.dup1:                                     ; preds = %if.end.dup1
  br label %cleanup.dup1

while.end.dup0:                                   ; No predecessors!
  %add6.dup0 = add nsw i32 %a.1.dup12, %loop.1.dup11
  %call7.dup0 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %add6)
  ret i32 %add6

unreachable.dup0:                                 ; No predecessors!
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

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 11.0.0"}
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.unroll.disable"}
