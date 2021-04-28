; ModuleID = '../llvm/lib/Transforms/SplitMerge/test/generate/sample2-ssa-sccp-gen.ll'
source_filename = "../llvm/lib/Transforms/SplitMerge/test/src/sample2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"b is %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"result was %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @dm_sample_cond_loop(i32 %condition) #0 {
entry.dup0:
  br label %while.cond.dup1

while.cond.dup1:                                  ; preds = %entry.dup0
  br label %while.body.dup1

while.body.dup1:                                  ; preds = %while.cond.dup1
  %cmp.dup1 = icmp sgt i32 %condition, 10
  br i1 %cmp.dup1, label %if.then.dup1, label %if.else.dup1

if.else.dup1:                                     ; preds = %while.body.dup1
  br label %if.end.dup0

if.end.dup0:                                      ; preds = %if.else.dup0, %if.then.dup0, %if.then.dup1, %if.else.dup1
  %loop.1.dup0 = phi i32 [ 2, %if.else.dup1 ], [ %add1.dup0, %if.else.dup0 ], [ 1, %if.then.dup1 ], [ %add.dup0, %if.then.dup0 ]
  %a.1.dup0 = phi i32 [ 2, %if.else.dup1 ], [ 2, %if.else.dup0 ], [ 1, %if.then.dup1 ], [ 1, %if.then.dup0 ]
  %add1.dup03 = phi i32 [ undef, %if.then.dup1 ], [ 2, %if.else.dup1 ], [ %add1.dup061, %if.then.dup0 ], [ %add1.dup0, %if.else.dup0 ]
  %add.dup04 = phi i32 [ 1, %if.then.dup1 ], [ undef, %if.else.dup1 ], [ %add.dup0, %if.then.dup0 ], [ %add.dup066, %if.else.dup0 ]
  %loop.0.dup023 = phi i32 [ 0, %if.then.dup1 ], [ 0, %if.else.dup1 ], [ %loop.0.dup057, %if.then.dup0 ], [ %loop.0.dup062, %if.else.dup0 ]
  %a.0.dup024 = phi i32 [ 0, %if.then.dup1 ], [ 0, %if.else.dup1 ], [ %a.0.dup059, %if.then.dup0 ], [ %a.0.dup064, %if.else.dup0 ]
  %call.dup0 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %a.0.dup024)
  %cmp2.dup0 = icmp sgt i32 %loop.1.dup0, 10
  br i1 %cmp2.dup0, label %if.then3.dup0, label %if.end4.dup0

if.then.dup1:                                     ; preds = %while.body.dup1
  br label %if.end.dup0

if.then.dup0:                                     ; preds = %while.body.dup0
  %loop.0.dup057 = phi i32 [ %loop.0.dup052, %while.body.dup0 ]
  %a.1.dup058 = phi i32 [ %a.1.dup053, %while.body.dup0 ]
  %a.0.dup059 = phi i32 [ %a.0.dup051, %while.body.dup0 ]
  %loop.1.dup060 = phi i32 [ %loop.1.dup054, %while.body.dup0 ]
  %add1.dup061 = phi i32 [ %add1.dup055, %while.body.dup0 ]
  %add.dup0 = add nsw i32 %loop.0.dup057, 1
  br label %if.end.dup0

while.body.dup0:                                  ; preds = %while.cond.dup0
  %a.0.dup051 = phi i32 [ %a.0.dup0, %while.cond.dup0 ]
  %loop.0.dup052 = phi i32 [ %loop.0.dup0, %while.cond.dup0 ]
  %a.1.dup053 = phi i32 [ %a.1.dup039, %while.cond.dup0 ]
  %loop.1.dup054 = phi i32 [ %loop.1.dup040, %while.cond.dup0 ]
  %add1.dup055 = phi i32 [ %add1.dup042, %while.cond.dup0 ]
  %add.dup056 = phi i32 [ %add.dup041, %while.cond.dup0 ]
  %cmp.dup0 = icmp sgt i32 %condition, 10
  br i1 %cmp.dup0, label %if.then.dup0, label %if.else.dup0

while.cond.dup0:                                  ; preds = %cleanup.cont.dup0
  %loop.0.dup0 = phi i32 [ %loop.1.dup033, %cleanup.cont.dup0 ]
  %a.0.dup0 = phi i32 [ %a.1.dup034, %cleanup.cont.dup0 ]
  %a.1.dup039 = phi i32 [ %a.1.dup034, %cleanup.cont.dup0 ]
  %loop.1.dup040 = phi i32 [ %loop.1.dup033, %cleanup.cont.dup0 ]
  %add.dup041 = phi i32 [ %add.dup038, %cleanup.cont.dup0 ]
  %add1.dup042 = phi i32 [ %add1.dup037, %cleanup.cont.dup0 ]
  br label %while.body.dup0

cleanup.cont.dup0:                                ; preds = %cleanup.dup0
  %loop.1.dup033 = phi i32 [ %loop.1.dup08, %cleanup.dup0 ]
  %a.1.dup034 = phi i32 [ %a.1.dup07, %cleanup.dup0 ]
  %loop.0.dup035 = phi i32 [ %loop.0.dup028, %cleanup.dup0 ]
  %a.0.dup036 = phi i32 [ %a.0.dup027, %cleanup.dup0 ]
  %add1.dup037 = phi i32 [ %add1.dup09, %cleanup.dup0 ]
  %add.dup038 = phi i32 [ %add.dup010, %cleanup.dup0 ]
  br label %while.cond.dup0

