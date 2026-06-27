; ModuleID = '/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/src/bench_08/ctz_stride_detector_klee.bc'
source_filename = "/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/src/bench_08/ctz_stride_detector_klee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"inp_mask\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [18 x i8] c"out_stride <= 15U\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [105 x i8] c"/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/src/bench_08/ctz_stride_detector_klee.c\00", align 1, !dbg !12
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1, !dbg !17
@.str.3 = private unnamed_addr constant [17 x i8] c"out_stride >= 8U\00", align 1, !dbg !23
@.str.4 = private unnamed_addr constant [17 x i8] c"out_stride <= 3U\00", align 1, !dbg !28
@.str.5 = private unnamed_addr constant [62 x i8] c"builtin_ctz_cb((uint16_t)(inp_mask >> 1U)) + 1U == out_stride\00", align 1, !dbg !30

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @builtin_ctz_cb(i16 noundef zeroext %0) #0 !dbg !53 {
  %2 = alloca i16, align 2
  %3 = alloca i32, align 4
  store i16 %0, ptr %2, align 2
    #dbg_declare(ptr %2, !56, !DIExpression(), !57)
    #dbg_declare(ptr %3, !58, !DIExpression(), !59)
  %4 = load i16, ptr %2, align 2, !dbg !60
  %5 = zext i16 %4 to i32, !dbg !61
  %.not = xor i32 %5, -1, !dbg !62
  %6 = sub i32 %5, 1, !dbg !62
  %7 = and i32 %.not, %6, !dbg !62
  %cppop.and1 = and i32 %7, 1431655765, !dbg !62
  %ctpop.sh = lshr i32 %7, 1, !dbg !62
  %cppop.and2 = and i32 %ctpop.sh, 1431655765, !dbg !62
  %ctpop.step = add i32 %cppop.and1, %cppop.and2, !dbg !62
  %cppop.and11 = and i32 %ctpop.step, 858993459, !dbg !62
  %ctpop.sh2 = lshr i32 %ctpop.step, 2, !dbg !62
  %cppop.and23 = and i32 %ctpop.sh2, 858993459, !dbg !62
  %ctpop.step4 = add i32 %cppop.and11, %cppop.and23, !dbg !62
  %cppop.and15 = and i32 %ctpop.step4, 252645135, !dbg !62
  %ctpop.sh6 = lshr i32 %ctpop.step4, 4, !dbg !62
  %cppop.and27 = and i32 %ctpop.sh6, 252645135, !dbg !62
  %ctpop.step8 = add i32 %cppop.and15, %cppop.and27, !dbg !62
  %cppop.and19 = and i32 %ctpop.step8, 16711935, !dbg !62
  %ctpop.sh10 = lshr i32 %ctpop.step8, 8, !dbg !62
  %cppop.and211 = and i32 %ctpop.sh10, 16711935, !dbg !62
  %ctpop.step12 = add i32 %cppop.and19, %cppop.and211, !dbg !62
  %cppop.and113 = and i32 %ctpop.step12, 65535, !dbg !62
  %ctpop.sh14 = lshr i32 %ctpop.step12, 16, !dbg !62
  %cppop.and215 = and i32 %ctpop.sh14, 65535, !dbg !62
  %ctpop.step16 = add i32 %cppop.and113, %cppop.and215, !dbg !62
  %ctpop.part = add i32 %ctpop.step16, 0, !dbg !62
  store i32 %ctpop.part, ptr %3, align 4, !dbg !59
  %8 = load i32, ptr %3, align 4, !dbg !63
  ret i32 %8, !dbg !64
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !dbg !65 {
  %1 = alloca i32, align 4
  %2 = alloca i16, align 2
  %3 = alloca i32, align 4
  store i32 0, ptr %1, align 4
    #dbg_declare(ptr %2, !69, !DIExpression(), !70)
  call void @klee_make_symbolic(ptr noundef %2, i64 noundef 2, ptr noundef @.str), !dbg !71
  %4 = load i16, ptr %2, align 2, !dbg !72
  %5 = zext i16 %4 to i32, !dbg !72
  %6 = icmp ne i32 %5, 0, !dbg !74
  br i1 %6, label %7, label %54, !dbg !74

7:                                                ; preds = %0
    #dbg_declare(ptr %3, !75, !DIExpression(), !77)
  %8 = load i16, ptr %2, align 2, !dbg !78
  %9 = call i32 @builtin_ctz_cb(i16 noundef zeroext %8), !dbg !79
  store i32 %9, ptr %3, align 4, !dbg !77
  %10 = load i32, ptr %3, align 4, !dbg !80
  %11 = icmp ule i32 %10, 15, !dbg !80
  br i1 %11, label %12, label %13, !dbg !80

12:                                               ; preds = %7
  br label %14, !dbg !80

13:                                               ; preds = %7
  call void @__assert_fail(ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 20, ptr noundef @__PRETTY_FUNCTION__.main) #4, !dbg !80
  unreachable, !dbg !80

14:                                               ; preds = %12
  %15 = load i16, ptr %2, align 2, !dbg !83
  %16 = zext i16 %15 to i32, !dbg !83
  %17 = and i32 %16, 255, !dbg !85
  %18 = icmp eq i32 %17, 0, !dbg !86
  br i1 %18, label %19, label %25, !dbg !86

19:                                               ; preds = %14
  %20 = load i32, ptr %3, align 4, !dbg !87
  %21 = icmp uge i32 %20, 8, !dbg !87
  br i1 %21, label %22, label %23, !dbg !87

22:                                               ; preds = %19
  br label %24, !dbg !87

23:                                               ; preds = %19
  call void @__assert_fail(ptr noundef @.str.3, ptr noundef @.str.2, i32 noundef 22, ptr noundef @__PRETTY_FUNCTION__.main) #4, !dbg !87
  unreachable, !dbg !87

24:                                               ; preds = %22
  br label %25, !dbg !91

25:                                               ; preds = %24, %14
  %26 = load i16, ptr %2, align 2, !dbg !92
  %27 = zext i16 %26 to i32, !dbg !92
  %28 = and i32 %27, 15, !dbg !94
  %29 = icmp ne i32 %28, 0, !dbg !95
  br i1 %29, label %30, label %36, !dbg !95

30:                                               ; preds = %25
  %31 = load i32, ptr %3, align 4, !dbg !96
  %32 = icmp ule i32 %31, 3, !dbg !96
  br i1 %32, label %33, label %34, !dbg !96

33:                                               ; preds = %30
  br label %35, !dbg !96

34:                                               ; preds = %30
  call void @__assert_fail(ptr noundef @.str.4, ptr noundef @.str.2, i32 noundef 25, ptr noundef @__PRETTY_FUNCTION__.main) #4, !dbg !96
  unreachable, !dbg !96

35:                                               ; preds = %33
  br label %36, !dbg !100

36:                                               ; preds = %35, %25
  %37 = load i16, ptr %2, align 2, !dbg !101
  %38 = zext i16 %37 to i32, !dbg !101
  %39 = and i32 %38, 1, !dbg !103
  %40 = icmp eq i32 %39, 0, !dbg !104
  br i1 %40, label %41, label %53, !dbg !104

41:                                               ; preds = %36
  %42 = load i16, ptr %2, align 2, !dbg !105
  %43 = zext i16 %42 to i32, !dbg !105
  %44 = ashr i32 %43, 1, !dbg !105
  %45 = trunc i32 %44 to i16, !dbg !105
  %46 = call i32 @builtin_ctz_cb(i16 noundef zeroext %45), !dbg !105
  %47 = add i32 %46, 1, !dbg !105
  %48 = load i32, ptr %3, align 4, !dbg !105
  %49 = icmp eq i32 %47, %48, !dbg !105
  br i1 %49, label %50, label %51, !dbg !105

50:                                               ; preds = %41
  br label %52, !dbg !105

51:                                               ; preds = %41
  call void @__assert_fail(ptr noundef @.str.5, ptr noundef @.str.2, i32 noundef 28, ptr noundef @__PRETTY_FUNCTION__.main) #4, !dbg !105
  unreachable, !dbg !105

52:                                               ; preds = %50
  br label %53, !dbg !109

53:                                               ; preds = %52, %36
  br label %54, !dbg !110

54:                                               ; preds = %53, %0
  ret i32 0, !dbg !111
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
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 15, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/bench_08/ctz_stride_detector_klee.c", directory: "/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet", checksumkind: CSK_MD5, checksum: "018b82f0d222f52e4eb4c4bfedaf2680")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 9)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 20, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 18)
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
!24 = distinct !DIGlobalVariable(scope: null, file: !2, line: 22, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 17)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !2, line: 25, type: !25, isLocal: true, isDefinition: true)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(scope: null, file: !2, line: 28, type: !32, isLocal: true, isDefinition: true)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !33)
!33 = !{!34}
!34 = !DISubrange(count: 62)
!35 = distinct !DICompileUnit(language: DW_LANG_C11, file: !36, producer: "Ubuntu clang version 20.1.8 (0ubuntu4)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !37, globals: !44, splitDebugInlining: false, nameTableKind: None)
!36 = !DIFile(filename: "/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/src/bench_08/ctz_stride_detector_klee.c", directory: "/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet", checksumkind: CSK_MD5, checksum: "018b82f0d222f52e4eb4c4bfedaf2680")
!37 = !{!38, !39}
!38 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !40, line: 25, baseType: !41)
!40 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "006a4d9ce94ea5734db820ef3fdd4790")
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !42, line: 40, baseType: !43)
!42 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "0737a53e1b85eab0e0ba9675962d13f4")
!43 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!44 = !{!0, !7, !12, !17, !23, !28, !30}
!45 = !{i32 7, !"Dwarf Version", i32 5}
!46 = !{i32 2, !"Debug Info Version", i32 3}
!47 = !{i32 1, !"wchar_size", i32 4}
!48 = !{i32 8, !"PIC Level", i32 2}
!49 = !{i32 7, !"PIE Level", i32 2}
!50 = !{i32 7, !"uwtable", i32 2}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"Ubuntu clang version 20.1.8 (0ubuntu4)"}
!53 = distinct !DISubprogram(name: "builtin_ctz_cb", scope: !2, file: !2, line: 7, type: !54, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !55)
!54 = !DISubroutineType(types: !37)
!55 = !{}
!56 = !DILocalVariable(name: "inp_mask", arg: 1, scope: !53, file: !2, line: 7, type: !39)
!57 = !DILocation(line: 7, column: 38, scope: !53)
!58 = !DILocalVariable(name: "out_stride", scope: !53, file: !2, line: 8, type: !38)
!59 = !DILocation(line: 8, column: 18, scope: !53)
!60 = !DILocation(line: 8, column: 73, scope: !53)
!61 = !DILocation(line: 8, column: 59, scope: !53)
!62 = !DILocation(line: 8, column: 45, scope: !53)
!63 = !DILocation(line: 9, column: 12, scope: !53)
!64 = !DILocation(line: 9, column: 5, scope: !53)
!65 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 12, type: !66, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !55)
!66 = !DISubroutineType(types: !67)
!67 = !{!68}
!68 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!69 = !DILocalVariable(name: "inp_mask", scope: !65, file: !2, line: 13, type: !39)
!70 = !DILocation(line: 13, column: 14, scope: !65)
!71 = !DILocation(line: 15, column: 5, scope: !65)
!72 = !DILocation(line: 17, column: 9, scope: !73)
!73 = distinct !DILexicalBlock(scope: !65, file: !2, line: 17, column: 9)
!74 = !DILocation(line: 17, column: 18, scope: !73)
!75 = !DILocalVariable(name: "out_stride", scope: !76, file: !2, line: 18, type: !38)
!76 = distinct !DILexicalBlock(scope: !73, file: !2, line: 17, column: 25)
!77 = !DILocation(line: 18, column: 22, scope: !76)
!78 = !DILocation(line: 18, column: 50, scope: !76)
!79 = !DILocation(line: 18, column: 35, scope: !76)
!80 = !DILocation(line: 20, column: 9, scope: !81)
!81 = distinct !DILexicalBlock(scope: !82, file: !2, line: 20, column: 9)
!82 = distinct !DILexicalBlock(scope: !76, file: !2, line: 20, column: 9)
!83 = !DILocation(line: 21, column: 14, scope: !84)
!84 = distinct !DILexicalBlock(scope: !76, file: !2, line: 21, column: 13)
!85 = !DILocation(line: 21, column: 23, scope: !84)
!86 = !DILocation(line: 21, column: 34, scope: !84)
!87 = !DILocation(line: 22, column: 13, scope: !88)
!88 = distinct !DILexicalBlock(scope: !89, file: !2, line: 22, column: 13)
!89 = distinct !DILexicalBlock(scope: !90, file: !2, line: 22, column: 13)
!90 = distinct !DILexicalBlock(scope: !84, file: !2, line: 21, column: 41)
!91 = !DILocation(line: 23, column: 9, scope: !90)
!92 = !DILocation(line: 24, column: 14, scope: !93)
!93 = distinct !DILexicalBlock(scope: !76, file: !2, line: 24, column: 13)
!94 = !DILocation(line: 24, column: 23, scope: !93)
!95 = !DILocation(line: 24, column: 34, scope: !93)
!96 = !DILocation(line: 25, column: 13, scope: !97)
!97 = distinct !DILexicalBlock(scope: !98, file: !2, line: 25, column: 13)
!98 = distinct !DILexicalBlock(scope: !99, file: !2, line: 25, column: 13)
!99 = distinct !DILexicalBlock(scope: !93, file: !2, line: 24, column: 41)
!100 = !DILocation(line: 26, column: 9, scope: !99)
!101 = !DILocation(line: 27, column: 14, scope: !102)
!102 = distinct !DILexicalBlock(scope: !76, file: !2, line: 27, column: 13)
!103 = !DILocation(line: 27, column: 23, scope: !102)
!104 = !DILocation(line: 27, column: 29, scope: !102)
!105 = !DILocation(line: 28, column: 13, scope: !106)
!106 = distinct !DILexicalBlock(scope: !107, file: !2, line: 28, column: 13)
!107 = distinct !DILexicalBlock(scope: !108, file: !2, line: 28, column: 13)
!108 = distinct !DILexicalBlock(scope: !102, file: !2, line: 27, column: 36)
!109 = !DILocation(line: 29, column: 9, scope: !108)
!110 = !DILocation(line: 30, column: 5, scope: !76)
!111 = !DILocation(line: 32, column: 5, scope: !65)
