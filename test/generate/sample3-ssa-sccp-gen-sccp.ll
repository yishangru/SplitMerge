; ModuleID = '../llvm/lib/Transforms/SplitMerge/test/generate/sample3-ssa-sccp-gen.ll'
source_filename = "../llvm/lib/Transforms/SplitMerge/test/src/sample3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"b is %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"result was %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @dm_sample_loop_complex() #0 {
entry.dup0:
  br label %while.cond.dup1

while.cond.dup1:                                  ; preds = %entry.dup0
  br label %while.body.dup1

while.body.dup1:                                  ; preds = %while.cond.dup1
  br i1 true, label %if.then.dup0, label %if.else.dup0

if.else.dup0:                                     ; preds = %while.body.dup0, %while.body.dup1
  %loop.0.dup020 = phi i32 [ %loop.0.dup08, %while.body.dup0 ], [ 0, %while.body.dup1 ]
  %a.0.dup021 = phi i32 [ %a.0.dup09, %while.body.dup0 ], [ 0, %while.body.dup1 ]
  %condition.0.dup022 = phi i32 [ %condition.0.dup010, %while.body.dup0 ], [ 0, %while.body.dup1 ]
  %condition.1.dup061 = phi i32 [ %condition.1.dup054, %while.body.dup0 ], [ undef, %while.body.dup1 ]
  %loop.1.dup062 = phi i32 [ %loop.1.dup053, %while.body.dup0 ], [ undef, %while.body.dup1 ]
  %a.1.dup063 = phi i32 [ %a.1.dup055, %while.body.dup0 ], [ undef, %while.body.dup1 ]
  %add.dup064 = phi i32 [ %add.dup056, %while.body.dup0 ], [ undef, %while.body.dup1 ]
  %add1.dup0 = add nsw i32 %loop.0.dup020, 2
  br label %if.end.dup0

while.body.dup0:                                  ; preds = %while.cond.dup0
  %loop.0.dup08 = phi i32 [ %loop.0.dup0, %while.cond.dup0 ]
  %a.0.dup09 = phi i32 [ %a.0.dup0, %while.cond.dup0 ]
  %condition.0.dup010 = phi i32 [ %condition.0.dup0, %while.cond.dup0 ]
  %add1.dup052 = phi i32 [ %add1.dup049, %while.cond.dup0 ]
  %loop.1.dup053 = phi i32 [ %loop.1.dup050, %while.cond.dup0 ]
  %condition.1.dup054 = phi i32 [ %condition.1.dup051, %while.cond.dup0 ]
  %a.1.dup055 = phi i32 [ %a.1.dup047, %while.cond.dup0 ]
  %add.dup056 = phi i32 [ %add.dup048, %while.cond.dup0 ]
  %cmp.dup0 = icmp eq i32 %condition.0.dup010, 0
  br i1 %cmp.dup0, label %if.then.dup0, label %if.else.dup0

while.cond.dup0:                                  ; preds = %cleanup.cont.dup0
  %condition.0.dup0 = phi i32 [ %condition.1.dup042, %cleanup.cont.dup0 ]
  %loop.0.dup0 = phi i32 [ %loop.1.dup041, %cleanup.cont.dup0 ]
  %a.0.dup0 = phi i32 [ %a.1.dup043, %cleanup.cont.dup0 ]
  %a.1.dup047 = phi i32 [ %a.1.dup043, %cleanup.cont.dup0 ]
  %add.dup048 = phi i32 [ %add.dup039, %cleanup.cont.dup0 ]
  %add1.dup049 = phi i32 [ %add1.dup045, %cleanup.cont.dup0 ]
  %loop.1.dup050 = phi i32 [ %loop.1.dup041, %cleanup.cont.dup0 ]
  %condition.1.dup051 = phi i32 [ %condition.1.dup042, %cleanup.cont.dup0 ]
  br label %while.body.dup0

