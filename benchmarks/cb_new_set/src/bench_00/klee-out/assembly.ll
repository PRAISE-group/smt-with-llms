; ModuleID = '/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/src/bench_00/digit_sum_checksum_klee.bc'
source_filename = "/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/src/bench_00/digit_sum_checksum_klee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"inp_value\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [15 x i8] c"out_sum <= 41U\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [104 x i8] c"/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/src/bench_00/digit_sum_checksum_klee.c\00", align 1, !dbg !12
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1, !dbg !17
@.str.3 = private unnamed_addr constant [21 x i8] c"out_sum == inp_value\00", align 1, !dbg !21
@.str.4 = private unnamed_addr constant [85 x i8] c"out_sum == (uint16_t)(digit_sum_cb((uint16_t)(inp_value / 10U)) + (inp_value % 10U))\00", align 1, !dbg !26
@.str.5 = private unnamed_addr constant [14 x i8] c"out_sum == 0U\00", align 1, !dbg !31
@.str.6 = private unnamed_addr constant [14 x i8] c"out_sum >= 1U\00", align 1, !dbg !36

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i16 @digit_sum_cb(i16 noundef zeroext %0) #0 !dbg !55 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  store i16 %0, ptr %2, align 2
    #dbg_declare(ptr %2, !59, !DIExpression(), !60)
    #dbg_declare(ptr %3, !61, !DIExpression(), !62)
  store i16 0, ptr %3, align 2, !dbg !62
  br label %4, !dbg !63

4:                                                ; preds = %8, %1
  %5 = load i16, ptr %2, align 2, !dbg !64
  %6 = zext i16 %5 to i32, !dbg !64
  %7 = icmp ne i32 %6, 0, !dbg !65
  br i1 %7, label %8, label %20, !dbg !63

8:                                                ; preds = %4
  %9 = load i16, ptr %3, align 2, !dbg !66
  %10 = zext i16 %9 to i32, !dbg !66
  %11 = load i16, ptr %2, align 2, !dbg !68
  %12 = zext i16 %11 to i32, !dbg !68
  %13 = urem i32 %12, 10, !dbg !69
  %14 = add i32 %10, %13, !dbg !70
  %15 = trunc i32 %14 to i16, !dbg !71
  store i16 %15, ptr %3, align 2, !dbg !72
  %16 = load i16, ptr %2, align 2, !dbg !73
  %17 = zext i16 %16 to i32, !dbg !73
  %18 = udiv i32 %17, 10, !dbg !74
  %19 = trunc i32 %18 to i16, !dbg !75
  store i16 %19, ptr %2, align 2, !dbg !76
  br label %4, !dbg !63, !llvm.loop !77

