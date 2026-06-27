; ModuleID = '/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/src/bench_18/decimal_length_bucket_klee.bc'
source_filename = "/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/src/bench_18/decimal_length_bucket_klee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"inp_value\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [17 x i8] c"out_digits >= 1U\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [107 x i8] c"/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/src/bench_18/decimal_length_bucket_klee.c\00", align 1, !dbg !12
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1, !dbg !17
@.str.3 = private unnamed_addr constant [17 x i8] c"out_digits <= 5U\00", align 1, !dbg !23
@.str.4 = private unnamed_addr constant [17 x i8] c"out_digits == 1U\00", align 1, !dbg !25
@.str.5 = private unnamed_addr constant [17 x i8] c"out_digits == 2U\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [17 x i8] c"out_digits == 5U\00", align 1, !dbg !29
@.str.7 = private unnamed_addr constant [78 x i8] c"out_digits == (uint16_t)(decimal_length_cb((uint16_t)(inp_value / 10U)) + 1U)\00", align 1, !dbg !31

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i16 @decimal_length_cb(i16 noundef zeroext %0) #0 !dbg !53 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  store i16 %0, ptr %2, align 2
    #dbg_declare(ptr %2, !57, !DIExpression(), !58)
    #dbg_declare(ptr %3, !59, !DIExpression(), !60)
  store i16 1, ptr %3, align 2, !dbg !60
  br label %4, !dbg !61

4:                                                ; preds = %8, %1
  %5 = load i16, ptr %2, align 2, !dbg !62
  %6 = zext i16 %5 to i32, !dbg !62
  %7 = icmp uge i32 %6, 10, !dbg !63
  br i1 %7, label %8, label %15, !dbg !61

8:                                                ; preds = %4
  %9 = load i16, ptr %2, align 2, !dbg !64
  %10 = zext i16 %9 to i32, !dbg !64
  %11 = udiv i32 %10, 10, !dbg !66
  %12 = trunc i32 %11 to i16, !dbg !67
  store i16 %12, ptr %2, align 2, !dbg !68
  %13 = load i16, ptr %3, align 2, !dbg !69
  %14 = add i16 %13, 1, !dbg !69
  store i16 %14, ptr %3, align 2, !dbg !69
  br label %4, !dbg !61, !llvm.loop !70