cleanup.cont.dup0:                                ; preds = %cleanup.dup0
  %add.dup039 = phi i32 [ %add.dup036, %cleanup.dup0 ]
  %loop.0.dup040 = phi i32 [ %loop.0.dup037, %cleanup.dup0 ]
  %loop.1.dup041 = phi i32 [ %loop.1.dup038, %cleanup.dup0 ]
  %condition.1.dup042 = phi i32 [ %condition.1.dup032, %cleanup.dup0 ]
  %a.1.dup043 = phi i32 [ %a.1.dup031, %cleanup.dup0 ]
  %condition.0.dup044 = phi i32 [ %condition.0.dup033, %cleanup.dup0 ]
  %add1.dup045 = phi i32 [ %add1.dup035, %cleanup.dup0 ]
  %a.0.dup046 = phi i32 [ %a.0.dup034, %cleanup.dup0 ]
  br label %while.cond.dup0

cleanup.dup0:                                     ; preds = %if.end4.dup0, %if.then3.dup0
  %cleanup.dest.slot.0.dup0 = phi i32 [ 0, %if.end4.dup0 ], [ 3, %if.then3.dup0 ]
  %a.1.dup031 = phi i32 [ %a.1.dup028, %if.then3.dup0 ], [ %a.1.dup02, %if.end4.dup0 ]
  %condition.1.dup032 = phi i32 [ %condition.1.dup027, %if.then3.dup0 ], [ %condition.1.dup03, %if.end4.dup0 ]
  %condition.0.dup033 = phi i32 [ %condition.0.dup026, %if.then3.dup0 ], [ %condition.0.dup018, %if.end4.dup0 ]
  %a.0.dup034 = phi i32 [ %a.0.dup029, %if.then3.dup0 ], [ %a.0.dup019, %if.end4.dup0 ]
  %add1.dup035 = phi i32 [ %add1.dup030, %if.then3.dup0 ], [ %add1.dup07, %if.end4.dup0 ]
  %add.dup036 = phi i32 [ %add.dup024, %if.then3.dup0 ], [ %add.dup06, %if.end4.dup0 ]
  %loop.0.dup037 = phi i32 [ %loop.0.dup023, %if.then3.dup0 ], [ %loop.0.dup017, %if.end4.dup0 ]
  %loop.1.dup038 = phi i32 [ %loop.1.dup025, %if.then3.dup0 ], [ %loop.1.dup01, %if.end4.dup0 ]
  switch i32 %cleanup.dest.slot.0.dup0, label %unreachable.dup0 [
    i32 0, label %cleanup.cont.dup0
    i32 3, label %while.end.dup0
  ]

if.then3.dup0:                                    ; preds = %if.end.dup0
  %loop.0.dup023 = phi i32 [ %loop.0.dup014, %if.end.dup0 ]
  %add.dup024 = phi i32 [ %add.dup05, %if.end.dup0 ]
  %loop.1.dup025 = phi i32 [ %loop.1.dup0, %if.end.dup0 ]
  %condition.0.dup026 = phi i32 [ %condition.0.dup015, %if.end.dup0 ]
  %condition.1.dup027 = phi i32 [ %condition.1.dup0, %if.end.dup0 ]
  %a.1.dup028 = phi i32 [ %a.1.dup0, %if.end.dup0 ]
  %a.0.dup029 = phi i32 [ %a.0.dup016, %if.end.dup0 ]
  %add1.dup030 = phi i32 [ %add1.dup04, %if.end.dup0 ]
  br label %cleanup.dup0

if.end.dup0:                                      ; preds = %if.then.dup0, %if.else.dup0
  %condition.1.dup0 = phi i32 [ 0, %if.else.dup0 ], [ 1, %if.then.dup0 ]
  %loop.1.dup0 = phi i32 [ %add1.dup0, %if.else.dup0 ], [ %add.dup0, %if.then.dup0 ]
  %a.1.dup0 = phi i32 [ 2, %if.else.dup0 ], [ 1, %if.then.dup0 ]
  %add1.dup04 = phi i32 [ %add1.dup060, %if.then.dup0 ], [ %add1.dup0, %if.else.dup0 ]
  %add.dup05 = phi i32 [ %add.dup0, %if.then.dup0 ], [ %add.dup064, %if.else.dup0 ]
  %loop.0.dup014 = phi i32 [ %loop.0.dup011, %if.then.dup0 ], [ %loop.0.dup020, %if.else.dup0 ]
  %condition.0.dup015 = phi i32 [ %condition.0.dup013, %if.then.dup0 ], [ %condition.0.dup022, %if.else.dup0 ]
  %a.0.dup016 = phi i32 [ %a.0.dup012, %if.then.dup0 ], [ %a.0.dup021, %if.else.dup0 ]
  %call.dup0 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %a.0.dup016)
  %cmp2.dup0 = icmp sgt i32 %loop.1.dup0, 10
  br i1 %cmp2.dup0, label %if.then3.dup0, label %if.end4.dup0

