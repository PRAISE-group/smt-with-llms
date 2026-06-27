; ModuleID = '/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/src/bench_09/ffs_first_ready_lane_klee.bc'
source_filename = "/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/src/bench_09/ffs_first_ready_lane_klee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"inp_ready\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [14 x i8] c"out_lane >= 0\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [106 x i8] c"/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/src/bench_09/ffs_first_ready_lane_klee.c\00", align 1, !dbg !12
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1, !dbg !17
@.str.3 = private unnamed_addr constant [15 x i8] c"out_lane <= 16\00", align 1, !dbg !23
@.str.4 = private unnamed_addr constant [14 x i8] c"out_lane == 0\00", align 1, !dbg !26
@.str.5 = private unnamed_addr constant [14 x i8] c"out_lane >= 1\00", align 1, !dbg !28
@.str.6 = private unnamed_addr constant [67 x i8] c"(((uint32_t)inp_ready >> (unsigned int)(out_lane - 1)) & 1U) == 1U\00", align 1, !dbg !30
@.str.7 = private unnamed_addr constant [86 x i8] c"(((uint32_t)inp_ready) & (((uint32_t)1U << (unsigned int)(out_lane - 1)) - 1U)) == 0U\00", align 1, !dbg !35
@.str.8 = private unnamed_addr constant [8 x i8] c"IGNORED\00", align 1, !dbg !40
@.str.1.9 = private unnamed_addr constant [16 x i8] c"overshift error\00", align 1, !dbg !46
@.str.2.10 = private unnamed_addr constant [14 x i8] c"overshift.err\00", align 1, !dbg !51

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @builtin_ffs_cb(i16 noundef zeroext %0) #0 !dbg !75 {
  %2 = alloca i16, align 2
  %3 = alloca i32, align 4
  store i16 %0, ptr %2, align 2
    #dbg_declare(ptr %2, !82, !DIExpression(), !83)
    #dbg_declare(ptr %3, !84, !DIExpression(), !85)
  %4 = load i16, ptr %2, align 2, !dbg !86
  %5 = zext i16 %4 to i32, !dbg !87
  %.not = xor i32 %5, -1, !dbg !88
  %6 = sub i32 %5, 1, !dbg !88
  %7 = and i32 %.not, %6, !dbg !88
  %cppop.and1 = and i32 %7, 1431655765, !dbg !88
  %ctpop.sh = lshr i32 %7, 1, !dbg !88
  %cppop.and2 = and i32 %ctpop.sh, 1431655765, !dbg !88
  %ctpop.step = add i32 %cppop.and1, %cppop.and2, !dbg !88
  %cppop.and11 = and i32 %ctpop.step, 858993459, !dbg !88
  %ctpop.sh2 = lshr i32 %ctpop.step, 2, !dbg !88
  %cppop.and23 = and i32 %ctpop.sh2, 858993459, !dbg !88
  %ctpop.step4 = add i32 %cppop.and11, %cppop.and23, !dbg !88
  %cppop.and15 = and i32 %ctpop.step4, 252645135, !dbg !88
  %ctpop.sh6 = lshr i32 %ctpop.step4, 4, !dbg !88
  %cppop.and27 = and i32 %ctpop.sh6, 252645135, !dbg !88
  %ctpop.step8 = add i32 %cppop.and15, %cppop.and27, !dbg !88
  %cppop.and19 = and i32 %ctpop.step8, 16711935, !dbg !88
  %ctpop.sh10 = lshr i32 %ctpop.step8, 8, !dbg !88
  %cppop.and211 = and i32 %ctpop.sh10, 16711935, !dbg !88
  %ctpop.step12 = add i32 %cppop.and19, %cppop.and211, !dbg !88
  %cppop.and113 = and i32 %ctpop.step12, 65535, !dbg !88
  %ctpop.sh14 = lshr i32 %ctpop.step12, 16, !dbg !88
  %cppop.and215 = and i32 %ctpop.sh14, 65535, !dbg !88
  %ctpop.step16 = add i32 %cppop.and113, %cppop.and215, !dbg !88
  %ctpop.part = add i32 %ctpop.step16, 0, !dbg !88
  %8 = add i32 %ctpop.part, 1, !dbg !88
  %9 = icmp eq i32 %5, 0, !dbg !88
  %10 = select i1 %9, i32 0, i32 %8, !dbg !88
  store i32 %10, ptr %3, align 4, !dbg !85
  %11 = load i32, ptr %3, align 4, !dbg !89
  ret i32 %11, !dbg !90
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !dbg !91 {
  %1 = alloca i32, align 4
  %2 = alloca i16, align 2
  %3 = alloca i32, align 4
  store i32 0, ptr %1, align 4
    #dbg_declare(ptr %2, !94, !DIExpression(), !95)
  call void @klee_make_symbolic(ptr noundef %2, i64 noundef 2, ptr noundef @.str), !dbg !96
    #dbg_declare(ptr %3, !97, !DIExpression(), !98)
  %4 = load i16, ptr %2, align 2, !dbg !99
  %5 = call i32 @builtin_ffs_cb(i16 noundef zeroext %4), !dbg !100
  store i32 %5, ptr %3, align 4, !dbg !98
  %6 = load i32, ptr %3, align 4, !dbg !101
  %7 = icmp sge i32 %6, 0, !dbg !101
  br i1 %7, label %8, label %9, !dbg !101

8:                                                ; preds = %0
  br label %10, !dbg !101

9:                                                ; preds = %0
  call void @__assert_fail(ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 19, ptr noundef @__PRETTY_FUNCTION__.main) #5, !dbg !101
  unreachable, !dbg !101

10:                                               ; preds = %8
  %11 = load i32, ptr %3, align 4, !dbg !104
  %12 = icmp sle i32 %11, 16, !dbg !104
  br i1 %12, label %13, label %14, !dbg !104

13:                                               ; preds = %10
  br label %15, !dbg !104

14:                                               ; preds = %10
  call void @__assert_fail(ptr noundef @.str.3, ptr noundef @.str.2, i32 noundef 20, ptr noundef @__PRETTY_FUNCTION__.main) #5, !dbg !104
  unreachable, !dbg !104

15:                                               ; preds = %13
  %16 = load i16, ptr %2, align 2, !dbg !107
  %17 = zext i16 %16 to i32, !dbg !107
  %18 = icmp eq i32 %17, 0, !dbg !109
  br i1 %18, label %19, label %25, !dbg !109

19:                                               ; preds = %15
  %20 = load i32, ptr %3, align 4, !dbg !110
  %21 = icmp eq i32 %20, 0, !dbg !110
  br i1 %21, label %22, label %23, !dbg !110

22:                                               ; preds = %19
  br label %24, !dbg !110

23:                                               ; preds = %19
  call void @__assert_fail(ptr noundef @.str.4, ptr noundef @.str.2, i32 noundef 22, ptr noundef @__PRETTY_FUNCTION__.main) #5, !dbg !110
  unreachable, !dbg !110

24:                                               ; preds = %22
  br label %56, !dbg !114

25:                                               ; preds = %15
  %26 = load i32, ptr %3, align 4, !dbg !115
  %27 = icmp sge i32 %26, 1, !dbg !115
  br i1 %27, label %28, label %29, !dbg !115

28:                                               ; preds = %25
  br label %30, !dbg !115

29:                                               ; preds = %25
  call void @__assert_fail(ptr noundef @.str.5, ptr noundef @.str.2, i32 noundef 24, ptr noundef @__PRETTY_FUNCTION__.main) #5, !dbg !115
  unreachable, !dbg !115

30:                                               ; preds = %28
  %31 = load i16, ptr %2, align 2, !dbg !119
  %32 = zext i16 %31 to i32, !dbg !119
  %33 = load i32, ptr %3, align 4, !dbg !119
  %34 = sub nsw i32 %33, 1, !dbg !119
  %int_cast_to_i64 = zext i32 %34 to i64, !dbg !119
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !119
  %35 = lshr i32 %32, %34, !dbg !119, !klee.check.shift !122
  %36 = and i32 %35, 1, !dbg !119
  %37 = icmp eq i32 %36, 1, !dbg !119
  br i1 %37, label %38, label %39, !dbg !119

38:                                               ; preds = %30
  br label %40, !dbg !119

39:                                               ; preds = %30
  call void @__assert_fail(ptr noundef @.str.6, ptr noundef @.str.2, i32 noundef 25, ptr noundef @__PRETTY_FUNCTION__.main) #5, !dbg !119
  unreachable, !dbg !119

40:                                               ; preds = %38
  %41 = load i32, ptr %3, align 4, !dbg !123
  %42 = icmp sgt i32 %41, 1, !dbg !125
  br i1 %42, label %43, label %55, !dbg !125

43:                                               ; preds = %40
  %44 = load i16, ptr %2, align 2, !dbg !126
  %45 = zext i16 %44 to i32, !dbg !126
  %46 = load i32, ptr %3, align 4, !dbg !126
  %47 = sub nsw i32 %46, 1, !dbg !126
  %int_cast_to_i641 = zext i32 %47 to i64, !dbg !126
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !126
  %48 = shl i32 1, %47, !dbg !126, !klee.check.shift !122
  %49 = sub i32 %48, 1, !dbg !126
  %50 = and i32 %45, %49, !dbg !126
  %51 = icmp eq i32 %50, 0, !dbg !126
  br i1 %51, label %52, label %53, !dbg !126

52:                                               ; preds = %43
  br label %54, !dbg !126

53:                                               ; preds = %43
  call void @__assert_fail(ptr noundef @.str.7, ptr noundef @.str.2, i32 noundef 27, ptr noundef @__PRETTY_FUNCTION__.main) #5, !dbg !126
  unreachable, !dbg !126

54:                                               ; preds = %52
  br label %55, !dbg !130

55:                                               ; preds = %54, %40
  br label %56

56:                                               ; preds = %55, %24
  ret i32 0, !dbg !131
}

