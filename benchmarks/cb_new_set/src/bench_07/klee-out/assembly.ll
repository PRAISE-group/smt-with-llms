; ModuleID = '/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/src/bench_07/ctz_alignment_probe_klee.bc'
source_filename = "/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/src/bench_07/ctz_alignment_probe_klee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"inp_addr\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [26 x i8] c"out_trailing_zeros <= 15U\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [105 x i8] c"/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/src/bench_07/ctz_alignment_probe_klee.c\00", align 1, !dbg !12
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1, !dbg !17
@.str.3 = private unnamed_addr constant [56 x i8] c"(((uint32_t)inp_addr >> out_trailing_zeros) & 1U) == 1U\00", align 1, !dbg !23
@.str.4 = private unnamed_addr constant [75 x i8] c"(((uint32_t)inp_addr) & (((uint32_t)1U << out_trailing_zeros) - 1U)) == 0U\00", align 1, !dbg !28
@.str.5 = private unnamed_addr constant [25 x i8] c"out_trailing_zeros == 0U\00", align 1, !dbg !33
@.str.6 = private unnamed_addr constant [8 x i8] c"IGNORED\00", align 1, !dbg !38
@.str.1.7 = private unnamed_addr constant [16 x i8] c"overshift error\00", align 1, !dbg !44
@.str.2.8 = private unnamed_addr constant [14 x i8] c"overshift.err\00", align 1, !dbg !49

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @builtin_ctz_cb(i16 noundef zeroext %0) #0 !dbg !74 {
  %2 = alloca i16, align 2
  %3 = alloca i32, align 4
  store i16 %0, ptr %2, align 2
    #dbg_declare(ptr %2, !81, !DIExpression(), !82)
    #dbg_declare(ptr %3, !83, !DIExpression(), !84)
  %4 = load i16, ptr %2, align 2, !dbg !85
  %5 = zext i16 %4 to i32, !dbg !86
  %.not = xor i32 %5, -1, !dbg !87
  %6 = sub i32 %5, 1, !dbg !87
  %7 = and i32 %.not, %6, !dbg !87
  %cppop.and1 = and i32 %7, 1431655765, !dbg !87
  %ctpop.sh = lshr i32 %7, 1, !dbg !87
  %cppop.and2 = and i32 %ctpop.sh, 1431655765, !dbg !87
  %ctpop.step = add i32 %cppop.and1, %cppop.and2, !dbg !87
  %cppop.and11 = and i32 %ctpop.step, 858993459, !dbg !87
  %ctpop.sh2 = lshr i32 %ctpop.step, 2, !dbg !87
  %cppop.and23 = and i32 %ctpop.sh2, 858993459, !dbg !87
  %ctpop.step4 = add i32 %cppop.and11, %cppop.and23, !dbg !87
  %cppop.and15 = and i32 %ctpop.step4, 252645135, !dbg !87
  %ctpop.sh6 = lshr i32 %ctpop.step4, 4, !dbg !87
  %cppop.and27 = and i32 %ctpop.sh6, 252645135, !dbg !87
  %ctpop.step8 = add i32 %cppop.and15, %cppop.and27, !dbg !87
  %cppop.and19 = and i32 %ctpop.step8, 16711935, !dbg !87
  %ctpop.sh10 = lshr i32 %ctpop.step8, 8, !dbg !87
  %cppop.and211 = and i32 %ctpop.sh10, 16711935, !dbg !87
  %ctpop.step12 = add i32 %cppop.and19, %cppop.and211, !dbg !87
  %cppop.and113 = and i32 %ctpop.step12, 65535, !dbg !87
  %ctpop.sh14 = lshr i32 %ctpop.step12, 16, !dbg !87
  %cppop.and215 = and i32 %ctpop.sh14, 65535, !dbg !87
  %ctpop.step16 = add i32 %cppop.and113, %cppop.and215, !dbg !87
  %ctpop.part = add i32 %ctpop.step16, 0, !dbg !87
  store i32 %ctpop.part, ptr %3, align 4, !dbg !84
  %8 = load i32, ptr %3, align 4, !dbg !88
  ret i32 %8, !dbg !89
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !dbg !90 {
  %1 = alloca i32, align 4
  %2 = alloca i16, align 2
  %3 = alloca i32, align 4
  store i32 0, ptr %1, align 4
    #dbg_declare(ptr %2, !94, !DIExpression(), !95)
  call void @klee_make_symbolic(ptr noundef %2, i64 noundef 2, ptr noundef @.str), !dbg !96
  %4 = load i16, ptr %2, align 2, !dbg !97
  %5 = zext i16 %4 to i32, !dbg !97
  %6 = icmp ne i32 %5, 0, !dbg !99
  br i1 %6, label %7, label %49, !dbg !99

7:                                                ; preds = %0
    #dbg_declare(ptr %3, !100, !DIExpression(), !102)
  %8 = load i16, ptr %2, align 2, !dbg !103
  %9 = call i32 @builtin_ctz_cb(i16 noundef zeroext %8), !dbg !104
  store i32 %9, ptr %3, align 4, !dbg !102
  %10 = load i32, ptr %3, align 4, !dbg !105
  %11 = icmp ule i32 %10, 15, !dbg !105
  br i1 %11, label %12, label %13, !dbg !105

12:                                               ; preds = %7
  br label %14, !dbg !105

13:                                               ; preds = %7
  call void @__assert_fail(ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 20, ptr noundef @__PRETTY_FUNCTION__.main) #5, !dbg !105
  unreachable, !dbg !105

14:                                               ; preds = %12
  %15 = load i16, ptr %2, align 2, !dbg !108
  %16 = zext i16 %15 to i32, !dbg !108
  %17 = load i32, ptr %3, align 4, !dbg !108
  %int_cast_to_i64 = zext i32 %17 to i64, !dbg !108
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !108
  %18 = lshr i32 %16, %17, !dbg !108, !klee.check.shift !111
  %19 = and i32 %18, 1, !dbg !108
  %20 = icmp eq i32 %19, 1, !dbg !108
  br i1 %20, label %21, label %22, !dbg !108

21:                                               ; preds = %14
  br label %23, !dbg !108

22:                                               ; preds = %14
  call void @__assert_fail(ptr noundef @.str.3, ptr noundef @.str.2, i32 noundef 21, ptr noundef @__PRETTY_FUNCTION__.main) #5, !dbg !108
  unreachable, !dbg !108

23:                                               ; preds = %21
  %24 = load i32, ptr %3, align 4, !dbg !112
  %25 = icmp ugt i32 %24, 0, !dbg !114
  br i1 %25, label %26, label %37, !dbg !114

26:                                               ; preds = %23
  %27 = load i16, ptr %2, align 2, !dbg !115
  %28 = zext i16 %27 to i32, !dbg !115
  %29 = load i32, ptr %3, align 4, !dbg !115
  %int_cast_to_i641 = zext i32 %29 to i64, !dbg !115
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !115
  %30 = shl i32 1, %29, !dbg !115, !klee.check.shift !111
  %31 = sub i32 %30, 1, !dbg !115
  %32 = and i32 %28, %31, !dbg !115
  %33 = icmp eq i32 %32, 0, !dbg !115
  br i1 %33, label %34, label %35, !dbg !115

34:                                               ; preds = %26
  br label %36, !dbg !115

35:                                               ; preds = %26
  call void @__assert_fail(ptr noundef @.str.4, ptr noundef @.str.2, i32 noundef 23, ptr noundef @__PRETTY_FUNCTION__.main) #5, !dbg !115
  unreachable, !dbg !115

36:                                               ; preds = %34
  br label %37, !dbg !119

37:                                               ; preds = %36, %23
  %38 = load i16, ptr %2, align 2, !dbg !120
  %39 = zext i16 %38 to i32, !dbg !120
  %40 = and i32 %39, 1, !dbg !122
  %41 = icmp ne i32 %40, 0, !dbg !123
  br i1 %41, label %42, label %48, !dbg !123

42:                                               ; preds = %37
  %43 = load i32, ptr %3, align 4, !dbg !124
  %44 = icmp eq i32 %43, 0, !dbg !124
  br i1 %44, label %45, label %46, !dbg !124

45:                                               ; preds = %42
  br label %47, !dbg !124

46:                                               ; preds = %42
  call void @__assert_fail(ptr noundef @.str.5, ptr noundef @.str.2, i32 noundef 26, ptr noundef @__PRETTY_FUNCTION__.main) #5, !dbg !124
  unreachable, !dbg !124

47:                                               ; preds = %45
  br label %48, !dbg !128

48:                                               ; preds = %47, %37
  br label %49, !dbg !129

49:                                               ; preds = %48, %0
  ret i32 0, !dbg !130
}

