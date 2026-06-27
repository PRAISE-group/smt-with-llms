; ModuleID = '/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/src/bench_19/decimal_palindrome_flag_klee.bc'
source_filename = "/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/src/bench_19/decimal_palindrome_flag_klee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"inp_value\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [31 x i8] c"out_flag == 0 || out_flag == 1\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [109 x i8] c"/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/src/bench_19/decimal_palindrome_flag_klee.c\00", align 1, !dbg !12
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1, !dbg !17
@.str.3 = private unnamed_addr constant [58 x i8] c"out_flag == (reverse_decimal_ref(inp_value) == inp_value)\00", align 1, !dbg !23
@.str.4 = private unnamed_addr constant [14 x i8] c"out_flag == 1\00", align 1, !dbg !28
@.str.5 = private unnamed_addr constant [14 x i8] c"out_flag == 0\00", align 1, !dbg !33

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @decimal_palindrome_cb(i16 noundef zeroext %0) #0 !dbg !52 {
  %2 = alloca i16, align 2
  %3 = alloca i32, align 4
  store i16 %0, ptr %2, align 2
    #dbg_declare(ptr %2, !57, !DIExpression(), !58)
    #dbg_declare(ptr %3, !59, !DIExpression(), !60)
  %4 = load i16, ptr %2, align 2, !dbg !61
  %5 = call zeroext i16 @reverse_decimal_ref(i16 noundef zeroext %4), !dbg !62
  %6 = zext i16 %5 to i32, !dbg !62
  %7 = load i16, ptr %2, align 2, !dbg !63
  %8 = zext i16 %7 to i32, !dbg !63
  %9 = icmp eq i32 %6, %8, !dbg !64
  %10 = zext i1 %9 to i32, !dbg !64
  store i32 %10, ptr %3, align 4, !dbg !60
  %11 = load i32, ptr %3, align 4, !dbg !65
  ret i32 %11, !dbg !66
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i16 @reverse_decimal_ref(i16 noundef zeroext %0) #0 !dbg !67 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  store i16 %0, ptr %2, align 2
    #dbg_declare(ptr %2, !70, !DIExpression(), !71)
    #dbg_declare(ptr %3, !72, !DIExpression(), !73)
  store i16 0, ptr %3, align 2, !dbg !73
  br label %4, !dbg !74

4:                                                ; preds = %8, %1
  %5 = load i16, ptr %2, align 2, !dbg !75
  %6 = zext i16 %5 to i32, !dbg !75
  %7 = icmp ne i32 %6, 0, !dbg !76
  br i1 %7, label %8, label %21, !dbg !74

8:                                                ; preds = %4
  %9 = load i16, ptr %3, align 2, !dbg !77
  %10 = zext i16 %9 to i32, !dbg !77
  %11 = mul i32 %10, 10, !dbg !79
  %12 = load i16, ptr %2, align 2, !dbg !80
  %13 = zext i16 %12 to i32, !dbg !80
  %14 = urem i32 %13, 10, !dbg !81
  %15 = add i32 %11, %14, !dbg !82
  %16 = trunc i32 %15 to i16, !dbg !83
  store i16 %16, ptr %3, align 2, !dbg !84
  %17 = load i16, ptr %2, align 2, !dbg !85
  %18 = zext i16 %17 to i32, !dbg !85
  %19 = udiv i32 %18, 10, !dbg !86
  %20 = trunc i32 %19 to i16, !dbg !87
  store i16 %20, ptr %2, align 2, !dbg !88
  br label %4, !dbg !74, !llvm.loop !89