cleanup.dup0:                                     ; preds = %if.end4.dup0, %if.then3.dup0
  %cleanup.dest.slot.0.dup0 = phi i32 [ 0, %if.end4.dup0 ], [ 3, %if.then3.dup0 ]
  %a.1.dup07 = phi i32 [ %a.1.dup015, %if.then3.dup0 ], [ %a.1.dup02, %if.end4.dup0 ]
  %loop.1.dup08 = phi i32 [ %loop.1.dup016, %if.then3.dup0 ], [ %loop.1.dup01, %if.end4.dup0 ]
  %add1.dup09 = phi i32 [ %add1.dup018, %if.then3.dup0 ], [ %add1.dup06, %if.end4.dup0 ]
  %add.dup010 = phi i32 [ %add.dup017, %if.then3.dup0 ], [ %add.dup05, %if.end4.dup0 ]
  %a.0.dup027 = phi i32 [ %a.0.dup032, %if.then3.dup0 ], [ %a.0.dup026, %if.end4.dup0 ]
  %loop.0.dup028 = phi i32 [ %loop.0.dup031, %if.then3.dup0 ], [ %loop.0.dup025, %if.end4.dup0 ]
  switch i32 %cleanup.dest.slot.0.dup0, label %unreachable.dup0 [
    i32 0, label %cleanup.cont.dup0
    i32 3, label %while.end.dup0
  ]

if.then3.dup0:                                    ; preds = %if.end.dup0
  %a.1.dup015 = phi i32 [ %a.1.dup0, %if.end.dup0 ]
  %loop.1.dup016 = phi i32 [ %loop.1.dup0, %if.end.dup0 ]
  %add.dup017 = phi i32 [ %add.dup04, %if.end.dup0 ]
  %add1.dup018 = phi i32 [ %add1.dup03, %if.end.dup0 ]
  %loop.0.dup031 = phi i32 [ %loop.0.dup023, %if.end.dup0 ]
  %a.0.dup032 = phi i32 [ %a.0.dup024, %if.end.dup0 ]
  br label %cleanup.dup0

if.end4.dup0:                                     ; preds = %if.end.dup0
  %loop.1.dup01 = phi i32 [ %loop.1.dup0, %if.end.dup0 ]
  %a.1.dup02 = phi i32 [ %a.1.dup0, %if.end.dup0 ]
  %add.dup05 = phi i32 [ %add.dup04, %if.end.dup0 ]
  %add1.dup06 = phi i32 [ %add1.dup03, %if.end.dup0 ]
  %loop.0.dup025 = phi i32 [ %loop.0.dup023, %if.end.dup0 ]
  %a.0.dup026 = phi i32 [ %a.0.dup024, %if.end.dup0 ]
  br label %cleanup.dup0

while.end.dup0:                                   ; preds = %cleanup.dup0
  %loop.1.dup011 = phi i32 [ %loop.1.dup08, %cleanup.dup0 ]
  %a.1.dup012 = phi i32 [ %a.1.dup07, %cleanup.dup0 ]
  %add.dup013 = phi i32 [ %add.dup010, %cleanup.dup0 ]
  %add1.dup014 = phi i32 [ %add1.dup09, %cleanup.dup0 ]
  %loop.0.dup029 = phi i32 [ %loop.0.dup028, %cleanup.dup0 ]
  %a.0.dup030 = phi i32 [ %a.0.dup027, %cleanup.dup0 ]
  %add6.dup0 = add nsw i32 %a.1.dup012, %loop.1.dup011
  %call7.dup0 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %add6.dup0)
  ret i32 %add6.dup0

unreachable.dup0:                                 ; preds = %cleanup.dup0
  %loop.1.dup045 = phi i32 [ %loop.1.dup08, %cleanup.dup0 ]
  %a.1.dup046 = phi i32 [ %a.1.dup07, %cleanup.dup0 ]
  %loop.0.dup047 = phi i32 [ %loop.0.dup028, %cleanup.dup0 ]
  %a.0.dup048 = phi i32 [ %a.0.dup027, %cleanup.dup0 ]
  %add1.dup049 = phi i32 [ %add1.dup09, %cleanup.dup0 ]
  %add.dup050 = phi i32 [ %add.dup010, %cleanup.dup0 ]
  unreachable

if.else.dup0:                                     ; preds = %while.body.dup0
  %loop.0.dup062 = phi i32 [ %loop.0.dup052, %while.body.dup0 ]
  %a.1.dup063 = phi i32 [ %a.1.dup053, %while.body.dup0 ]
  %a.0.dup064 = phi i32 [ %a.0.dup051, %while.body.dup0 ]
  %loop.1.dup065 = phi i32 [ %loop.1.dup054, %while.body.dup0 ]
  %add.dup066 = phi i32 [ %add.dup056, %while.body.dup0 ]
  %add1.dup0 = add nsw i32 %loop.0.dup062, 2
  br label %if.end.dup0
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
