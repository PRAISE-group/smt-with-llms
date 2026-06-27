; ModuleID = '/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/src/bench_06/clz_window_scale_klee.bc'
source_filename = "/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/src/bench_06/clz_window_scale_klee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"inp_window\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [17 x i8] c"out_scale <= 15U\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [102 x i8] c"/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/src/bench_06/clz_window_scale_klee.c\00", align 1, !dbg !12
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1, !dbg !17
@.str.3 = private unnamed_addr constant [16 x i8] c"out_scale >= 8U\00", align 1, !dbg !23
@.str.4 = private unnamed_addr constant [16 x i8] c"out_scale <= 3U\00", align 1, !dbg !28
@.str.5 = private unnamed_addr constant [63 x i8] c"builtin_clz_cb((uint16_t)(inp_window << 1U)) + 1U == out_scale\00", align 1, !dbg !30

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @builtin_clz_cb(i16 noundef zeroext %0) #0 !dbg !54 {
  %2 = alloca i16, align 2
  %3 = alloca i32, align 4
  store i16 %0, ptr %2, align 2
    #dbg_declare(ptr %2, !58, !DIExpression(), !59)
    #dbg_declare(ptr %3, !60, !DIExpression(), !61)
  %4 = load i16, ptr %2, align 2, !dbg !62
  %5 = zext i16 %4 to i32, !dbg !63
  %ctlz.sh = lshr i32 %5, 1, !dbg !64
  %ctlz.step = or i32 %5, %ctlz.sh, !dbg !64
  %ctlz.sh1 = lshr i32 %ctlz.step, 2, !dbg !64
  %ctlz.step2 = or i32 %ctlz.step, %ctlz.sh1, !dbg !64
  %ctlz.sh3 = lshr i32 %ctlz.step2, 4, !dbg !64
  %ctlz.step4 = or i32 %ctlz.step2, %ctlz.sh3, !dbg !64
  %ctlz.sh5 = lshr i32 %ctlz.step4, 8, !dbg !64
  %ctlz.step6 = or i32 %ctlz.step4, %ctlz.sh5, !dbg !64
  %ctlz.sh7 = lshr i32 %ctlz.step6, 16, !dbg !64
  %ctlz.step8 = or i32 %ctlz.step6, %ctlz.sh7, !dbg !64
  %6 = xor i32 %ctlz.step8, -1, !dbg !64
  %cppop.and1 = and i32 %6, 1431655765, !dbg !64
  %ctpop.sh = lshr i32 %6, 1, !dbg !64
  %cppop.and2 = and i32 %ctpop.sh, 1431655765, !dbg !64
  %ctpop.step = add i32 %cppop.and1, %cppop.and2, !dbg !64
  %cppop.and19 = and i32 %ctpop.step, 858993459, !dbg !64
  %ctpop.sh10 = lshr i32 %ctpop.step, 2, !dbg !64
  %cppop.and211 = and i32 %ctpop.sh10, 858993459, !dbg !64
  %ctpop.step12 = add i32 %cppop.and19, %cppop.and211, !dbg !64
  %cppop.and113 = and i32 %ctpop.step12, 252645135, !dbg !64
  %ctpop.sh14 = lshr i32 %ctpop.step12, 4, !dbg !64
  %cppop.and215 = and i32 %ctpop.sh14, 252645135, !dbg !64
  %ctpop.step16 = add i32 %cppop.and113, %cppop.and215, !dbg !64
  %cppop.and117 = and i32 %ctpop.step16, 16711935, !dbg !64
  %ctpop.sh18 = lshr i32 %ctpop.step16, 8, !dbg !64
  %cppop.and219 = and i32 %ctpop.sh18, 16711935, !dbg !64
  %ctpop.step20 = add i32 %cppop.and117, %cppop.and219, !dbg !64
  %cppop.and121 = and i32 %ctpop.step20, 65535, !dbg !64
  %ctpop.sh22 = lshr i32 %ctpop.step20, 16, !dbg !64
  %cppop.and223 = and i32 %ctpop.sh22, 65535, !dbg !64
  %ctpop.step24 = add i32 %cppop.and121, %cppop.and223, !dbg !64
  %ctpop.part = add i32 %ctpop.step24, 0, !dbg !64
  %7 = sub nsw i32 %ctpop.part, 16, !dbg !65
  store i32 %7, ptr %3, align 4, !dbg !61
  %8 = load i32, ptr %3, align 4, !dbg !66
  ret i32 %8, !dbg !67
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !dbg !68 {
  %1 = alloca i32, align 4
  %2 = alloca i16, align 2
  %3 = alloca i32, align 4
  store i32 0, ptr %1, align 4
    #dbg_declare(ptr %2, !71, !DIExpression(), !72)
  call void @klee_make_symbolic(ptr noundef %2, i64 noundef 2, ptr noundef @.str), !dbg !73
  %4 = load i16, ptr %2, align 2, !dbg !74
  %5 = zext i16 %4 to i32, !dbg !74
  %6 = icmp ne i32 %5, 0, !dbg !76
  br i1 %6, label %7, label %54, !dbg !76

7:                                                ; preds = %0
    #dbg_declare(ptr %3, !77, !DIExpression(), !79)
  %8 = load i16, ptr %2, align 2, !dbg !80
  %9 = call i32 @builtin_clz_cb(i16 noundef zeroext %8), !dbg !81
  store i32 %9, ptr %3, align 4, !dbg !79
  %10 = load i32, ptr %3, align 4, !dbg !82
  %11 = icmp ule i32 %10, 15, !dbg !82
  br i1 %11, label %12, label %13, !dbg !82

12:                                               ; preds = %7
  br label %14, !dbg !82

13:                                               ; preds = %7
  call void @__assert_fail(ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 22, ptr noundef @__PRETTY_FUNCTION__.main) #4, !dbg !82
  unreachable, !dbg !82

14:                                               ; preds = %12
  %15 = load i16, ptr %2, align 2, !dbg !85
  %16 = zext i16 %15 to i32, !dbg !85
  %17 = and i32 %16, 65280, !dbg !87
  %18 = icmp eq i32 %17, 0, !dbg !88
  br i1 %18, label %19, label %25, !dbg !88

19:                                               ; preds = %14
  %20 = load i32, ptr %3, align 4, !dbg !89
  %21 = icmp uge i32 %20, 8, !dbg !89
  br i1 %21, label %22, label %23, !dbg !89

22:                                               ; preds = %19
  br label %24, !dbg !89

23:                                               ; preds = %19
  call void @__assert_fail(ptr noundef @.str.3, ptr noundef @.str.2, i32 noundef 24, ptr noundef @__PRETTY_FUNCTION__.main) #4, !dbg !89
  unreachable, !dbg !89

24:                                               ; preds = %22
  br label %25, !dbg !93

25:                                               ; preds = %24, %14
  %26 = load i16, ptr %2, align 2, !dbg !94
  %27 = zext i16 %26 to i32, !dbg !94
  %28 = and i32 %27, 61440, !dbg !96
  %29 = icmp ne i32 %28, 0, !dbg !97
  br i1 %29, label %30, label %36, !dbg !97

30:                                               ; preds = %25
  %31 = load i32, ptr %3, align 4, !dbg !98
  %32 = icmp ule i32 %31, 3, !dbg !98
  br i1 %32, label %33, label %34, !dbg !98

33:                                               ; preds = %30
  br label %35, !dbg !98

34:                                               ; preds = %30
  call void @__assert_fail(ptr noundef @.str.4, ptr noundef @.str.2, i32 noundef 27, ptr noundef @__PRETTY_FUNCTION__.main) #4, !dbg !98
  unreachable, !dbg !98

35:                                               ; preds = %33
  br label %36, !dbg !102

36:                                               ; preds = %35, %25
  %37 = load i16, ptr %2, align 2, !dbg !103
  %38 = zext i16 %37 to i32, !dbg !103
  %39 = and i32 %38, 32768, !dbg !105
  %40 = icmp eq i32 %39, 0, !dbg !106
  br i1 %40, label %41, label %53, !dbg !106

41:                                               ; preds = %36
  %42 = load i16, ptr %2, align 2, !dbg !107
  %43 = zext i16 %42 to i32, !dbg !107
  %44 = shl i32 %43, 1, !dbg !107
  %45 = trunc i32 %44 to i16, !dbg !107
  %46 = call i32 @builtin_clz_cb(i16 noundef zeroext %45), !dbg !107
  %47 = add i32 %46, 1, !dbg !107
  %48 = load i32, ptr %3, align 4, !dbg !107
  %49 = icmp eq i32 %47, %48, !dbg !107
  br i1 %49, label %50, label %51, !dbg !107

50:                                               ; preds = %41
  br label %52, !dbg !107

51:                                               ; preds = %41
  call void @__assert_fail(ptr noundef @.str.5, ptr noundef @.str.2, i32 noundef 30, ptr noundef @__PRETTY_FUNCTION__.main) #4, !dbg !107
  unreachable, !dbg !107

52:                                               ; preds = %50
  br label %53, !dbg !111

53:                                               ; preds = %52, %36
  br label %54, !dbg !112

54:                                               ; preds = %53, %0
  ret i32 0, !dbg !113
}