declare void @klee_make_symbolic(ptr noundef, i64 noundef, ptr noundef) #2

; Function Attrs: cold noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @klee_overshift_check(i64 noundef %0, i64 noundef %1) #0 !dbg !131 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, ptr %3, align 8
    #dbg_declare(ptr %3, !135, !DIExpression(), !136)
  store i64 %1, ptr %4, align 8
    #dbg_declare(ptr %4, !137, !DIExpression(), !138)
  %5 = load i64, ptr %4, align 8, !dbg !139
  %6 = load i64, ptr %3, align 8, !dbg !141
  %7 = icmp uge i64 %5, %6, !dbg !142
  br i1 %7, label %8, label %9, !dbg !142

8:                                                ; preds = %2
  call void @klee_report_error(ptr noundef @.str.6, i32 noundef 0, ptr noundef @.str.1.7, ptr noundef @.str.2.8) #6, !dbg !143
  unreachable, !dbg !143

9:                                                ; preds = %2
  ret void, !dbg !145
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

!llvm.dbg.cu = !{!54, !63}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73, !73}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 15, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/bench_07/ctz_alignment_probe_klee.c", directory: "/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet", checksumkind: CSK_MD5, checksum: "ae668c2c638e2f147c0cd303c77c7fbb")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 9)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 20, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 26)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 20, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 840, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 105)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 20, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 120, elements: !21)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!21 = !{!22}
!22 = !DISubrange(count: 15)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !2, line: 21, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 56)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !2, line: 23, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 600, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 75)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !2, line: 26, type: !35, isLocal: true, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 25)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(scope: null, file: !40, line: 27, type: !41, isLocal: true, isDefinition: true)
!40 = !DIFile(filename: "klee/runtime/Intrinsic/klee_overshift_check.c", directory: "/home/sumiqlnx/klee_experiments", checksumkind: CSK_MD5, checksum: "5666ed772284910b5d0f856859e4d123")
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 64, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 8)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(scope: null, file: !40, line: 27, type: !46, isLocal: true, isDefinition: true)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 128, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 16)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(scope: null, file: !40, line: 27, type: !51, isLocal: true, isDefinition: true)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 112, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 14)
!54 = distinct !DICompileUnit(language: DW_LANG_C11, file: !55, producer: "Ubuntu clang version 20.1.8 (0ubuntu4)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !56, globals: !62, splitDebugInlining: false, nameTableKind: None)
!55 = !DIFile(filename: "/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/src/bench_07/ctz_alignment_probe_klee.c", directory: "/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet", checksumkind: CSK_MD5, checksum: "ae668c2c638e2f147c0cd303c77c7fbb")
!56 = !{!57, !58}
!57 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !59, line: 26, baseType: !60)
!59 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "006a4d9ce94ea5734db820ef3fdd4790")
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !61, line: 42, baseType: !57)
!61 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "0737a53e1b85eab0e0ba9675962d13f4")
!62 = !{!0, !7, !12, !17, !23, !28, !33}
!63 = distinct !DICompileUnit(language: DW_LANG_C89, file: !64, producer: "Ubuntu clang version 20.1.8 (0ubuntu4)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !65, splitDebugInlining: false, nameTableKind: None)
!64 = !DIFile(filename: "/home/sumiqlnx/klee_experiments/klee/runtime/Intrinsic/klee_overshift_check.c", directory: "/home/sumiqlnx/klee_experiments/klee_build/runtime/Intrinsic", checksumkind: CSK_MD5, checksum: "5666ed772284910b5d0f856859e4d123")
!65 = !{!38, !44, !49}
!66 = !{i32 7, !"Dwarf Version", i32 5}
!67 = !{i32 2, !"Debug Info Version", i32 3}
!68 = !{i32 1, !"wchar_size", i32 4}
!69 = !{i32 8, !"PIC Level", i32 2}
!70 = !{i32 7, !"PIE Level", i32 2}
!71 = !{i32 7, !"uwtable", i32 2}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"Ubuntu clang version 20.1.8 (0ubuntu4)"}
!74 = distinct !DISubprogram(name: "builtin_ctz_cb", scope: !2, file: !2, line: 7, type: !75, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !54, retainedNodes: !80)
!75 = !DISubroutineType(types: !76)
!76 = !{!57, !77}
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !59, line: 25, baseType: !78)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !61, line: 40, baseType: !79)
!79 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!80 = !{}
!81 = !DILocalVariable(name: "inp_addr", arg: 1, scope: !74, file: !2, line: 7, type: !77)
!82 = !DILocation(line: 7, column: 38, scope: !74)
!83 = !DILocalVariable(name: "out_trailing_zeros", scope: !74, file: !2, line: 8, type: !57)
!84 = !DILocation(line: 8, column: 18, scope: !74)
!85 = !DILocation(line: 8, column: 81, scope: !74)
!86 = !DILocation(line: 8, column: 67, scope: !74)
!87 = !DILocation(line: 8, column: 53, scope: !74)
!88 = !DILocation(line: 9, column: 12, scope: !74)
!89 = !DILocation(line: 9, column: 5, scope: !74)
!90 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 12, type: !91, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !54, retainedNodes: !80)
!91 = !DISubroutineType(types: !92)
!92 = !{!93}
!93 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!94 = !DILocalVariable(name: "inp_addr", scope: !90, file: !2, line: 13, type: !77)
!95 = !DILocation(line: 13, column: 14, scope: !90)
!96 = !DILocation(line: 15, column: 5, scope: !90)
!97 = !DILocation(line: 17, column: 9, scope: !98)
!98 = distinct !DILexicalBlock(scope: !90, file: !2, line: 17, column: 9)
!99 = !DILocation(line: 17, column: 18, scope: !98)
!100 = !DILocalVariable(name: "out_trailing_zeros", scope: !101, file: !2, line: 18, type: !57)
!101 = distinct !DILexicalBlock(scope: !98, file: !2, line: 17, column: 25)
!102 = !DILocation(line: 18, column: 22, scope: !101)
!103 = !DILocation(line: 18, column: 58, scope: !101)
!104 = !DILocation(line: 18, column: 43, scope: !101)
!105 = !DILocation(line: 20, column: 9, scope: !106)
!106 = distinct !DILexicalBlock(scope: !107, file: !2, line: 20, column: 9)
!107 = distinct !DILexicalBlock(scope: !101, file: !2, line: 20, column: 9)
!108 = !DILocation(line: 21, column: 9, scope: !109)
!109 = distinct !DILexicalBlock(scope: !110, file: !2, line: 21, column: 9)
!110 = distinct !DILexicalBlock(scope: !101, file: !2, line: 21, column: 9)
!111 = !{!"True"}
!112 = !DILocation(line: 22, column: 13, scope: !113)
!113 = distinct !DILexicalBlock(scope: !101, file: !2, line: 22, column: 13)
!114 = !DILocation(line: 22, column: 32, scope: !113)
!115 = !DILocation(line: 23, column: 13, scope: !116)
!116 = distinct !DILexicalBlock(scope: !117, file: !2, line: 23, column: 13)
!117 = distinct !DILexicalBlock(scope: !118, file: !2, line: 23, column: 13)
!118 = distinct !DILexicalBlock(scope: !113, file: !2, line: 22, column: 38)
!119 = !DILocation(line: 24, column: 9, scope: !118)
!120 = !DILocation(line: 25, column: 14, scope: !121)
!121 = distinct !DILexicalBlock(scope: !101, file: !2, line: 25, column: 13)
!122 = !DILocation(line: 25, column: 23, scope: !121)
!123 = !DILocation(line: 25, column: 29, scope: !121)
!124 = !DILocation(line: 26, column: 13, scope: !125)
!125 = distinct !DILexicalBlock(scope: !126, file: !2, line: 26, column: 13)
!126 = distinct !DILexicalBlock(scope: !127, file: !2, line: 26, column: 13)
!127 = distinct !DILexicalBlock(scope: !121, file: !2, line: 25, column: 36)
!128 = !DILocation(line: 27, column: 9, scope: !127)
!129 = !DILocation(line: 28, column: 5, scope: !101)
!130 = !DILocation(line: 30, column: 5, scope: !90)
!131 = distinct !DISubprogram(name: "klee_overshift_check", scope: !40, file: !40, line: 20, type: !132, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !63, retainedNodes: !80)
!132 = !DISubroutineType(types: !133)
!133 = !{null, !134, !134}
!134 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!135 = !DILocalVariable(name: "bitWidth", arg: 1, scope: !131, file: !40, line: 20, type: !134)
!136 = !DILocation(line: 20, column: 46, scope: !131)
!137 = !DILocalVariable(name: "shift", arg: 2, scope: !131, file: !40, line: 20, type: !134)
!138 = !DILocation(line: 20, column: 75, scope: !131)
!139 = !DILocation(line: 21, column: 7, scope: !140)
!140 = distinct !DILexicalBlock(scope: !131, file: !40, line: 21, column: 7)
!141 = !DILocation(line: 21, column: 16, scope: !140)
!142 = !DILocation(line: 21, column: 13, scope: !140)
!143 = !DILocation(line: 27, column: 5, scope: !144)
!144 = distinct !DILexicalBlock(scope: !140, file: !40, line: 21, column: 26)
!145 = !DILocation(line: 29, column: 1, scope: !131)
