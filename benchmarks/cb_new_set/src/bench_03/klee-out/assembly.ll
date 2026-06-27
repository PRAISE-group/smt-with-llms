; ModuleID = '/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/src/bench_03/parity_checksum_bit_klee.bc'
source_filename = "/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/src/bench_03/parity_checksum_bit_klee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"inp_word\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [19 x i8] c"out_checksum <= 1U\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [105 x i8] c"/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/src/bench_03/parity_checksum_bit_klee.c\00", align 1, !dbg !12
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1, !dbg !17
@.str.3 = private unnamed_addr constant [19 x i8] c"out_checksum == 0U\00", align 1, !dbg !23
@.str.4 = private unnamed_addr constant [19 x i8] c"out_checksum == 1U\00", align 1, !dbg !25
@.str.5 = private unnamed_addr constant [102 x i8] c"out_checksum == ((builtin_parity_cb((uint16_t)inp_low) ^ builtin_parity_cb((uint16_t)inp_high)) & 1U)\00", align 1, !dbg !27

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @builtin_parity_cb(i16 noundef zeroext %0) #0 !dbg !53 {
  %2 = alloca i16, align 2
  %3 = alloca i32, align 4
  store i16 %0, ptr %2, align 2
    #dbg_declare(ptr %2, !57, !DIExpression(), !58)
    #dbg_declare(ptr %3, !59, !DIExpression(), !60)
  %4 = load i16, ptr %2, align 2, !dbg !61
  %5 = zext i16 %4 to i32, !dbg !62
  %cppop.and1 = and i32 %5, 1431655765, !dbg !63
  %ctpop.sh = lshr i32 %5, 1, !dbg !63
  %cppop.and2 = and i32 %ctpop.sh, 1431655765, !dbg !63
  %ctpop.step = add i32 %cppop.and1, %cppop.and2, !dbg !63
  %cppop.and11 = and i32 %ctpop.step, 858993459, !dbg !63
  %ctpop.sh2 = lshr i32 %ctpop.step, 2, !dbg !63
  %cppop.and23 = and i32 %ctpop.sh2, 858993459, !dbg !63
  %ctpop.step4 = add i32 %cppop.and11, %cppop.and23, !dbg !63
  %cppop.and15 = and i32 %ctpop.step4, 252645135, !dbg !63
  %ctpop.sh6 = lshr i32 %ctpop.step4, 4, !dbg !63
  %cppop.and27 = and i32 %ctpop.sh6, 252645135, !dbg !63
  %ctpop.step8 = add i32 %cppop.and15, %cppop.and27, !dbg !63
  %cppop.and19 = and i32 %ctpop.step8, 16711935, !dbg !63
  %ctpop.sh10 = lshr i32 %ctpop.step8, 8, !dbg !63
  %cppop.and211 = and i32 %ctpop.sh10, 16711935, !dbg !63
  %ctpop.step12 = add i32 %cppop.and19, %cppop.and211, !dbg !63
  %cppop.and113 = and i32 %ctpop.step12, 65535, !dbg !63
  %ctpop.sh14 = lshr i32 %ctpop.step12, 16, !dbg !63
  %cppop.and215 = and i32 %ctpop.sh14, 65535, !dbg !63
  %ctpop.step16 = add i32 %cppop.and113, %cppop.and215, !dbg !63
  %ctpop.part = add i32 %ctpop.step16, 0, !dbg !63
  %6 = and i32 %ctpop.part, 1, !dbg !63
  store i32 %6, ptr %3, align 4, !dbg !60
  %7 = load i32, ptr %3, align 4, !dbg !64
  ret i32 %7, !dbg !65
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !dbg !66 {
  %1 = alloca i32, align 4
  %2 = alloca i16, align 2
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store i32 0, ptr %1, align 4
    #dbg_declare(ptr %2, !70, !DIExpression(), !71)
    #dbg_declare(ptr %3, !72, !DIExpression(), !73)
    #dbg_declare(ptr %4, !74, !DIExpression(), !75)
    #dbg_declare(ptr %5, !76, !DIExpression(), !77)
  call void @klee_make_symbolic(ptr noundef %2, i64 noundef 2, ptr noundef @.str), !dbg !78
  %6 = load i16, ptr %2, align 2, !dbg !79
  %7 = zext i16 %6 to i32, !dbg !79
  %8 = and i32 %7, 255, !dbg !80
  %9 = trunc i32 %8 to i8, !dbg !81
  store i8 %9, ptr %3, align 1, !dbg !82
  %10 = load i16, ptr %2, align 2, !dbg !83
  %11 = zext i16 %10 to i32, !dbg !83
  %12 = ashr i32 %11, 8, !dbg !84
  %13 = trunc i32 %12 to i8, !dbg !85
  store i8 %13, ptr %4, align 1, !dbg !86
  %14 = load i16, ptr %2, align 2, !dbg !87
  %15 = call i32 @builtin_parity_cb(i16 noundef zeroext %14), !dbg !88
  store i32 %15, ptr %5, align 4, !dbg !89
  %16 = load i32, ptr %5, align 4, !dbg !90
  %17 = icmp ule i32 %16, 1, !dbg !90
  br i1 %17, label %18, label %19, !dbg !90

18:                                               ; preds = %0
  br label %20, !dbg !90

19:                                               ; preds = %0
  call void @__assert_fail(ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 28, ptr noundef @__PRETTY_FUNCTION__.main) #4, !dbg !90
  unreachable, !dbg !90

20:                                               ; preds = %18
  %21 = load i16, ptr %2, align 2, !dbg !93
  %22 = zext i16 %21 to i32, !dbg !93
  %23 = icmp eq i32 %22, 0, !dbg !95
  br i1 %23, label %24, label %30, !dbg !95

24:                                               ; preds = %20
  %25 = load i32, ptr %5, align 4, !dbg !96
  %26 = icmp eq i32 %25, 0, !dbg !96
  br i1 %26, label %27, label %28, !dbg !96

27:                                               ; preds = %24
  br label %29, !dbg !96

28:                                               ; preds = %24
  call void @__assert_fail(ptr noundef @.str.3, ptr noundef @.str.2, i32 noundef 30, ptr noundef @__PRETTY_FUNCTION__.main) #4, !dbg !96
  unreachable, !dbg !96

29:                                               ; preds = %27
  br label %30, !dbg !100

30:                                               ; preds = %29, %20
  %31 = load i16, ptr %2, align 2, !dbg !101
  %32 = call i32 @is_power_of_two16(i16 noundef zeroext %31), !dbg !103
  %33 = icmp ne i32 %32, 0, !dbg !103
  br i1 %33, label %34, label %40, !dbg !103

34:                                               ; preds = %30
  %35 = load i32, ptr %5, align 4, !dbg !104
  %36 = icmp eq i32 %35, 1, !dbg !104
  br i1 %36, label %37, label %38, !dbg !104

37:                                               ; preds = %34
  br label %39, !dbg !104

38:                                               ; preds = %34
  call void @__assert_fail(ptr noundef @.str.4, ptr noundef @.str.2, i32 noundef 33, ptr noundef @__PRETTY_FUNCTION__.main) #4, !dbg !104
  unreachable, !dbg !104

39:                                               ; preds = %37
  br label %40, !dbg !108

40:                                               ; preds = %39, %30
  %41 = load i32, ptr %5, align 4, !dbg !109
  %42 = load i8, ptr %3, align 1, !dbg !109
  %43 = zext i8 %42 to i16, !dbg !109
  %44 = call i32 @builtin_parity_cb(i16 noundef zeroext %43), !dbg !109
  %45 = load i8, ptr %4, align 1, !dbg !109
  %46 = zext i8 %45 to i16, !dbg !109
  %47 = call i32 @builtin_parity_cb(i16 noundef zeroext %46), !dbg !109
  %48 = xor i32 %44, %47, !dbg !109
  %49 = and i32 %48, 1, !dbg !109
  %50 = icmp eq i32 %41, %49, !dbg !109
  br i1 %50, label %51, label %52, !dbg !109

51:                                               ; preds = %40
  br label %53, !dbg !109

52:                                               ; preds = %40
  call void @__assert_fail(ptr noundef @.str.5, ptr noundef @.str.2, i32 noundef 35, ptr noundef @__PRETTY_FUNCTION__.main) #4, !dbg !109
  unreachable, !dbg !109

53:                                               ; preds = %51
  ret i32 0, !dbg !112
}

