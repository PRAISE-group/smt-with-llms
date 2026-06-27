; ModuleID = '/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/src/bench_02/popcount_mirrored_bytes_klee.bc'
source_filename = "/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/src/bench_02/popcount_mirrored_bytes_klee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"inp_window\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [95 x i8] c"out_active == builtin_popcount_cb((uint16_t)inp_low) + builtin_popcount_cb((uint16_t)inp_high)\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [109 x i8] c"/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/src/bench_02/popcount_mirrored_bytes_klee.c\00", align 1, !dbg !12
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1, !dbg !17
@.str.3 = private unnamed_addr constant [58 x i8] c"out_active == 2U * builtin_popcount_cb((uint16_t)inp_low)\00", align 1, !dbg !23
@.str.4 = private unnamed_addr constant [54 x i8] c"out_active == builtin_popcount_cb((uint16_t)inp_high)\00", align 1, !dbg !28

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @builtin_popcount_cb(i16 noundef zeroext %0) #0 !dbg !54 {
  %2 = alloca i16, align 2
  %3 = alloca i32, align 4
  store i16 %0, ptr %2, align 2
    #dbg_declare(ptr %2, !58, !DIExpression(), !59)
    #dbg_declare(ptr %3, !60, !DIExpression(), !61)
  %4 = load i16, ptr %2, align 2, !dbg !62
  %5 = zext i16 %4 to i32, !dbg !63
  %cppop.and1 = and i32 %5, 1431655765, !dbg !64
  %ctpop.sh = lshr i32 %5, 1, !dbg !64
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
  store i32 %ctpop.part, ptr %3, align 4, !dbg !61
  %6 = load i32, ptr %3, align 4, !dbg !65
  ret i32 %6, !dbg !66
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !dbg !67 {
  %1 = alloca i32, align 4
  %2 = alloca i16, align 2
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store i32 0, ptr %1, align 4
    #dbg_declare(ptr %2, !71, !DIExpression(), !72)
    #dbg_declare(ptr %3, !73, !DIExpression(), !74)
    #dbg_declare(ptr %4, !75, !DIExpression(), !76)
    #dbg_declare(ptr %5, !77, !DIExpression(), !78)
  call void @klee_make_symbolic(ptr noundef %2, i64 noundef 2, ptr noundef @.str), !dbg !79
  %6 = load i16, ptr %2, align 2, !dbg !80
  %7 = zext i16 %6 to i32, !dbg !80
  %8 = and i32 %7, 255, !dbg !81
  %9 = trunc i32 %8 to i8, !dbg !82
  store i8 %9, ptr %3, align 1, !dbg !83
  %10 = load i16, ptr %2, align 2, !dbg !84
  %11 = zext i16 %10 to i32, !dbg !84
  %12 = ashr i32 %11, 8, !dbg !85
  %13 = trunc i32 %12 to i8, !dbg !86
  store i8 %13, ptr %4, align 1, !dbg !87
  %14 = load i16, ptr %2, align 2, !dbg !88
  %15 = call i32 @builtin_popcount_cb(i16 noundef zeroext %14), !dbg !89
  store i32 %15, ptr %5, align 4, !dbg !90
  %16 = load i32, ptr %5, align 4, !dbg !91
  %17 = load i8, ptr %3, align 1, !dbg !91
  %18 = zext i8 %17 to i16, !dbg !91
  %19 = call i32 @builtin_popcount_cb(i16 noundef zeroext %18), !dbg !91
  %20 = load i8, ptr %4, align 1, !dbg !91
  %21 = zext i8 %20 to i16, !dbg !91
  %22 = call i32 @builtin_popcount_cb(i16 noundef zeroext %21), !dbg !91
  %23 = add i32 %19, %22, !dbg !91
  %24 = icmp eq i32 %16, %23, !dbg !91
  br i1 %24, label %25, label %26, !dbg !91

25:                                               ; preds = %0
  br label %27, !dbg !91

26:                                               ; preds = %0
  call void @__assert_fail(ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 24, ptr noundef @__PRETTY_FUNCTION__.main) #4, !dbg !91
  unreachable, !dbg !91

27:                                               ; preds = %25
  %28 = load i8, ptr %3, align 1, !dbg !94
  %29 = zext i8 %28 to i32, !dbg !94
  %30 = load i8, ptr %4, align 1, !dbg !96
  %31 = zext i8 %30 to i32, !dbg !96
  %32 = icmp eq i32 %29, %31, !dbg !97
  br i1 %32, label %33, label %43, !dbg !97

33:                                               ; preds = %27
  %34 = load i32, ptr %5, align 4, !dbg !98
  %35 = load i8, ptr %3, align 1, !dbg !98
  %36 = zext i8 %35 to i16, !dbg !98
  %37 = call i32 @builtin_popcount_cb(i16 noundef zeroext %36), !dbg !98
  %38 = mul i32 2, %37, !dbg !98
  %39 = icmp eq i32 %34, %38, !dbg !98
  br i1 %39, label %40, label %41, !dbg !98

40:                                               ; preds = %33
  br label %42, !dbg !98

41:                                               ; preds = %33
  call void @__assert_fail(ptr noundef @.str.3, ptr noundef @.str.2, i32 noundef 26, ptr noundef @__PRETTY_FUNCTION__.main) #4, !dbg !98
  unreachable, !dbg !98

42:                                               ; preds = %40
  br label %43, !dbg !102

43:                                               ; preds = %42, %27
  %44 = load i8, ptr %3, align 1, !dbg !103
  %45 = zext i8 %44 to i32, !dbg !103
  %46 = icmp eq i32 %45, 0, !dbg !105
  br i1 %46, label %47, label %56, !dbg !105

47:                                               ; preds = %43
  %48 = load i32, ptr %5, align 4, !dbg !106
  %49 = load i8, ptr %4, align 1, !dbg !106
  %50 = zext i8 %49 to i16, !dbg !106
  %51 = call i32 @builtin_popcount_cb(i16 noundef zeroext %50), !dbg !106
  %52 = icmp eq i32 %48, %51, !dbg !106
  br i1 %52, label %53, label %54, !dbg !106

53:                                               ; preds = %47
  br label %55, !dbg !106

54:                                               ; preds = %47
  call void @__assert_fail(ptr noundef @.str.4, ptr noundef @.str.2, i32 noundef 29, ptr noundef @__PRETTY_FUNCTION__.main) #4, !dbg !106
  unreachable, !dbg !106

55:                                               ; preds = %53
  br label %56, !dbg !110

56:                                               ; preds = %55, %43
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

!llvm.dbg.cu = !{!33}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 18, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/bench_02/popcount_mirrored_bytes_klee.c", directory: "/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet", checksumkind: CSK_MD5, checksum: "407221b1dbf6503dff142b2d68f5c6b6")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 11)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 24, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 760, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 95)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 24, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 872, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 109)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 24, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 120, elements: !21)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!21 = !{!22}
!22 = !DISubrange(count: 15)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !2, line: 26, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 464, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 58)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !2, line: 29, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 432, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 54)
!33 = distinct !DICompileUnit(language: DW_LANG_C11, file: !34, producer: "Ubuntu clang version 20.1.8 (0ubuntu4)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !35, globals: !45, splitDebugInlining: false, nameTableKind: None)
!34 = !DIFile(filename: "/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/src/bench_02/popcount_mirrored_bytes_klee.c", directory: "/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet", checksumkind: CSK_MD5, checksum: "407221b1dbf6503dff142b2d68f5c6b6")
!35 = !{!36, !37, !42}
!36 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !38, line: 24, baseType: !39)
!38 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "006a4d9ce94ea5734db820ef3fdd4790")
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !40, line: 38, baseType: !41)
!40 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "0737a53e1b85eab0e0ba9675962d13f4")
!41 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !38, line: 25, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !40, line: 40, baseType: !44)
!44 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!45 = !{!0, !7, !12, !17, !23, !28}
!46 = !{i32 7, !"Dwarf Version", i32 5}
!47 = !{i32 2, !"Debug Info Version", i32 3}
!48 = !{i32 1, !"wchar_size", i32 4}
!49 = !{i32 8, !"PIC Level", i32 2}
!50 = !{i32 7, !"PIE Level", i32 2}
!51 = !{i32 7, !"uwtable", i32 2}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"Ubuntu clang version 20.1.8 (0ubuntu4)"}
!54 = distinct !DISubprogram(name: "builtin_popcount_cb", scope: !2, file: !2, line: 7, type: !55, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !33, retainedNodes: !57)
!55 = !DISubroutineType(types: !56)
!56 = !{!36, !42}
!57 = !{}
!58 = !DILocalVariable(name: "inp_window", arg: 1, scope: !54, file: !2, line: 7, type: !42)
!59 = !DILocation(line: 7, column: 43, scope: !54)
!60 = !DILocalVariable(name: "out_active", scope: !54, file: !2, line: 8, type: !36)
!61 = !DILocation(line: 8, column: 18, scope: !54)
!62 = !DILocation(line: 8, column: 78, scope: !54)
!63 = !DILocation(line: 8, column: 64, scope: !54)
!64 = !DILocation(line: 8, column: 45, scope: !54)
!65 = !DILocation(line: 9, column: 12, scope: !54)
!66 = !DILocation(line: 9, column: 5, scope: !54)
!67 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 12, type: !68, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !33, retainedNodes: !57)
!68 = !DISubroutineType(types: !69)
!69 = !{!70}
!70 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!71 = !DILocalVariable(name: "inp_window", scope: !67, file: !2, line: 13, type: !42)
!72 = !DILocation(line: 13, column: 14, scope: !67)
!73 = !DILocalVariable(name: "inp_low", scope: !67, file: !2, line: 14, type: !37)
!74 = !DILocation(line: 14, column: 13, scope: !67)
!75 = !DILocalVariable(name: "inp_high", scope: !67, file: !2, line: 15, type: !37)
!76 = !DILocation(line: 15, column: 13, scope: !67)
!77 = !DILocalVariable(name: "out_active", scope: !67, file: !2, line: 16, type: !36)
!78 = !DILocation(line: 16, column: 18, scope: !67)
!79 = !DILocation(line: 18, column: 5, scope: !67)
!80 = !DILocation(line: 20, column: 25, scope: !67)
!81 = !DILocation(line: 20, column: 36, scope: !67)
!82 = !DILocation(line: 20, column: 15, scope: !67)
!83 = !DILocation(line: 20, column: 13, scope: !67)
!84 = !DILocation(line: 21, column: 26, scope: !67)
!85 = !DILocation(line: 21, column: 37, scope: !67)
!86 = !DILocation(line: 21, column: 16, scope: !67)
!87 = !DILocation(line: 21, column: 14, scope: !67)
!88 = !DILocation(line: 22, column: 38, scope: !67)
!89 = !DILocation(line: 22, column: 18, scope: !67)
!90 = !DILocation(line: 22, column: 16, scope: !67)
!91 = !DILocation(line: 24, column: 5, scope: !92)
!92 = distinct !DILexicalBlock(scope: !93, file: !2, line: 24, column: 5)
!93 = distinct !DILexicalBlock(scope: !67, file: !2, line: 24, column: 5)
!94 = !DILocation(line: 25, column: 9, scope: !95)
!95 = distinct !DILexicalBlock(scope: !67, file: !2, line: 25, column: 9)
!96 = !DILocation(line: 25, column: 20, scope: !95)
!97 = !DILocation(line: 25, column: 17, scope: !95)
!98 = !DILocation(line: 26, column: 9, scope: !99)
!99 = distinct !DILexicalBlock(scope: !100, file: !2, line: 26, column: 9)
!100 = distinct !DILexicalBlock(scope: !101, file: !2, line: 26, column: 9)
!101 = distinct !DILexicalBlock(scope: !95, file: !2, line: 25, column: 30)
!102 = !DILocation(line: 27, column: 5, scope: !101)
!103 = !DILocation(line: 28, column: 9, scope: !104)
!104 = distinct !DILexicalBlock(scope: !67, file: !2, line: 28, column: 9)
!105 = !DILocation(line: 28, column: 17, scope: !104)
!106 = !DILocation(line: 29, column: 9, scope: !107)
!107 = distinct !DILexicalBlock(scope: !108, file: !2, line: 29, column: 9)
!108 = distinct !DILexicalBlock(scope: !109, file: !2, line: 29, column: 9)
!109 = distinct !DILexicalBlock(scope: !104, file: !2, line: 28, column: 24)
!110 = !DILocation(line: 30, column: 5, scope: !109)
!111 = !DILocation(line: 32, column: 5, scope: !67)