if.then.dup0:                                     ; preds = %while.body.dup0, %while.body.dup1
  %loop.0.dup011 = phi i32 [ %loop.0.dup08, %while.body.dup0 ], [ 0, %while.body.dup1 ]
  %a.0.dup012 = phi i32 [ %a.0.dup09, %while.body.dup0 ], [ 0, %while.body.dup1 ]
  %condition.0.dup013 = phi i32 [ %condition.0.dup010, %while.body.dup0 ], [ 0, %while.body.dup1 ]
  %condition.1.dup057 = phi i32 [ %condition.1.dup054, %while.body.dup0 ], [ undef, %while.body.dup1 ]
  %loop.1.dup058 = phi i32 [ %loop.1.dup053, %while.body.dup0 ], [ undef, %while.body.dup1 ]
  %a.1.dup059 = phi i32 [ %a.1.dup055, %while.body.dup0 ], [ undef, %while.body.dup1 ]
  %add1.dup060 = phi i32 [ %add1.dup052, %while.body.dup0 ], [ undef, %while.body.dup1 ]
  %add.dup0 = add nsw i32 %loop.0.dup011, 1
  br label %if.end.dup0

if.end4.dup0:                                     ; preds = %if.end.dup0
  %loop.1.dup01 = phi i32 [ %loop.1.dup0, %if.end.dup0 ]
  %a.1.dup02 = phi i32 [ %a.1.dup0, %if.end.dup0 ]
  %condition.1.dup03 = phi i32 [ %condition.1.dup0, %if.end.dup0 ]
  %add.dup06 = phi i32 [ %add.dup05, %if.end.dup0 ]
  %add1.dup07 = phi i32 [ %add1.dup04, %if.end.dup0 ]
  %loop.0.dup017 = phi i32 [ %loop.0.dup014, %if.end.dup0 ]
  %condition.0.dup018 = phi i32 [ %condition.0.dup015, %if.end.dup0 ]
  %a.0.dup019 = phi i32 [ %a.0.dup016, %if.end.dup0 ]
  br label %cleanup.dup0

while.end.dup0:                                   ; preds = %cleanup.dup0
  %add.dup076 = phi i32 [ %add.dup036, %cleanup.dup0 ]
  %loop.0.dup077 = phi i32 [ %loop.0.dup037, %cleanup.dup0 ]
  %loop.1.dup078 = phi i32 [ %loop.1.dup038, %cleanup.dup0 ]
  %condition.1.dup079 = phi i32 [ %condition.1.dup032, %cleanup.dup0 ]
  %a.1.dup080 = phi i32 [ %a.1.dup031, %cleanup.dup0 ]
  %condition.0.dup081 = phi i32 [ %condition.0.dup033, %cleanup.dup0 ]
  %add1.dup082 = phi i32 [ %add1.dup035, %cleanup.dup0 ]
  %a.0.dup083 = phi i32 [ %a.0.dup034, %cleanup.dup0 ]
  %add6.dup0 = add nsw i32 %a.1.dup080, %loop.1.dup078
  %call7.dup0 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %add6.dup0)
  ret i32 %add6.dup0

unreachable.dup0:                                 ; preds = %cleanup.dup0
  %add.dup065 = phi i32 [ %add.dup036, %cleanup.dup0 ]
  %loop.0.dup066 = phi i32 [ %loop.0.dup037, %cleanup.dup0 ]
  %loop.1.dup067 = phi i32 [ %loop.1.dup038, %cleanup.dup0 ]
  %condition.1.dup068 = phi i32 [ %condition.1.dup032, %cleanup.dup0 ]
  %a.1.dup069 = phi i32 [ %a.1.dup031, %cleanup.dup0 ]
  %condition.0.dup070 = phi i32 [ %condition.0.dup033, %cleanup.dup0 ]
  %add1.dup071 = phi i32 [ %add1.dup035, %cleanup.dup0 ]
  %a.0.dup072 = phi i32 [ %a.0.dup034, %cleanup.dup0 ]
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