21:                                               ; preds = %4
  %22 = load i16, ptr %3, align 2, !dbg !92
  ret i16 %22, !dbg !93
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !dbg !94 {
  %1 = alloca i32, align 4
  %2 = alloca i16, align 2
  %3 = alloca i32, align 4
  store i32 0, ptr %1, align 4
    #dbg_declare(ptr %2, !97, !DIExpression(), !98)
    #dbg_declare(ptr %3, !99, !DIExpression(), !100)
  call void @klee_make_symbolic(ptr noundef %2, i64 noundef 2, ptr noundef @.str), !dbg !101
  %4 = load i16, ptr %2, align 2, !dbg !102
  %5 = call i32 @decimal_palindrome_cb(i16 noundef zeroext %4), !dbg !103
  store i32 %5, ptr %3, align 4, !dbg !104
  %6 = load i32, ptr %3, align 4, !dbg !105
  %7 = icmp eq i32 %6, 0, !dbg !105
  br i1 %7, label %11, label %8, !dbg !105

8:                                                ; preds = %0
  %9 = load i32, ptr %3, align 4, !dbg !105
  %10 = icmp eq i32 %9, 1, !dbg !105
  br i1 %10, label %11, label %12, !dbg !105

11:                                               ; preds = %8, %0
  br label %13, !dbg !105

12:                                               ; preds = %8
  call void @__assert_fail(ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 30, ptr noundef @__PRETTY_FUNCTION__.main) #3, !dbg !105
  unreachable, !dbg !105

13:                                               ; preds = %11
  %14 = load i32, ptr %3, align 4, !dbg !108
  %15 = load i16, ptr %2, align 2, !dbg !108
  %16 = call zeroext i16 @reverse_decimal_ref(i16 noundef zeroext %15), !dbg !108
  %17 = zext i16 %16 to i32, !dbg !108
  %18 = load i16, ptr %2, align 2, !dbg !108
  %19 = zext i16 %18 to i32, !dbg !108
  %20 = icmp eq i32 %17, %19, !dbg !108
  %21 = zext i1 %20 to i32, !dbg !108
  %22 = icmp eq i32 %14, %21, !dbg !108
  br i1 %22, label %23, label %24, !dbg !108

23:                                               ; preds = %13
  br label %25, !dbg !108

24:                                               ; preds = %13
  call void @__assert_fail(ptr noundef @.str.3, ptr noundef @.str.2, i32 noundef 31, ptr noundef @__PRETTY_FUNCTION__.main) #3, !dbg !108
  unreachable, !dbg !108

25:                                               ; preds = %23
  %26 = load i16, ptr %2, align 2, !dbg !111
  %27 = zext i16 %26 to i32, !dbg !111
  %28 = icmp ult i32 %27, 10, !dbg !113
  br i1 %28, label %29, label %35, !dbg !113

29:                                               ; preds = %25
  %30 = load i32, ptr %3, align 4, !dbg !114
  %31 = icmp eq i32 %30, 1, !dbg !114
  br i1 %31, label %32, label %33, !dbg !114

32:                                               ; preds = %29
  br label %34, !dbg !114

33:                                               ; preds = %29
  call void @__assert_fail(ptr noundef @.str.4, ptr noundef @.str.2, i32 noundef 33, ptr noundef @__PRETTY_FUNCTION__.main) #3, !dbg !114
  unreachable, !dbg !114

34:                                               ; preds = %32
  br label %35, !dbg !118

35:                                               ; preds = %34, %25
  %36 = load i16, ptr %2, align 2, !dbg !119
  %37 = zext i16 %36 to i32, !dbg !119
  %38 = icmp ne i32 %37, 0, !dbg !121
  br i1 %38, label %39, label %50, !dbg !122

39:                                               ; preds = %35
  %40 = load i16, ptr %2, align 2, !dbg !123
  %41 = zext i16 %40 to i32, !dbg !123
  %42 = urem i32 %41, 10, !dbg !124
  %43 = icmp eq i32 %42, 0, !dbg !125
  br i1 %43, label %44, label %50, !dbg !122

44:                                               ; preds = %39
  %45 = load i32, ptr %3, align 4, !dbg !126
  %46 = icmp eq i32 %45, 0, !dbg !126
  br i1 %46, label %47, label %48, !dbg !126

47:                                               ; preds = %44
  br label %49, !dbg !126

48:                                               ; preds = %44
  call void @__assert_fail(ptr noundef @.str.5, ptr noundef @.str.2, i32 noundef 36, ptr noundef @__PRETTY_FUNCTION__.main) #3, !dbg !126
  unreachable, !dbg !126

49:                                               ; preds = %47
  br label %50, !dbg !130

50:                                               ; preds = %49, %39, %35
  ret i32 0, !dbg !131
}