declare void @klee_make_symbolic(ptr noundef, i64 noundef, ptr noundef) #2

; Function Attrs: cold noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @klee_overshift_check(i64 noundef %0, i64 noundef %1) #0 !dbg !132 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, ptr %3, align 8
    #dbg_declare(ptr %3, !136, !DIExpression(), !137)
  store i64 %1, ptr %4, align 8
    #dbg_declare(ptr %4, !138, !DIExpression(), !139)
  %5 = load i64, ptr %4, align 8, !dbg !140
  %6 = load i64, ptr %3, align 8, !dbg !142
  %7 = icmp uge i64 %5, %6, !dbg !143
  br i1 %7, label %8, label %9, !dbg !143

8:                                                ; preds = %2
  call void @klee_report_error(ptr noundef @.str.8, i32 noundef 0, ptr noundef @.str.1.9, ptr noundef @.str.2.10) #6, !dbg !144
  unreachable, !dbg !144

9:                                                ; preds = %2
  ret void, !dbg !146
}

; Function Attrs: noreturn
declare void @klee_report_error(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold noreturn nounwind }
attributes #6 = { noreturn }

!llvm.dbg.cu = !{!54, !64}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74, !74}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 15, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/bench_09/ffs_first_ready_lane_klee.c", directory: "/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet", checksumkind: CSK_MD5, checksum: "e387bd7cb1bf72a0d66db43aa931ff20")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 10)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 19, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 14)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 19, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 848, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 106)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 19, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 120, elements: !21)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!21 = !{!22}
!22 = !DISubrange(count: 15)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !2, line: 20, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !21)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(scope: null, file: !2, line: 22, type: !9, isLocal: true, isDefinition: true)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !2, line: 24, type: !9, isLocal: true, isDefinition: true)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(scope: null, file: !2, line: 25, type: !32, isLocal: true, isDefinition: true)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 536, elements: !33)
!33 = !{!34}
!34 = !DISubrange(count: 67)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(scope: null, file: !2, line: 27, type: !37, isLocal: true, isDefinition: true)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 688, elements: !38)
!38 = !{!39}
!39 = !DISubrange(count: 86)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(scope: null, file: !42, line: 27, type: !43, isLocal: true, isDefinition: true)
!42 = !DIFile(filename: "klee/runtime/Intrinsic/klee_overshift_check.c", directory: "/home/sumiqlnx/klee_experiments", checksumkind: CSK_MD5, checksum: "5666ed772284910b5d0f856859e4d123")
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 64, elements: !44)
!44 = !{!45}
!45 = !DISubrange(count: 8)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(scope: null, file: !42, line: 27, type: !48, isLocal: true, isDefinition: true)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 128, elements: !49)
!49 = !{!50}
!50 = !DISubrange(count: 16)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(scope: null, file: !42, line: 27, type: !53, isLocal: true, isDefinition: true)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 112, elements: !10)
!54 = distinct !DICompileUnit(language: DW_LANG_C11, file: !55, producer: "Ubuntu clang version 20.1.8 (0ubuntu4)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !56, globals: !63, splitDebugInlining: false, nameTableKind: None)
!55 = !DIFile(filename: "/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/src/bench_09/ffs_first_ready_lane_klee.c", directory: "/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet", checksumkind: CSK_MD5, checksum: "e387bd7cb1bf72a0d66db43aa931ff20")
!56 = !{!57, !58, !62}
!57 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !59, line: 26, baseType: !60)
!59 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "006a4d9ce94ea5734db820ef3fdd4790")
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !61, line: 42, baseType: !62)
!61 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "0737a53e1b85eab0e0ba9675962d13f4")
!62 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!63 = !{!0, !7, !12, !17, !23, !26, !28, !30, !35}
!64 = distinct !DICompileUnit(language: DW_LANG_C89, file: !65, producer: "Ubuntu clang version 20.1.8 (0ubuntu4)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !66, splitDebugInlining: false, nameTableKind: None)
!65 = !DIFile(filename: "/home/sumiqlnx/klee_experiments/klee/runtime/Intrinsic/klee_overshift_check.c", directory: "/home/sumiqlnx/klee_experiments/klee_build/runtime/Intrinsic", checksumkind: CSK_MD5, checksum: "5666ed772284910b5d0f856859e4d123")
!66 = !{!40, !46, !51}
!67 = !{i32 7, !"Dwarf Version", i32 5}
!68 = !{i32 2, !"Debug Info Version", i32 3}
!69 = !{i32 1, !"wchar_size", i32 4}
!70 = !{i32 8, !"PIC Level", i32 2}
!71 = !{i32 7, !"PIE Level", i32 2}
!72 = !{i32 7, !"uwtable", i32 2}
!73 = !{i32 7, !"frame-pointer", i32 2}
!74 = !{!"Ubuntu clang version 20.1.8 (0ubuntu4)"}
!75 = distinct !DISubprogram(name: "builtin_ffs_cb", scope: !2, file: !2, line: 7, type: !76, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !54, retainedNodes: !81)
!76 = !DISubroutineType(types: !77)
!77 = !{!57, !78}
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !59, line: 25, baseType: !79)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !61, line: 40, baseType: !80)
!80 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!81 = !{}
!82 = !DILocalVariable(name: "inp_ready", arg: 1, scope: !75, file: !2, line: 7, type: !78)
!83 = !DILocation(line: 7, column: 29, scope: !75)
!84 = !DILocalVariable(name: "out_lane", scope: !75, file: !2, line: 8, type: !57)
!85 = !DILocation(line: 8, column: 9, scope: !75)
!86 = !DILocation(line: 8, column: 39, scope: !75)
!87 = !DILocation(line: 8, column: 34, scope: !75)
!88 = !DILocation(line: 8, column: 20, scope: !75)
!89 = !DILocation(line: 9, column: 12, scope: !75)
!90 = !DILocation(line: 9, column: 5, scope: !75)
!91 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 12, type: !92, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !54, retainedNodes: !81)
!92 = !DISubroutineType(types: !93)
!93 = !{!57}
!94 = !DILocalVariable(name: "inp_ready", scope: !91, file: !2, line: 13, type: !78)
!95 = !DILocation(line: 13, column: 14, scope: !91)
!96 = !DILocation(line: 15, column: 5, scope: !91)
!97 = !DILocalVariable(name: "out_lane", scope: !91, file: !2, line: 17, type: !57)
!98 = !DILocation(line: 17, column: 9, scope: !91)
!99 = !DILocation(line: 17, column: 35, scope: !91)
!100 = !DILocation(line: 17, column: 20, scope: !91)
!101 = !DILocation(line: 19, column: 5, scope: !102)
!102 = distinct !DILexicalBlock(scope: !103, file: !2, line: 19, column: 5)
!103 = distinct !DILexicalBlock(scope: !91, file: !2, line: 19, column: 5)
!104 = !DILocation(line: 20, column: 5, scope: !105)
!105 = distinct !DILexicalBlock(scope: !106, file: !2, line: 20, column: 5)
!106 = distinct !DILexicalBlock(scope: !91, file: !2, line: 20, column: 5)
!107 = !DILocation(line: 21, column: 9, scope: !108)
!108 = distinct !DILexicalBlock(scope: !91, file: !2, line: 21, column: 9)
!109 = !DILocation(line: 21, column: 19, scope: !108)
!110 = !DILocation(line: 22, column: 9, scope: !111)
!111 = distinct !DILexicalBlock(scope: !112, file: !2, line: 22, column: 9)
!112 = distinct !DILexicalBlock(scope: !113, file: !2, line: 22, column: 9)
!113 = distinct !DILexicalBlock(scope: !108, file: !2, line: 21, column: 26)
!114 = !DILocation(line: 23, column: 5, scope: !113)
!115 = !DILocation(line: 24, column: 9, scope: !116)
!116 = distinct !DILexicalBlock(scope: !117, file: !2, line: 24, column: 9)
!117 = distinct !DILexicalBlock(scope: !118, file: !2, line: 24, column: 9)
!118 = distinct !DILexicalBlock(scope: !108, file: !2, line: 23, column: 12)
!119 = !DILocation(line: 25, column: 9, scope: !120)
!120 = distinct !DILexicalBlock(scope: !121, file: !2, line: 25, column: 9)
!121 = distinct !DILexicalBlock(scope: !118, file: !2, line: 25, column: 9)
!122 = !{!"True"}
!123 = !DILocation(line: 26, column: 13, scope: !124)
!124 = distinct !DILexicalBlock(scope: !118, file: !2, line: 26, column: 13)
!125 = !DILocation(line: 26, column: 22, scope: !124)
!126 = !DILocation(line: 27, column: 13, scope: !127)
!127 = distinct !DILexicalBlock(scope: !128, file: !2, line: 27, column: 13)
!128 = distinct !DILexicalBlock(scope: !129, file: !2, line: 27, column: 13)
!129 = distinct !DILexicalBlock(scope: !124, file: !2, line: 26, column: 27)
!130 = !DILocation(line: 28, column: 9, scope: !129)
!131 = !DILocation(line: 31, column: 5, scope: !91)
!132 = distinct !DISubprogram(name: "klee_overshift_check", scope: !42, file: !42, line: 20, type: !133, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !64, retainedNodes: !81)
!133 = !DISubroutineType(types: !134)
!134 = !{null, !135, !135}
!135 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!136 = !DILocalVariable(name: "bitWidth", arg: 1, scope: !132, file: !42, line: 20, type: !135)
!137 = !DILocation(line: 20, column: 46, scope: !132)
!138 = !DILocalVariable(name: "shift", arg: 2, scope: !132, file: !42, line: 20, type: !135)
!139 = !DILocation(line: 20, column: 75, scope: !132)
!140 = !DILocation(line: 21, column: 7, scope: !141)
!141 = distinct !DILexicalBlock(scope: !132, file: !42, line: 21, column: 7)
!142 = !DILocation(line: 21, column: 16, scope: !141)
!143 = !DILocation(line: 21, column: 13, scope: !141)
!144 = !DILocation(line: 27, column: 5, scope: !145)
!145 = distinct !DILexicalBlock(scope: !141, file: !42, line: 21, column: 26)
!146 = !DILocation(line: 29, column: 1, scope: !132)