15:                                               ; preds = %4
  %16 = load i16, ptr %3, align 2, !dbg !73
  ret i16 %16, !dbg !74
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !dbg !75 {
  %1 = alloca i32, align 4
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  store i32 0, ptr %1, align 4
    #dbg_declare(ptr %2, !79, !DIExpression(), !80)
    #dbg_declare(ptr %3, !81, !DIExpression(), !82)
  call void @klee_make_symbolic(ptr noundef %2, i64 noundef 2, ptr noundef @.str), !dbg !83
  %4 = load i16, ptr %2, align 2, !dbg !84
  %5 = call zeroext i16 @decimal_length_cb(i16 noundef zeroext %4), !dbg !85
  store i16 %5, ptr %3, align 2, !dbg !86
  %6 = load i16, ptr %3, align 2, !dbg !87
  %7 = zext i16 %6 to i32, !dbg !87
  %8 = icmp uge i32 %7, 1, !dbg !87
  br i1 %8, label %9, label %10, !dbg !87

9:                                                ; preds = %0
  br label %11, !dbg !87

10:                                               ; preds = %0
  call void @__assert_fail(ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 25, ptr noundef @__PRETTY_FUNCTION__.main) #3, !dbg !87
  unreachable, !dbg !87

11:                                               ; preds = %9
  %12 = load i16, ptr %3, align 2, !dbg !90
  %13 = zext i16 %12 to i32, !dbg !90
  %14 = icmp ule i32 %13, 5, !dbg !90
  br i1 %14, label %15, label %16, !dbg !90

15:                                               ; preds = %11
  br label %17, !dbg !90

16:                                               ; preds = %11
  call void @__assert_fail(ptr noundef @.str.3, ptr noundef @.str.2, i32 noundef 26, ptr noundef @__PRETTY_FUNCTION__.main) #3, !dbg !90
  unreachable, !dbg !90

17:                                               ; preds = %15
  %18 = load i16, ptr %2, align 2, !dbg !93
  %19 = zext i16 %18 to i32, !dbg !93
  %20 = icmp ult i32 %19, 10, !dbg !95
  br i1 %20, label %21, label %28, !dbg !95

21:                                               ; preds = %17
  %22 = load i16, ptr %3, align 2, !dbg !96
  %23 = zext i16 %22 to i32, !dbg !96
  %24 = icmp eq i32 %23, 1, !dbg !96
  br i1 %24, label %25, label %26, !dbg !96

25:                                               ; preds = %21
  br label %27, !dbg !96

26:                                               ; preds = %21
  call void @__assert_fail(ptr noundef @.str.4, ptr noundef @.str.2, i32 noundef 28, ptr noundef @__PRETTY_FUNCTION__.main) #3, !dbg !96
  unreachable, !dbg !96

27:                                               ; preds = %25
  br label %28, !dbg !100

28:                                               ; preds = %27, %17
  %29 = load i16, ptr %2, align 2, !dbg !101
  %30 = zext i16 %29 to i32, !dbg !101
  %31 = icmp uge i32 %30, 10, !dbg !103
  br i1 %31, label %32, label %43, !dbg !104

32:                                               ; preds = %28
  %33 = load i16, ptr %2, align 2, !dbg !105
  %34 = zext i16 %33 to i32, !dbg !105
  %35 = icmp ult i32 %34, 100, !dbg !106
  br i1 %35, label %36, label %43, !dbg !104

36:                                               ; preds = %32
  %37 = load i16, ptr %3, align 2, !dbg !107
  %38 = zext i16 %37 to i32, !dbg !107
  %39 = icmp eq i32 %38, 2, !dbg !107
  br i1 %39, label %40, label %41, !dbg !107

40:                                               ; preds = %36
  br label %42, !dbg !107

41:                                               ; preds = %36
  call void @__assert_fail(ptr noundef @.str.5, ptr noundef @.str.2, i32 noundef 31, ptr noundef @__PRETTY_FUNCTION__.main) #3, !dbg !107
  unreachable, !dbg !107

42:                                               ; preds = %40
  br label %43, !dbg !111

43:                                               ; preds = %42, %32, %28
  %44 = load i16, ptr %2, align 2, !dbg !112
  %45 = zext i16 %44 to i32, !dbg !112
  %46 = icmp uge i32 %45, 10000, !dbg !114
  br i1 %46, label %47, label %54, !dbg !114

47:                                               ; preds = %43
  %48 = load i16, ptr %3, align 2, !dbg !115
  %49 = zext i16 %48 to i32, !dbg !115
  %50 = icmp eq i32 %49, 5, !dbg !115
  br i1 %50, label %51, label %52, !dbg !115

51:                                               ; preds = %47
  br label %53, !dbg !115

52:                                               ; preds = %47
  call void @__assert_fail(ptr noundef @.str.6, ptr noundef @.str.2, i32 noundef 34, ptr noundef @__PRETTY_FUNCTION__.main) #3, !dbg !115
  unreachable, !dbg !115

53:                                               ; preds = %51
  br label %54, !dbg !119

54:                                               ; preds = %53, %43
  %55 = load i16, ptr %2, align 2, !dbg !120
  %56 = zext i16 %55 to i32, !dbg !120
  %57 = icmp uge i32 %56, 10, !dbg !122
  br i1 %57, label %58, label %74, !dbg !122

58:                                               ; preds = %54
  %59 = load i16, ptr %3, align 2, !dbg !123
  %60 = zext i16 %59 to i32, !dbg !123
  %61 = load i16, ptr %2, align 2, !dbg !123
  %62 = zext i16 %61 to i32, !dbg !123
  %63 = udiv i32 %62, 10, !dbg !123
  %64 = trunc i32 %63 to i16, !dbg !123
  %65 = call zeroext i16 @decimal_length_cb(i16 noundef zeroext %64), !dbg !123
  %66 = zext i16 %65 to i32, !dbg !123
  %67 = add i32 %66, 1, !dbg !123
  %68 = trunc i32 %67 to i16, !dbg !123
  %69 = zext i16 %68 to i32, !dbg !123
  %70 = icmp eq i32 %60, %69, !dbg !123
  br i1 %70, label %71, label %72, !dbg !123

71:                                               ; preds = %58
  br label %73, !dbg !123

72:                                               ; preds = %58
  call void @__assert_fail(ptr noundef @.str.7, ptr noundef @.str.2, i32 noundef 37, ptr noundef @__PRETTY_FUNCTION__.main) #3, !dbg !123
  unreachable, !dbg !123

73:                                               ; preds = %71
  br label %74, !dbg !127

74:                                               ; preds = %73, %54
  ret i32 0, !dbg !128
}

