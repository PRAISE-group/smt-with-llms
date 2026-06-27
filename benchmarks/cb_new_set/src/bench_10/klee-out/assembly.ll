; ModuleID = '/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/src/bench_10/ffs_lowbit_selector_klee.bc'
source_filename = "/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/src/bench_10/ffs_lowbit_selector_klee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"inp_mask\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [15 x i8] c"out_index >= 0\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [105 x i8] c"/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/src/bench_10/ffs_lowbit_selector_klee.c\00", align 1, !dbg !12
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1, !dbg !17
@.str.3 = private unnamed_addr constant [16 x i8] c"out_index <= 16\00", align 1, !dbg !21
@.str.4 = private unnamed_addr constant [15 x i8] c"out_index == 0\00", align 1, !dbg !26
@.str.5 = private unnamed_addr constant [15 x i8] c"out_index <= 8\00", align 1, !dbg !28
@.str.6 = private unnamed_addr constant [15 x i8] c"out_index >= 9\00", align 1, !dbg !30
@.str.7 = private unnamed_addr constant [60 x i8] c"builtin_ffs_cb((uint16_t)(inp_mask << 1U)) == out_index + 1\00", align 1, !dbg !32

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @builtin_ffs_cb(i16 noundef zeroext %0) #0 !dbg !55 {
  %2 = alloca i16, align 2
  %3 = alloca i32, align 4
  store i16 %0, ptr %2, align 2
    #dbg_declare(ptr %2, !58, !DIExpression(), !59)
    #dbg_declare(ptr %3, !60, !DIExpression(), !61)
  %4 = load i16, ptr %2, align 2, !dbg !62
  %5 = zext i16 %4 to i32, !dbg !63
  %.not = xor i32 %5, -1, !dbg !64
  %6 = sub i32 %5, 1, !dbg !64
  %7 = and i32 %.not, %6, !dbg !64
  %cppop.and1 = and i32 %7, 1431655765, !dbg !64
  %ctpop.sh = lshr i32 %7, 1, !dbg !64
  %cppop.and2 = and i32 %ctpop.sh, 1431655765, !dbg !64
  %ctpop.step = add i32 %cppop.and1, %cppop.and2, !dbg !64
  %cppop.and11 = and i32 %ctpop.step, 858993459, !dbg !64
  %ctpop.sh2 = lshr i32 %ctpop.step, 2, !dbg !64
  %cppop.and23 = and i32 %ctpop.sh2, 858993459, !dbg !64
  %ctpop.step4 = add i32 %cppop.and11, %cppop.and23, !dbg !64
  %cppop.and15 = and i32 %ctpop.step4, 252645135, !dbg !64
  %ctpop.sh6 = lshr i32 %ctpop.step4, 4, !dbg !64
  %cppop.and27 = and i32 %ctpop.sh6, 252645135, !dbg !64
  %ctpop.step8 = add i32 %cppop.and15, %cppop.and27, !dbg !64
  %cppop.and19 = and i32 %ctpop.step8, 16711935, !dbg !64
  %ctpop.sh10 = lshr i32 %ctpop.step8, 8, !dbg !64
  %cppop.and211 = and i32 %ctpop.sh10, 16711935, !dbg !64
  %ctpop.step12 = add i32 %cppop.and19, %cppop.and211, !dbg !64
  %cppop.and113 = and i32 %ctpop.step12, 65535, !dbg !64
  %ctpop.sh14 = lshr i32 %ctpop.step12, 16, !dbg !64
  %cppop.and215 = and i32 %ctpop.sh14, 65535, !dbg !64
  %ctpop.step16 = add i32 %cppop.and113, %cppop.and215, !dbg !64
  %ctpop.part = add i32 %ctpop.step16, 0, !dbg !64
  %8 = add i32 %ctpop.part, 1, !dbg !64
  %9 = icmp eq i32 %5, 0, !dbg !64
  %10 = select i1 %9, i32 0, i32 %8, !dbg !64
  store i32 %10, ptr %3, align 4, !dbg !61
  %11 = load i32, ptr %3, align 4, !dbg !65
  ret i32 %11, !dbg !66
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !dbg !67 {
  %1 = alloca i32, align 4
  %2 = alloca i16, align 2
  %3 = alloca i32, align 4
  store i32 0, ptr %1, align 4
    #dbg_declare(ptr %2, !70, !DIExpression(), !71)
  call void @klee_make_symbolic(ptr noundef %2, i64 noundef 2, ptr noundef @.str), !dbg !72
    #dbg_declare(ptr %3, !73, !DIExpression(), !74)
  %4 = load i16, ptr %2, align 2, !dbg !75
  %5 = call i32 @builtin_ffs_cb(i16 noundef zeroext %4), !dbg !76
  store i32 %5, ptr %3, align 4, !dbg !74
  %6 = load i32, ptr %3, align 4, !dbg !77
  %7 = icmp sge i32 %6, 0, !dbg !77
  br i1 %7, label %8, label %9, !dbg !77

8:                                                ; preds = %0
  br label %10, !dbg !77

9:                                                ; preds = %0
  call void @__assert_fail(ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 19, ptr noundef @__PRETTY_FUNCTION__.main) #4, !dbg !77
  unreachable, !dbg !77

10:                                               ; preds = %8
  %11 = load i32, ptr %3, align 4, !dbg !80
  %12 = icmp sle i32 %11, 16, !dbg !80
  br i1 %12, label %13, label %14, !dbg !80

13:                                               ; preds = %10
  br label %15, !dbg !80

14:                                               ; preds = %10
  call void @__assert_fail(ptr noundef @.str.3, ptr noundef @.str.2, i32 noundef 20, ptr noundef @__PRETTY_FUNCTION__.main) #4, !dbg !80
  unreachable, !dbg !80

15:                                               ; preds = %13
  %16 = load i16, ptr %2, align 2, !dbg !83
  %17 = zext i16 %16 to i32, !dbg !83
  %18 = icmp eq i32 %17, 0, !dbg !85
  br i1 %18, label %19, label %25, !dbg !85

19:                                               ; preds = %15
  %20 = load i32, ptr %3, align 4, !dbg !86
  %21 = icmp eq i32 %20, 0, !dbg !86
  br i1 %21, label %22, label %23, !dbg !86

22:                                               ; preds = %19
  br label %24, !dbg !86

23:                                               ; preds = %19
  call void @__assert_fail(ptr noundef @.str.4, ptr noundef @.str.2, i32 noundef 22, ptr noundef @__PRETTY_FUNCTION__.main) #4, !dbg !86
  unreachable, !dbg !86

24:                                               ; preds = %22
  br label %65, !dbg !90

25:                                               ; preds = %15
  %26 = load i16, ptr %2, align 2, !dbg !91
  %27 = zext i16 %26 to i32, !dbg !91
  %28 = and i32 %27, 255, !dbg !94
  %29 = icmp ne i32 %28, 0, !dbg !95
  br i1 %29, label %30, label %36, !dbg !95

30:                                               ; preds = %25
  %31 = load i32, ptr %3, align 4, !dbg !96
  %32 = icmp sle i32 %31, 8, !dbg !96
  br i1 %32, label %33, label %34, !dbg !96

33:                                               ; preds = %30
  br label %35, !dbg !96

34:                                               ; preds = %30
  call void @__assert_fail(ptr noundef @.str.5, ptr noundef @.str.2, i32 noundef 25, ptr noundef @__PRETTY_FUNCTION__.main) #4, !dbg !96
  unreachable, !dbg !96

35:                                               ; preds = %33
  br label %36, !dbg !100

36:                                               ; preds = %35, %25
  %37 = load i16, ptr %2, align 2, !dbg !101
  %38 = zext i16 %37 to i32, !dbg !101
  %39 = and i32 %38, 255, !dbg !103
  %40 = icmp eq i32 %39, 0, !dbg !104
  br i1 %40, label %41, label %47, !dbg !104

41:                                               ; preds = %36
  %42 = load i32, ptr %3, align 4, !dbg !105
  %43 = icmp sge i32 %42, 9, !dbg !105
  br i1 %43, label %44, label %45, !dbg !105

44:                                               ; preds = %41
  br label %46, !dbg !105

45:                                               ; preds = %41
  call void @__assert_fail(ptr noundef @.str.6, ptr noundef @.str.2, i32 noundef 28, ptr noundef @__PRETTY_FUNCTION__.main) #4, !dbg !105
  unreachable, !dbg !105

46:                                               ; preds = %44
  br label %47, !dbg !109

47:                                               ; preds = %46, %36
  %48 = load i16, ptr %2, align 2, !dbg !110
  %49 = zext i16 %48 to i32, !dbg !110
  %50 = and i32 %49, 32768, !dbg !112
  %51 = icmp eq i32 %50, 0, !dbg !113
  br i1 %51, label %52, label %64, !dbg !113

52:                                               ; preds = %47
  %53 = load i16, ptr %2, align 2, !dbg !114
  %54 = zext i16 %53 to i32, !dbg !114
  %55 = shl i32 %54, 1, !dbg !114
  %56 = trunc i32 %55 to i16, !dbg !114
  %57 = call i32 @builtin_ffs_cb(i16 noundef zeroext %56), !dbg !114
  %58 = load i32, ptr %3, align 4, !dbg !114
  %59 = add nsw i32 %58, 1, !dbg !114
  %60 = icmp eq i32 %57, %59, !dbg !114
  br i1 %60, label %61, label %62, !dbg !114

61:                                               ; preds = %52
  br label %63, !dbg !114

62:                                               ; preds = %52
  call void @__assert_fail(ptr noundef @.str.7, ptr noundef @.str.2, i32 noundef 31, ptr noundef @__PRETTY_FUNCTION__.main) #4, !dbg !114
  unreachable, !dbg !114

63:                                               ; preds = %61
  br label %64, !dbg !118

64:                                               ; preds = %63, %47
  br label %65

65:                                               ; preds = %64, %24
  ret i32 0, !dbg !119
}