declare void @klee_make_symbolic(ptr noundef, i64 noundef, ptr noundef) #2

; Function Attrs: cold noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold noreturn nounwind }

!llvm.dbg.cu = !{!35}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 17, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/bench_06/clz_window_scale_klee.c", directory: "/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet", checksumkind: CSK_MD5, checksum: "0360e762a74bfe65d38abcb5c5d07550")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 11)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 22, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 17)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 22, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 816, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 102)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 22, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 120, elements: !21)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!21 = !{!22}
!22 = !DISubrange(count: 15)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !2, line: 24, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 16)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !2, line: 27, type: !25, isLocal: true, isDefinition: true)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(scope: null, file: !2, line: 30, type: !32, isLocal: true, isDefinition: true)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 504, elements: !33)
!33 = !{!34}
!34 = !DISubrange(count: 63)
!35 = distinct !DICompileUnit(language: DW_LANG_C11, file: !36, producer: "Ubuntu clang version 20.1.8 (0ubuntu4)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !37, globals: !45, splitDebugInlining: false, nameTableKind: None)
!36 = !DIFile(filename: "/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/src/bench_06/clz_window_scale_klee.c", directory: "/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet", checksumkind: CSK_MD5, checksum: "0360e762a74bfe65d38abcb5c5d07550")
!37 = !{!38, !39, !40}
!38 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!39 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !41, line: 25, baseType: !42)
!41 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "006a4d9ce94ea5734db820ef3fdd4790")
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !43, line: 40, baseType: !44)
!43 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "0737a53e1b85eab0e0ba9675962d13f4")
!44 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!45 = !{!0, !7, !12, !17, !23, !28, !30}
!46 = !{i32 7, !"Dwarf Version", i32 5}
!47 = !{i32 2, !"Debug Info Version", i32 3}
!48 = !{i32 1, !"wchar_size", i32 4}
!49 = !{i32 8, !"PIC Level", i32 2}
!50 = !{i32 7, !"PIE Level", i32 2}
!51 = !{i32 7, !"uwtable", i32 2}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"Ubuntu clang version 20.1.8 (0ubuntu4)"}
!54 = distinct !DISubprogram(name: "builtin_clz_cb", scope: !2, file: !2, line: 8, type: !55, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !57)
!55 = !DISubroutineType(types: !56)
!56 = !{!38, !40}
!57 = !{}
!58 = !DILocalVariable(name: "inp_window", arg: 1, scope: !54, file: !2, line: 8, type: !40)
!59 = !DILocation(line: 8, column: 38, scope: !54)
!60 = !DILocalVariable(name: "out_scale", scope: !54, file: !2, line: 9, type: !38)
!61 = !DILocation(line: 9, column: 18, scope: !54)
!62 = !DILocation(line: 10, column: 52, scope: !54)
!63 = !DILocation(line: 10, column: 38, scope: !54)
!64 = !DILocation(line: 10, column: 24, scope: !54)
!65 = !DILocation(line: 10, column: 64, scope: !54)
!66 = !DILocation(line: 11, column: 12, scope: !54)
!67 = !DILocation(line: 11, column: 5, scope: !54)
!68 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 14, type: !69, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !57)
!69 = !DISubroutineType(types: !70)
!70 = !{!39}
!71 = !DILocalVariable(name: "inp_window", scope: !68, file: !2, line: 15, type: !40)
!72 = !DILocation(line: 15, column: 14, scope: !68)
!73 = !DILocation(line: 17, column: 5, scope: !68)
!74 = !DILocation(line: 19, column: 9, scope: !75)
!75 = distinct !DILexicalBlock(scope: !68, file: !2, line: 19, column: 9)
!76 = !DILocation(line: 19, column: 20, scope: !75)
!77 = !DILocalVariable(name: "out_scale", scope: !78, file: !2, line: 20, type: !38)
!78 = distinct !DILexicalBlock(scope: !75, file: !2, line: 19, column: 27)
!79 = !DILocation(line: 20, column: 22, scope: !78)
!80 = !DILocation(line: 20, column: 49, scope: !78)
!81 = !DILocation(line: 20, column: 34, scope: !78)
!82 = !DILocation(line: 22, column: 9, scope: !83)
!83 = distinct !DILexicalBlock(scope: !84, file: !2, line: 22, column: 9)
!84 = distinct !DILexicalBlock(scope: !78, file: !2, line: 22, column: 9)
!85 = !DILocation(line: 23, column: 14, scope: !86)
!86 = distinct !DILexicalBlock(scope: !78, file: !2, line: 23, column: 13)
!87 = !DILocation(line: 23, column: 25, scope: !86)
!88 = !DILocation(line: 23, column: 36, scope: !86)
!89 = !DILocation(line: 24, column: 13, scope: !90)
!90 = distinct !DILexicalBlock(scope: !91, file: !2, line: 24, column: 13)
!91 = distinct !DILexicalBlock(scope: !92, file: !2, line: 24, column: 13)
!92 = distinct !DILexicalBlock(scope: !86, file: !2, line: 23, column: 43)
!93 = !DILocation(line: 25, column: 9, scope: !92)
!94 = !DILocation(line: 26, column: 14, scope: !95)
!95 = distinct !DILexicalBlock(scope: !78, file: !2, line: 26, column: 13)
!96 = !DILocation(line: 26, column: 25, scope: !95)
!97 = !DILocation(line: 26, column: 36, scope: !95)
!98 = !DILocation(line: 27, column: 13, scope: !99)
!99 = distinct !DILexicalBlock(scope: !100, file: !2, line: 27, column: 13)
!100 = distinct !DILexicalBlock(scope: !101, file: !2, line: 27, column: 13)
!101 = distinct !DILexicalBlock(scope: !95, file: !2, line: 26, column: 43)
!102 = !DILocation(line: 28, column: 9, scope: !101)
!103 = !DILocation(line: 29, column: 14, scope: !104)
!104 = distinct !DILexicalBlock(scope: !78, file: !2, line: 29, column: 13)
!105 = !DILocation(line: 29, column: 25, scope: !104)
!106 = !DILocation(line: 29, column: 36, scope: !104)
!107 = !DILocation(line: 30, column: 13, scope: !108)
!108 = distinct !DILexicalBlock(scope: !109, file: !2, line: 30, column: 13)
!109 = distinct !DILexicalBlock(scope: !110, file: !2, line: 30, column: 13)
!110 = distinct !DILexicalBlock(scope: !104, file: !2, line: 29, column: 43)
!111 = !DILocation(line: 31, column: 9, scope: !110)
!112 = !DILocation(line: 32, column: 5, scope: !78)
!113 = !DILocation(line: 34, column: 5, scope: !68)
