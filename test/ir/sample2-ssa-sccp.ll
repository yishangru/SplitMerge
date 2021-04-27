; ModuleID = '../llvm/lib/Transforms/SplitMerge/test/ir/sample2-ssa.ll'
source_filename = "../llvm/lib/Transforms/SplitMerge/test/src/sample2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"b is %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"result was %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @dm_sample_cond_loop(i32 %condition) #0 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %entry
  %loop.0 = phi i32 [ 0, %entry ], [ %loop.1, %cleanup.cont ]
  %a.0 = phi i32 [ 0, %entry ], [ %a.1, %cleanup.cont ]
  br label %while.body

while.body:                                       ; preds = %while.cond
  %cmp = icmp sgt i32 %condition, 10
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %add = add nsw i32 %loop.0, 1
  br label %if.end

if.else:                                          ; preds = %while.body
  %add1 = add nsw i32 %loop.0, 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %loop.1 = phi i32 [ %add, %if.then ], [ %add1, %if.else ]
  %a.1 = phi i32 [ 1, %if.then ], [ 2, %if.else ]
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %a.0)
  %cmp2 = icmp sgt i32 %loop.1, 10
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  br label %cleanup

if.end4:                                          ; preds = %if.end
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3
  %cleanup.dest.slot.0 = phi i32 [ 3, %if.then3 ], [ 0, %if.end4 ]
  switch i32 %cleanup.dest.slot.0, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end:                                        ; preds = %cleanup
  %add6 = add nsw i32 %a.1, %loop.1
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %add6)
  ret i32 %add6

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

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 11.0.0"}
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.unroll.disable"}