declare void @klee_make_symbolic(ptr noundef, i64 noundef, ptr noundef) #2

; Function Attrs: cold noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold noreturn nounwind }

!llvm.dbg.cu = !{!37}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 15, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/bench_10/ffs_lowbit_selector_klee.c", directory: "/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet", checksumkind: CSK_MD5, checksum: "9586347de6fbef415fffcbabe124e372")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 9)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 19, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 15)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 19, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 840, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 105)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 19, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 120, elements: !10)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(scope: null, file: !2, line: 20, type: !23, isLocal: true, isDefinition: true)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 16)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(scope: null, file: !2, line: 22, type: !9, isLocal: true, isDefinition: true)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !2, line: 25, type: !9, isLocal: true, isDefinition: true)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(scope: null, file: !2, line: 28, type: !9, isLocal: true, isDefinition: true)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 31, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 60)
!37 = distinct !DICompileUnit(language: DW_LANG_C11, file: !38, producer: "Ubuntu clang version 20.1.8 (0ubuntu4)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !39, globals: !46, splitDebugInlining: false, nameTableKind: None)
!38 = !DIFile(filename: "/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/src/bench_10/ffs_lowbit_selector_klee.c", directory: "/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet", checksumkind: CSK_MD5, checksum: "9586347de6fbef415fffcbabe124e372")
!39 = !{!40, !41}
!40 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !42, line: 25, baseType: !43)
!42 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "006a4d9ce94ea5734db820ef3fdd4790")
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !44, line: 40, baseType: !45)
!44 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "0737a53e1b85eab0e0ba9675962d13f4")
!45 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!46 = !{!0, !7, !12, !17, !21, !26, !28, !30, !32}
!47 = !{i32 7, !"Dwarf Version", i32 5}
!48 = !{i32 2, !"Debug Info Version", i32 3}
!49 = !{i32 1, !"wchar_size", i32 4}
!50 = !{i32 8, !"PIC Level", i32 2}
!51 = !{i32 7, !"PIE Level", i32 2}
!52 = !{i32 7, !"uwtable", i32 2}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"Ubuntu clang version 20.1.8 (0ubuntu4)"}
!55 = distinct !DISubprogram(name: "builtin_ffs_cb", scope: !2, file: !2, line: 7, type: !56, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !37, retainedNodes: !57)
!56 = !DISubroutineType(types: !39)
!57 = !{}
!58 = !DILocalVariable(name: "inp_mask", arg: 1, scope: !55, file: !2, line: 7, type: !41)
!59 = !DILocation(line: 7, column: 29, scope: !55)
!60 = !DILocalVariable(name: "out_index", scope: !55, file: !2, line: 8, type: !40)
!61 = !DILocation(line: 8, column: 9, scope: !55)
!62 = !DILocation(line: 8, column: 40, scope: !55)
!63 = !DILocation(line: 8, column: 35, scope: !55)
!64 = !DILocation(line: 8, column: 21, scope: !55)
!65 = !DILocation(line: 9, column: 12, scope: !55)
!66 = !DILocation(line: 9, column: 5, scope: !55)
!67 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 12, type: !68, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !37, retainedNodes: !57)
!68 = !DISubroutineType(types: !69)
!69 = !{!40}
!70 = !DILocalVariable(name: "inp_mask", scope: !67, file: !2, line: 13, type: !41)
!71 = !DILocation(line: 13, column: 14, scope: !67)
!72 = !DILocation(line: 15, column: 5, scope: !67)
!73 = !DILocalVariable(name: "out_index", scope: !67, file: !2, line: 17, type: !40)
!74 = !DILocation(line: 17, column: 9, scope: !67)
!75 = !DILocation(line: 17, column: 36, scope: !67)
!76 = !DILocation(line: 17, column: 21, scope: !67)
!77 = !DILocation(line: 19, column: 5, scope: !78)
!78 = distinct !DILexicalBlock(scope: !79, file: !2, line: 19, column: 5)
!79 = distinct !DILexicalBlock(scope: !67, file: !2, line: 19, column: 5)
!80 = !DILocation(line: 20, column: 5, scope: !81)
!81 = distinct !DILexicalBlock(scope: !82, file: !2, line: 20, column: 5)
!82 = distinct !DILexicalBlock(scope: !67, file: !2, line: 20, column: 5)
!83 = !DILocation(line: 21, column: 9, scope: !84)
!84 = distinct !DILexicalBlock(scope: !67, file: !2, line: 21, column: 9)
!85 = !DILocation(line: 21, column: 18, scope: !84)
!86 = !DILocation(line: 22, column: 9, scope: !87)
!87 = distinct !DILexicalBlock(scope: !88, file: !2, line: 22, column: 9)
!88 = distinct !DILexicalBlock(scope: !89, file: !2, line: 22, column: 9)
!89 = distinct !DILexicalBlock(scope: !84, file: !2, line: 21, column: 25)
!90 = !DILocation(line: 23, column: 5, scope: !89)
!91 = !DILocation(line: 24, column: 14, scope: !92)
!92 = distinct !DILexicalBlock(scope: !93, file: !2, line: 24, column: 13)
!93 = distinct !DILexicalBlock(scope: !84, file: !2, line: 23, column: 12)
!94 = !DILocation(line: 24, column: 23, scope: !92)
!95 = !DILocation(line: 24, column: 34, scope: !92)
!96 = !DILocation(line: 25, column: 13, scope: !97)
!97 = distinct !DILexicalBlock(scope: !98, file: !2, line: 25, column: 13)
!98 = distinct !DILexicalBlock(scope: !99, file: !2, line: 25, column: 13)
!99 = distinct !DILexicalBlock(scope: !92, file: !2, line: 24, column: 41)
!100 = !DILocation(line: 26, column: 9, scope: !99)
!101 = !DILocation(line: 27, column: 14, scope: !102)
!102 = distinct !DILexicalBlock(scope: !93, file: !2, line: 27, column: 13)
!103 = !DILocation(line: 27, column: 23, scope: !102)
!104 = !DILocation(line: 27, column: 34, scope: !102)
!105 = !DILocation(line: 28, column: 13, scope: !106)
!106 = distinct !DILexicalBlock(scope: !107, file: !2, line: 28, column: 13)
!107 = distinct !DILexicalBlock(scope: !108, file: !2, line: 28, column: 13)
!108 = distinct !DILexicalBlock(scope: !102, file: !2, line: 27, column: 41)
!109 = !DILocation(line: 29, column: 9, scope: !108)
!110 = !DILocation(line: 30, column: 14, scope: !111)
!111 = distinct !DILexicalBlock(scope: !93, file: !2, line: 30, column: 13)
!112 = !DILocation(line: 30, column: 23, scope: !111)
!113 = !DILocation(line: 30, column: 34, scope: !111)
!114 = !DILocation(line: 31, column: 13, scope: !115)
!115 = distinct !DILexicalBlock(scope: !116, file: !2, line: 31, column: 13)
!116 = distinct !DILexicalBlock(scope: !117, file: !2, line: 31, column: 13)
!117 = distinct !DILexicalBlock(scope: !111, file: !2, line: 30, column: 41)
!118 = !DILocation(line: 32, column: 9, scope: !117)
!119 = !DILocation(line: 35, column: 5, scope: !67)