declare void @klee_make_symbolic(ptr noundef, i64 noundef, ptr noundef) #1

; Function Attrs: cold noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noreturn nounwind }

!llvm.dbg.cu = !{!36}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 21, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/bench_18/decimal_length_bucket_klee.c", directory: "/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet", checksumkind: CSK_MD5, checksum: "81b88660a3662e4b48ed9126697fa99f")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 10)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 25, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 17)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 25, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 856, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 107)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 25, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 120, elements: !21)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!21 = !{!22}
!22 = !DISubrange(count: 15)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !2, line: 26, type: !9, isLocal: true, isDefinition: true)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(scope: null, file: !2, line: 28, type: !9, isLocal: true, isDefinition: true)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 31, type: !9, isLocal: true, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !2, line: 34, type: !9, isLocal: true, isDefinition: true)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(scope: null, file: !2, line: 37, type: !33, isLocal: true, isDefinition: true)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 624, elements: !34)
!34 = !{!35}
!35 = !DISubrange(count: 78)
!36 = distinct !DICompileUnit(language: DW_LANG_C11, file: !37, producer: "Ubuntu clang version 20.1.8 (0ubuntu4)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !38, globals: !44, splitDebugInlining: false, nameTableKind: None)
!37 = !DIFile(filename: "/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/src/bench_18/decimal_length_bucket_klee.c", directory: "/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet", checksumkind: CSK_MD5, checksum: "81b88660a3662e4b48ed9126697fa99f")
!38 = !{!39}
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !40, line: 25, baseType: !41)
!40 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "006a4d9ce94ea5734db820ef3fdd4790")
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !42, line: 40, baseType: !43)
!42 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "0737a53e1b85eab0e0ba9675962d13f4")
!43 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!44 = !{!0, !7, !12, !17, !23, !25, !27, !29, !31}
!45 = !{i32 7, !"Dwarf Version", i32 5}
!46 = !{i32 2, !"Debug Info Version", i32 3}
!47 = !{i32 1, !"wchar_size", i32 4}
!48 = !{i32 8, !"PIC Level", i32 2}
!49 = !{i32 7, !"PIE Level", i32 2}
!50 = !{i32 7, !"uwtable", i32 2}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"Ubuntu clang version 20.1.8 (0ubuntu4)"}
!53 = distinct !DISubprogram(name: "decimal_length_cb", scope: !2, file: !2, line: 6, type: !54, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !36, retainedNodes: !56)
!54 = !DISubroutineType(types: !55)
!55 = !{!39, !39}
!56 = !{}
!57 = !DILocalVariable(name: "inp_value", arg: 1, scope: !53, file: !2, line: 6, type: !39)
!58 = !DILocation(line: 6, column: 37, scope: !53)
!59 = !DILocalVariable(name: "out_digits", scope: !53, file: !2, line: 7, type: !39)
!60 = !DILocation(line: 7, column: 14, scope: !53)
!61 = !DILocation(line: 9, column: 5, scope: !53)
!62 = !DILocation(line: 9, column: 12, scope: !53)
!63 = !DILocation(line: 9, column: 22, scope: !53)
!64 = !DILocation(line: 10, column: 32, scope: !65)
!65 = distinct !DILexicalBlock(scope: !53, file: !2, line: 9, column: 30)
!66 = !DILocation(line: 10, column: 42, scope: !65)
!67 = !DILocation(line: 10, column: 21, scope: !65)
!68 = !DILocation(line: 10, column: 19, scope: !65)
!69 = !DILocation(line: 11, column: 9, scope: !65)
!70 = distinct !{!70, !61, !71, !72}
!71 = !DILocation(line: 12, column: 5, scope: !53)
!72 = !{!"llvm.loop.mustprogress"}
!73 = !DILocation(line: 14, column: 12, scope: !53)
!74 = !DILocation(line: 14, column: 5, scope: !53)
!75 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 17, type: !76, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !36, retainedNodes: !56)
!76 = !DISubroutineType(types: !77)
!77 = !{!78}
!78 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!79 = !DILocalVariable(name: "inp_value", scope: !75, file: !2, line: 18, type: !39)
!80 = !DILocation(line: 18, column: 14, scope: !75)
!81 = !DILocalVariable(name: "out_digits", scope: !75, file: !2, line: 19, type: !39)
!82 = !DILocation(line: 19, column: 14, scope: !75)
!83 = !DILocation(line: 21, column: 5, scope: !75)
!84 = !DILocation(line: 23, column: 36, scope: !75)
!85 = !DILocation(line: 23, column: 18, scope: !75)
!86 = !DILocation(line: 23, column: 16, scope: !75)
!87 = !DILocation(line: 25, column: 5, scope: !88)
!88 = distinct !DILexicalBlock(scope: !89, file: !2, line: 25, column: 5)
!89 = distinct !DILexicalBlock(scope: !75, file: !2, line: 25, column: 5)
!90 = !DILocation(line: 26, column: 5, scope: !91)
!91 = distinct !DILexicalBlock(scope: !92, file: !2, line: 26, column: 5)
!92 = distinct !DILexicalBlock(scope: !75, file: !2, line: 26, column: 5)
!93 = !DILocation(line: 27, column: 9, scope: !94)
!94 = distinct !DILexicalBlock(scope: !75, file: !2, line: 27, column: 9)
!95 = !DILocation(line: 27, column: 19, scope: !94)
!96 = !DILocation(line: 28, column: 9, scope: !97)
!97 = distinct !DILexicalBlock(scope: !98, file: !2, line: 28, column: 9)
!98 = distinct !DILexicalBlock(scope: !99, file: !2, line: 28, column: 9)
!99 = distinct !DILexicalBlock(scope: !94, file: !2, line: 27, column: 26)
!100 = !DILocation(line: 29, column: 5, scope: !99)
!101 = !DILocation(line: 30, column: 9, scope: !102)
!102 = distinct !DILexicalBlock(scope: !75, file: !2, line: 30, column: 9)
!103 = !DILocation(line: 30, column: 19, scope: !102)
!104 = !DILocation(line: 30, column: 26, scope: !102)
!105 = !DILocation(line: 30, column: 29, scope: !102)
!106 = !DILocation(line: 30, column: 39, scope: !102)
!107 = !DILocation(line: 31, column: 9, scope: !108)
!108 = distinct !DILexicalBlock(scope: !109, file: !2, line: 31, column: 9)
!109 = distinct !DILexicalBlock(scope: !110, file: !2, line: 31, column: 9)
!110 = distinct !DILexicalBlock(scope: !102, file: !2, line: 30, column: 47)
!111 = !DILocation(line: 32, column: 5, scope: !110)
!112 = !DILocation(line: 33, column: 9, scope: !113)
!113 = distinct !DILexicalBlock(scope: !75, file: !2, line: 33, column: 9)
!114 = !DILocation(line: 33, column: 19, scope: !113)
!115 = !DILocation(line: 34, column: 9, scope: !116)
!116 = distinct !DILexicalBlock(scope: !117, file: !2, line: 34, column: 9)
!117 = distinct !DILexicalBlock(scope: !118, file: !2, line: 34, column: 9)
!118 = distinct !DILexicalBlock(scope: !113, file: !2, line: 33, column: 30)
!119 = !DILocation(line: 35, column: 5, scope: !118)
!120 = !DILocation(line: 36, column: 9, scope: !121)
!121 = distinct !DILexicalBlock(scope: !75, file: !2, line: 36, column: 9)
!122 = !DILocation(line: 36, column: 19, scope: !121)
!123 = !DILocation(line: 37, column: 9, scope: !124)
!124 = distinct !DILexicalBlock(scope: !125, file: !2, line: 37, column: 9)
!125 = distinct !DILexicalBlock(scope: !126, file: !2, line: 37, column: 9)
!126 = distinct !DILexicalBlock(scope: !121, file: !2, line: 36, column: 27)
!127 = !DILocation(line: 38, column: 5, scope: !126)
!128 = !DILocation(line: 40, column: 5, scope: !75)