declare void @klee_make_symbolic(ptr noundef, i64 noundef, ptr noundef) #2

; Function Attrs: cold noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @is_power_of_two16(i16 noundef zeroext %0) #0 !dbg !113 {
  %2 = alloca i16, align 2
  store i16 %0, ptr %2, align 2
    #dbg_declare(ptr %2, !116, !DIExpression(), !117)
  %3 = load i16, ptr %2, align 2, !dbg !118
  %4 = zext i16 %3 to i32, !dbg !118
  %5 = icmp ne i32 %4, 0, !dbg !119
  br i1 %5, label %6, label %16, !dbg !120

6:                                                ; preds = %1
  %7 = load i16, ptr %2, align 2, !dbg !121
  %8 = zext i16 %7 to i32, !dbg !121
  %9 = load i16, ptr %2, align 2, !dbg !122
  %10 = zext i16 %9 to i32, !dbg !122
  %11 = sub i32 %10, 1, !dbg !123
  %12 = trunc i32 %11 to i16, !dbg !124
  %13 = zext i16 %12 to i32, !dbg !124
  %14 = and i32 %8, %13, !dbg !125
  %15 = icmp eq i32 %14, 0, !dbg !126
  br label %16

16:                                               ; preds = %6, %1
  %17 = phi i1 [ false, %1 ], [ %15, %6 ], !dbg !127
  %18 = zext i1 %17 to i32, !dbg !120
  ret i32 %18, !dbg !128
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold noreturn nounwind }