declare void @klee_make_symbolic(ptr noundef, i64 noundef, ptr noundef) #1

; Function Attrs: cold noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noreturn nounwind }

!llvm.dbg.cu = !{!35}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 26, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/bench_19/decimal_palindrome_flag_klee.c", directory: "/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet", checksumkind: CSK_MD5, checksum: "805bdb494da8463f56ab899b8c6e6e40")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 10)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 30, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 31)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 30, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 872, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 109)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 30, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 120, elements: !21)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!21 = !{!22}
!22 = !DISubrange(count: 15)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !2, line: 31, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 464, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 58)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !2, line: 33, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 14)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !2, line: 36, type: !30, isLocal: true, isDefinition: true)
!35 = distinct !DICompileUnit(language: DW_LANG_C11, file: !36, producer: "Ubuntu clang version 20.1.8 (0ubuntu4)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !37, globals: !43, splitDebugInlining: false, nameTableKind: None)
!36 = !DIFile(filename: "/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/src/bench_19/decimal_palindrome_flag_klee.c", directory: "/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet", checksumkind: CSK_MD5, checksum: "805bdb494da8463f56ab899b8c6e6e40")
!37 = !{!38}
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !39, line: 25, baseType: !40)
!39 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "006a4d9ce94ea5734db820ef3fdd4790")
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !41, line: 40, baseType: !42)
!41 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "0737a53e1b85eab0e0ba9675962d13f4")
!42 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!43 = !{!0, !7, !12, !17, !23, !28, !33}
!44 = !{i32 7, !"Dwarf Version", i32 5}
!45 = !{i32 2, !"Debug Info Version", i32 3}
!46 = !{i32 1, !"wchar_size", i32 4}
!47 = !{i32 8, !"PIC Level", i32 2}
!48 = !{i32 7, !"PIE Level", i32 2}
!49 = !{i32 7, !"uwtable", i32 2}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"Ubuntu clang version 20.1.8 (0ubuntu4)"}
!52 = distinct !DISubprogram(name: "decimal_palindrome_cb", scope: !2, file: !2, line: 17, type: !53, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !56)
!53 = !DISubroutineType(types: !54)
!54 = !{!55, !38}
!55 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!56 = !{}
!57 = !DILocalVariable(name: "inp_value", arg: 1, scope: !52, file: !2, line: 17, type: !38)
!58 = !DILocation(line: 17, column: 36, scope: !52)
!59 = !DILocalVariable(name: "out_flag", scope: !52, file: !2, line: 18, type: !55)
!60 = !DILocation(line: 18, column: 9, scope: !52)
!61 = !DILocation(line: 18, column: 40, scope: !52)
!62 = !DILocation(line: 18, column: 20, scope: !52)
!63 = !DILocation(line: 18, column: 54, scope: !52)
!64 = !DILocation(line: 18, column: 51, scope: !52)
!65 = !DILocation(line: 19, column: 12, scope: !52)
!66 = !DILocation(line: 19, column: 5, scope: !52)
!67 = distinct !DISubprogram(name: "reverse_decimal_ref", scope: !2, file: !2, line: 6, type: !68, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !35, retainedNodes: !56)
!68 = !DISubroutineType(types: !69)
!69 = !{!38, !38}
!70 = !DILocalVariable(name: "inp_value", arg: 1, scope: !67, file: !2, line: 6, type: !38)
!71 = !DILocation(line: 6, column: 46, scope: !67)
!72 = !DILocalVariable(name: "out_reverse", scope: !67, file: !2, line: 7, type: !38)
!73 = !DILocation(line: 7, column: 14, scope: !67)
!74 = !DILocation(line: 9, column: 5, scope: !67)
!75 = !DILocation(line: 9, column: 12, scope: !67)
!76 = !DILocation(line: 9, column: 22, scope: !67)
!77 = !DILocation(line: 10, column: 34, scope: !78)
!78 = distinct !DILexicalBlock(scope: !67, file: !2, line: 9, column: 29)
!79 = !DILocation(line: 10, column: 46, scope: !78)
!80 = !DILocation(line: 10, column: 55, scope: !78)
!81 = !DILocation(line: 10, column: 65, scope: !78)
!82 = !DILocation(line: 10, column: 52, scope: !78)
!83 = !DILocation(line: 10, column: 23, scope: !78)
!84 = !DILocation(line: 10, column: 21, scope: !78)
!85 = !DILocation(line: 11, column: 32, scope: !78)
!86 = !DILocation(line: 11, column: 42, scope: !78)
!87 = !DILocation(line: 11, column: 21, scope: !78)
!88 = !DILocation(line: 11, column: 19, scope: !78)
!89 = distinct !{!89, !74, !90, !91}
!90 = !DILocation(line: 12, column: 5, scope: !67)
!91 = !{!"llvm.loop.mustprogress"}
!92 = !DILocation(line: 14, column: 12, scope: !67)
!93 = !DILocation(line: 14, column: 5, scope: !67)
!94 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 22, type: !95, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !56)
!95 = !DISubroutineType(types: !96)
!96 = !{!55}
!97 = !DILocalVariable(name: "inp_value", scope: !94, file: !2, line: 23, type: !38)
!98 = !DILocation(line: 23, column: 14, scope: !94)
!99 = !DILocalVariable(name: "out_flag", scope: !94, file: !2, line: 24, type: !55)
!100 = !DILocation(line: 24, column: 9, scope: !94)
!101 = !DILocation(line: 26, column: 5, scope: !94)
!102 = !DILocation(line: 28, column: 38, scope: !94)
!103 = !DILocation(line: 28, column: 16, scope: !94)
!104 = !DILocation(line: 28, column: 14, scope: !94)
!105 = !DILocation(line: 30, column: 5, scope: !106)
!106 = distinct !DILexicalBlock(scope: !107, file: !2, line: 30, column: 5)
!107 = distinct !DILexicalBlock(scope: !94, file: !2, line: 30, column: 5)
!108 = !DILocation(line: 31, column: 5, scope: !109)
!109 = distinct !DILexicalBlock(scope: !110, file: !2, line: 31, column: 5)
!110 = distinct !DILexicalBlock(scope: !94, file: !2, line: 31, column: 5)
!111 = !DILocation(line: 32, column: 9, scope: !112)
!112 = distinct !DILexicalBlock(scope: !94, file: !2, line: 32, column: 9)
!113 = !DILocation(line: 32, column: 19, scope: !112)
!114 = !DILocation(line: 33, column: 9, scope: !115)
!115 = distinct !DILexicalBlock(scope: !116, file: !2, line: 33, column: 9)
!116 = distinct !DILexicalBlock(scope: !117, file: !2, line: 33, column: 9)
!117 = distinct !DILexicalBlock(scope: !112, file: !2, line: 32, column: 26)
!118 = !DILocation(line: 34, column: 5, scope: !117)
!119 = !DILocation(line: 35, column: 9, scope: !120)
!120 = distinct !DILexicalBlock(scope: !94, file: !2, line: 35, column: 9)
!121 = !DILocation(line: 35, column: 19, scope: !120)
!122 = !DILocation(line: 35, column: 25, scope: !120)
!123 = !DILocation(line: 35, column: 29, scope: !120)
!124 = !DILocation(line: 35, column: 39, scope: !120)
!125 = !DILocation(line: 35, column: 46, scope: !120)
!126 = !DILocation(line: 36, column: 9, scope: !127)
!127 = distinct !DILexicalBlock(scope: !128, file: !2, line: 36, column: 9)
!128 = distinct !DILexicalBlock(scope: !129, file: !2, line: 36, column: 9)
!129 = distinct !DILexicalBlock(scope: !120, file: !2, line: 35, column: 53)
!130 = !DILocation(line: 37, column: 5, scope: !129)
!131 = !DILocation(line: 39, column: 5, scope: !94)