20:                                               ; preds = %4
  %21 = load i16, ptr %3, align 2, !dbg !80
  ret i16 %21, !dbg !81
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !dbg !82 {
  %1 = alloca i32, align 4
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  store i32 0, ptr %1, align 4
    #dbg_declare(ptr %2, !86, !DIExpression(), !87)
    #dbg_declare(ptr %3, !88, !DIExpression(), !89)
  call void @klee_make_symbolic(ptr noundef %2, i64 noundef 2, ptr noundef @.str), !dbg !90
  %4 = load i16, ptr %2, align 2, !dbg !91
  %5 = call zeroext i16 @digit_sum_cb(i16 noundef zeroext %4), !dbg !92
  store i16 %5, ptr %3, align 2, !dbg !93
  %6 = load i16, ptr %3, align 2, !dbg !94
  %7 = zext i16 %6 to i32, !dbg !94
  %8 = icmp ule i32 %7, 41, !dbg !94
  br i1 %8, label %9, label %10, !dbg !94

9:                                                ; preds = %0
  br label %11, !dbg !94

10:                                               ; preds = %0
  call void @__assert_fail(ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 25, ptr noundef @__PRETTY_FUNCTION__.main) #3, !dbg !94
  unreachable, !dbg !94

11:                                               ; preds = %9
  %12 = load i16, ptr %2, align 2, !dbg !97
  %13 = zext i16 %12 to i32, !dbg !97
  %14 = icmp ult i32 %13, 10, !dbg !99
  br i1 %14, label %15, label %24, !dbg !99

15:                                               ; preds = %11
  %16 = load i16, ptr %3, align 2, !dbg !100
  %17 = zext i16 %16 to i32, !dbg !100
  %18 = load i16, ptr %2, align 2, !dbg !100
  %19 = zext i16 %18 to i32, !dbg !100
  %20 = icmp eq i32 %17, %19, !dbg !100
  br i1 %20, label %21, label %22, !dbg !100

21:                                               ; preds = %15
  br label %23, !dbg !100

22:                                               ; preds = %15
  call void @__assert_fail(ptr noundef @.str.3, ptr noundef @.str.2, i32 noundef 27, ptr noundef @__PRETTY_FUNCTION__.main) #3, !dbg !100
  unreachable, !dbg !100

23:                                               ; preds = %21
  br label %24, !dbg !104

24:                                               ; preds = %23, %11
  %25 = load i16, ptr %3, align 2, !dbg !105
  %26 = zext i16 %25 to i32, !dbg !105
  %27 = load i16, ptr %2, align 2, !dbg !105
  %28 = zext i16 %27 to i32, !dbg !105
  %29 = udiv i32 %28, 10, !dbg !105
  %30 = trunc i32 %29 to i16, !dbg !105
  %31 = call zeroext i16 @digit_sum_cb(i16 noundef zeroext %30), !dbg !105
  %32 = zext i16 %31 to i32, !dbg !105
  %33 = load i16, ptr %2, align 2, !dbg !105
  %34 = zext i16 %33 to i32, !dbg !105
  %35 = urem i32 %34, 10, !dbg !105
  %36 = add i32 %32, %35, !dbg !105
  %37 = trunc i32 %36 to i16, !dbg !105
  %38 = zext i16 %37 to i32, !dbg !105
  %39 = icmp eq i32 %26, %38, !dbg !105
  br i1 %39, label %40, label %41, !dbg !105

40:                                               ; preds = %24
  br label %42, !dbg !105

41:                                               ; preds = %24
  call void @__assert_fail(ptr noundef @.str.4, ptr noundef @.str.2, i32 noundef 29, ptr noundef @__PRETTY_FUNCTION__.main) #3, !dbg !105
  unreachable, !dbg !105

42:                                               ; preds = %40
  %43 = load i16, ptr %2, align 2, !dbg !108
  %44 = zext i16 %43 to i32, !dbg !108
  %45 = icmp eq i32 %44, 0, !dbg !110
  br i1 %45, label %46, label %53, !dbg !110

46:                                               ; preds = %42
  %47 = load i16, ptr %3, align 2, !dbg !111
  %48 = zext i16 %47 to i32, !dbg !111
  %49 = icmp eq i32 %48, 0, !dbg !111
  br i1 %49, label %50, label %51, !dbg !111

50:                                               ; preds = %46
  br label %52, !dbg !111

51:                                               ; preds = %46
  call void @__assert_fail(ptr noundef @.str.5, ptr noundef @.str.2, i32 noundef 31, ptr noundef @__PRETTY_FUNCTION__.main) #3, !dbg !111
  unreachable, !dbg !111

52:                                               ; preds = %50
  br label %60, !dbg !115

53:                                               ; preds = %42
  %54 = load i16, ptr %3, align 2, !dbg !116
  %55 = zext i16 %54 to i32, !dbg !116
  %56 = icmp uge i32 %55, 1, !dbg !116
  br i1 %56, label %57, label %58, !dbg !116

57:                                               ; preds = %53
  br label %59, !dbg !116

58:                                               ; preds = %53
  call void @__assert_fail(ptr noundef @.str.6, ptr noundef @.str.2, i32 noundef 33, ptr noundef @__PRETTY_FUNCTION__.main) #3, !dbg !116
  unreachable, !dbg !116

59:                                               ; preds = %57
  br label %60

60:                                               ; preds = %59, %52
  ret i32 0, !dbg !120
}

declare void @klee_make_symbolic(ptr noundef, i64 noundef, ptr noundef) #1

; Function Attrs: cold noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noreturn nounwind }