!llvm.dbg.cu = !{!32}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 22, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/bench_03/parity_checksum_bit_klee.c", directory: "/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet", checksumkind: CSK_MD5, checksum: "55fede10cd16e24c1423caa49d9d1609")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 9)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 28, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 19)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 28, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 840, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 105)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 28, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 120, elements: !21)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!21 = !{!22}
!22 = !DISubrange(count: 15)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !2, line: 30, type: !9, isLocal: true, isDefinition: true)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(scope: null, file: !2, line: 33, type: !9, isLocal: true, isDefinition: true)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 35, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 816, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 102)
!32 = distinct !DICompileUnit(language: DW_LANG_C11, file: !33, producer: "Ubuntu clang version 20.1.8 (0ubuntu4)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !34, globals: !44, splitDebugInlining: false, nameTableKind: None)
!33 = !DIFile(filename: "/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/src/bench_03/parity_checksum_bit_klee.c", directory: "/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet", checksumkind: CSK_MD5, checksum: "55fede10cd16e24c1423caa49d9d1609")
!34 = !{!35, !36, !41}
!35 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !37, line: 24, baseType: !38)
!37 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "006a4d9ce94ea5734db820ef3fdd4790")
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !39, line: 38, baseType: !40)
!39 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "0737a53e1b85eab0e0ba9675962d13f4")
!40 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !37, line: 25, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !39, line: 40, baseType: !43)
!43 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!44 = !{!0, !7, !12, !17, !23, !25, !27}
!45 = !{i32 7, !"Dwarf Version", i32 5}
!46 = !{i32 2, !"Debug Info Version", i32 3}
!47 = !{i32 1, !"wchar_size", i32 4}
!48 = !{i32 8, !"PIC Level", i32 2}
!49 = !{i32 7, !"PIE Level", i32 2}
!50 = !{i32 7, !"uwtable", i32 2}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"Ubuntu clang version 20.1.8 (0ubuntu4)"}
!53 = distinct !DISubprogram(name: "builtin_parity_cb", scope: !2, file: !2, line: 11, type: !54, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !32, retainedNodes: !56)
!54 = !DISubroutineType(types: !55)
!55 = !{!35, !41}
!56 = !{}
!57 = !DILocalVariable(name: "inp_word", arg: 1, scope: !53, file: !2, line: 11, type: !41)
!58 = !DILocation(line: 11, column: 41, scope: !53)
!59 = !DILocalVariable(name: "out_checksum", scope: !53, file: !2, line: 12, type: !35)
!60 = !DILocation(line: 12, column: 18, scope: !53)
!61 = !DILocation(line: 12, column: 78, scope: !53)
!62 = !DILocation(line: 12, column: 64, scope: !53)
!63 = !DILocation(line: 12, column: 47, scope: !53)
!64 = !DILocation(line: 13, column: 12, scope: !53)
!65 = !DILocation(line: 13, column: 5, scope: !53)
!66 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 16, type: !67, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !32, retainedNodes: !56)
!67 = !DISubroutineType(types: !68)
!68 = !{!69}
!69 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!70 = !DILocalVariable(name: "inp_word", scope: !66, file: !2, line: 17, type: !41)
!71 = !DILocation(line: 17, column: 14, scope: !66)
!72 = !DILocalVariable(name: "inp_low", scope: !66, file: !2, line: 18, type: !36)
!73 = !DILocation(line: 18, column: 13, scope: !66)
!74 = !DILocalVariable(name: "inp_high", scope: !66, file: !2, line: 19, type: !36)
!75 = !DILocation(line: 19, column: 13, scope: !66)
!76 = !DILocalVariable(name: "out_checksum", scope: !66, file: !2, line: 20, type: !35)
!77 = !DILocation(line: 20, column: 18, scope: !66)
!78 = !DILocation(line: 22, column: 5, scope: !66)
!79 = !DILocation(line: 24, column: 25, scope: !66)
!80 = !DILocation(line: 24, column: 34, scope: !66)
!81 = !DILocation(line: 24, column: 15, scope: !66)
!82 = !DILocation(line: 24, column: 13, scope: !66)
!83 = !DILocation(line: 25, column: 26, scope: !66)
!84 = !DILocation(line: 25, column: 35, scope: !66)
!85 = !DILocation(line: 25, column: 16, scope: !66)
!86 = !DILocation(line: 25, column: 14, scope: !66)
!87 = !DILocation(line: 26, column: 38, scope: !66)
!88 = !DILocation(line: 26, column: 20, scope: !66)
!89 = !DILocation(line: 26, column: 18, scope: !66)
!90 = !DILocation(line: 28, column: 5, scope: !91)
!91 = distinct !DILexicalBlock(scope: !92, file: !2, line: 28, column: 5)
!92 = distinct !DILexicalBlock(scope: !66, file: !2, line: 28, column: 5)
!93 = !DILocation(line: 29, column: 9, scope: !94)
!94 = distinct !DILexicalBlock(scope: !66, file: !2, line: 29, column: 9)
!95 = !DILocation(line: 29, column: 18, scope: !94)
!96 = !DILocation(line: 30, column: 9, scope: !97)
!97 = distinct !DILexicalBlock(scope: !98, file: !2, line: 30, column: 9)
!98 = distinct !DILexicalBlock(scope: !99, file: !2, line: 30, column: 9)
!99 = distinct !DILexicalBlock(scope: !94, file: !2, line: 29, column: 25)
!100 = !DILocation(line: 31, column: 5, scope: !99)
!101 = !DILocation(line: 32, column: 27, scope: !102)
!102 = distinct !DILexicalBlock(scope: !66, file: !2, line: 32, column: 9)
!103 = !DILocation(line: 32, column: 9, scope: !102)
!104 = !DILocation(line: 33, column: 9, scope: !105)
!105 = distinct !DILexicalBlock(scope: !106, file: !2, line: 33, column: 9)
!106 = distinct !DILexicalBlock(scope: !107, file: !2, line: 33, column: 9)
!107 = distinct !DILexicalBlock(scope: !102, file: !2, line: 32, column: 38)
!108 = !DILocation(line: 34, column: 5, scope: !107)
!109 = !DILocation(line: 35, column: 5, scope: !110)
!110 = distinct !DILexicalBlock(scope: !111, file: !2, line: 35, column: 5)
!111 = distinct !DILexicalBlock(scope: !66, file: !2, line: 35, column: 5)
!112 = !DILocation(line: 37, column: 5, scope: !66)
!113 = distinct !DISubprogram(name: "is_power_of_two16", scope: !2, file: !2, line: 6, type: !114, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !32, retainedNodes: !56)
!114 = !DISubroutineType(types: !115)
!115 = !{!69, !41}
!116 = !DILocalVariable(name: "inp_mask", arg: 1, scope: !113, file: !2, line: 6, type: !41)
!117 = !DILocation(line: 6, column: 39, scope: !113)
!118 = !DILocation(line: 7, column: 12, scope: !113)
!119 = !DILocation(line: 7, column: 21, scope: !113)
!120 = !DILocation(line: 7, column: 27, scope: !113)
!121 = !DILocation(line: 7, column: 31, scope: !113)
!122 = !DILocation(line: 7, column: 53, scope: !113)
!123 = !DILocation(line: 7, column: 62, scope: !113)
!124 = !DILocation(line: 7, column: 42, scope: !113)
!125 = !DILocation(line: 7, column: 40, scope: !113)
!126 = !DILocation(line: 7, column: 69, scope: !113)
!127 = !DILocation(line: 0, scope: !113)
!128 = !DILocation(line: 7, column: 5, scope: !113)