!llvm.dbg.cu = !{!38}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 21, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/bench_00/digit_sum_checksum_klee.c", directory: "/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet", checksumkind: CSK_MD5, checksum: "fc8af862e6cdc9316df6c45b845e1d03")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 10)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 25, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 15)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 25, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 832, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 104)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 25, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 120, elements: !10)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(scope: null, file: !2, line: 27, type: !23, isLocal: true, isDefinition: true)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 21)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(scope: null, file: !2, line: 29, type: !28, isLocal: true, isDefinition: true)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 680, elements: !29)
!29 = !{!30}
!30 = !DISubrange(count: 85)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(scope: null, file: !2, line: 31, type: !33, isLocal: true, isDefinition: true)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !34)
!34 = !{!35}
!35 = !DISubrange(count: 14)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(scope: null, file: !2, line: 33, type: !33, isLocal: true, isDefinition: true)
!38 = distinct !DICompileUnit(language: DW_LANG_C11, file: !39, producer: "Ubuntu clang version 20.1.8 (0ubuntu4)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !40, globals: !46, splitDebugInlining: false, nameTableKind: None)
!39 = !DIFile(filename: "/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/src/bench_00/digit_sum_checksum_klee.c", directory: "/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet", checksumkind: CSK_MD5, checksum: "fc8af862e6cdc9316df6c45b845e1d03")
!40 = !{!41}
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !42, line: 25, baseType: !43)
!42 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "006a4d9ce94ea5734db820ef3fdd4790")
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !44, line: 40, baseType: !45)
!44 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "0737a53e1b85eab0e0ba9675962d13f4")
!45 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!46 = !{!0, !7, !12, !17, !21, !26, !31, !36}
!47 = !{i32 7, !"Dwarf Version", i32 5}
!48 = !{i32 2, !"Debug Info Version", i32 3}
!49 = !{i32 1, !"wchar_size", i32 4}
!50 = !{i32 8, !"PIC Level", i32 2}
!51 = !{i32 7, !"PIE Level", i32 2}
!52 = !{i32 7, !"uwtable", i32 2}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"Ubuntu clang version 20.1.8 (0ubuntu4)"}
!55 = distinct !DISubprogram(name: "digit_sum_cb", scope: !2, file: !2, line: 6, type: !56, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !38, retainedNodes: !58)
!56 = !DISubroutineType(types: !57)
!57 = !{!41, !41}
!58 = !{}
!59 = !DILocalVariable(name: "inp_value", arg: 1, scope: !55, file: !2, line: 6, type: !41)
!60 = !DILocation(line: 6, column: 32, scope: !55)
!61 = !DILocalVariable(name: "out_sum", scope: !55, file: !2, line: 7, type: !41)
!62 = !DILocation(line: 7, column: 14, scope: !55)
!63 = !DILocation(line: 9, column: 5, scope: !55)
!64 = !DILocation(line: 9, column: 12, scope: !55)
!65 = !DILocation(line: 9, column: 22, scope: !55)
!66 = !DILocation(line: 10, column: 30, scope: !67)
!67 = distinct !DILexicalBlock(scope: !55, file: !2, line: 9, column: 29)
!68 = !DILocation(line: 10, column: 41, scope: !67)
!69 = !DILocation(line: 10, column: 51, scope: !67)
!70 = !DILocation(line: 10, column: 38, scope: !67)
!71 = !DILocation(line: 10, column: 19, scope: !67)
!72 = !DILocation(line: 10, column: 17, scope: !67)
!73 = !DILocation(line: 11, column: 32, scope: !67)
!74 = !DILocation(line: 11, column: 42, scope: !67)
!75 = !DILocation(line: 11, column: 21, scope: !67)
!76 = !DILocation(line: 11, column: 19, scope: !67)
!77 = distinct !{!77, !63, !78, !79}
!78 = !DILocation(line: 12, column: 5, scope: !55)
!79 = !{!"llvm.loop.mustprogress"}
!80 = !DILocation(line: 14, column: 12, scope: !55)
!81 = !DILocation(line: 14, column: 5, scope: !55)
!82 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 17, type: !83, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !38, retainedNodes: !58)
!83 = !DISubroutineType(types: !84)
!84 = !{!85}
!85 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!86 = !DILocalVariable(name: "inp_value", scope: !82, file: !2, line: 18, type: !41)
!87 = !DILocation(line: 18, column: 14, scope: !82)
!88 = !DILocalVariable(name: "out_sum", scope: !82, file: !2, line: 19, type: !41)
!89 = !DILocation(line: 19, column: 14, scope: !82)
!90 = !DILocation(line: 21, column: 5, scope: !82)
!91 = !DILocation(line: 23, column: 28, scope: !82)
!92 = !DILocation(line: 23, column: 15, scope: !82)
!93 = !DILocation(line: 23, column: 13, scope: !82)
!94 = !DILocation(line: 25, column: 5, scope: !95)
!95 = distinct !DILexicalBlock(scope: !96, file: !2, line: 25, column: 5)
!96 = distinct !DILexicalBlock(scope: !82, file: !2, line: 25, column: 5)
!97 = !DILocation(line: 26, column: 9, scope: !98)
!98 = distinct !DILexicalBlock(scope: !82, file: !2, line: 26, column: 9)
!99 = !DILocation(line: 26, column: 19, scope: !98)
!100 = !DILocation(line: 27, column: 9, scope: !101)
!101 = distinct !DILexicalBlock(scope: !102, file: !2, line: 27, column: 9)
!102 = distinct !DILexicalBlock(scope: !103, file: !2, line: 27, column: 9)
!103 = distinct !DILexicalBlock(scope: !98, file: !2, line: 26, column: 26)
!104 = !DILocation(line: 28, column: 5, scope: !103)
!105 = !DILocation(line: 29, column: 5, scope: !106)
!106 = distinct !DILexicalBlock(scope: !107, file: !2, line: 29, column: 5)
!107 = distinct !DILexicalBlock(scope: !82, file: !2, line: 29, column: 5)
!108 = !DILocation(line: 30, column: 9, scope: !109)
!109 = distinct !DILexicalBlock(scope: !82, file: !2, line: 30, column: 9)
!110 = !DILocation(line: 30, column: 19, scope: !109)
!111 = !DILocation(line: 31, column: 9, scope: !112)
!112 = distinct !DILexicalBlock(scope: !113, file: !2, line: 31, column: 9)
!113 = distinct !DILexicalBlock(scope: !114, file: !2, line: 31, column: 9)
!114 = distinct !DILexicalBlock(scope: !109, file: !2, line: 30, column: 26)
!115 = !DILocation(line: 32, column: 5, scope: !114)
!116 = !DILocation(line: 33, column: 9, scope: !117)
!117 = distinct !DILexicalBlock(scope: !118, file: !2, line: 33, column: 9)
!118 = distinct !DILexicalBlock(scope: !119, file: !2, line: 33, column: 9)
!119 = distinct !DILexicalBlock(scope: !109, file: !2, line: 32, column: 12)
!120 = !DILocation(line: 36, column: 5, scope: !82)
