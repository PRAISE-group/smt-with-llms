; ModuleID = '/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/src/bench_04/parity_byte_fold_klee.bc'
source_filename = "/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/src/bench_04/parity_byte_fold_klee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"inp_frame\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [102 x i8] c"out_checksum == ((builtin_parity_cb((uint16_t)inp_low) ^ builtin_parity_cb((uint16_t)inp_high)) & 1U)\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [102 x i8] c"/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/src/bench_04/parity_byte_fold_klee.c\00", align 1, !dbg !12
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1, !dbg !14
@.str.3 = private unnamed_addr constant [64 x i8] c"out_checksum == builtin_parity_cb(__builtin_bswap16(inp_frame))\00", align 1, !dbg !20
@.str.4 = private unnamed_addr constant [19 x i8] c"out_checksum == 0U\00", align 1, !dbg !25

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @builtin_parity_cb(i16 noundef zeroext %0) #0 !dbg !51 {
  %2 = alloca i16, align 2
  %3 = alloca i32, align 4
  store i16 %0, ptr %2, align 2
    #dbg_declare(ptr %2, !55, !DIExpression(), !56)
    #dbg_declare(ptr %3, !57, !DIExpression(), !58)
  %4 = load i16, ptr %2, align 2, !dbg !59
  %5 = zext i16 %4 to i32, !dbg !60
  %cppop.and1 = and i32 %5, 1431655765, !dbg !61
  %ctpop.sh = lshr i32 %5, 1, !dbg !61
  %cppop.and2 = and i32 %ctpop.sh, 1431655765, !dbg !61
  %ctpop.step = add i32 %cppop.and1, %cppop.and2, !dbg !61
  %cppop.and11 = and i32 %ctpop.step, 858993459, !dbg !61
  %ctpop.sh2 = lshr i32 %ctpop.step, 2, !dbg !61
  %cppop.and23 = and i32 %ctpop.sh2, 858993459, !dbg !61
  %ctpop.step4 = add i32 %cppop.and11, %cppop.and23, !dbg !61
  %cppop.and15 = and i32 %ctpop.step4, 252645135, !dbg !61
  %ctpop.sh6 = lshr i32 %ctpop.step4, 4, !dbg !61
  %cppop.and27 = and i32 %ctpop.sh6, 252645135, !dbg !61
  %ctpop.step8 = add i32 %cppop.and15, %cppop.and27, !dbg !61
  %cppop.and19 = and i32 %ctpop.step8, 16711935, !dbg !61
  %ctpop.sh10 = lshr i32 %ctpop.step8, 8, !dbg !61
  %cppop.and211 = and i32 %ctpop.sh10, 16711935, !dbg !61
  %ctpop.step12 = add i32 %cppop.and19, %cppop.and211, !dbg !61
  %cppop.and113 = and i32 %ctpop.step12, 65535, !dbg !61
  %ctpop.sh14 = lshr i32 %ctpop.step12, 16, !dbg !61
  %cppop.and215 = and i32 %ctpop.sh14, 65535, !dbg !61
  %ctpop.step16 = add i32 %cppop.and113, %cppop.and215, !dbg !61
  %ctpop.part = add i32 %ctpop.step16, 0, !dbg !61
  %6 = and i32 %ctpop.part, 1, !dbg !61
  store i32 %6, ptr %3, align 4, !dbg !58
  %7 = load i32, ptr %3, align 4, !dbg !62
  ret i32 %7, !dbg !63
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !dbg !64 {
  %1 = alloca i32, align 4
  %2 = alloca i16, align 2
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store i32 0, ptr %1, align 4
    #dbg_declare(ptr %2, !68, !DIExpression(), !69)
    #dbg_declare(ptr %3, !70, !DIExpression(), !71)
    #dbg_declare(ptr %4, !72, !DIExpression(), !73)
    #dbg_declare(ptr %5, !74, !DIExpression(), !75)
  call void @klee_make_symbolic(ptr noundef %2, i64 noundef 2, ptr noundef @.str), !dbg !76
  %6 = load i16, ptr %2, align 2, !dbg !77
  %7 = zext i16 %6 to i32, !dbg !77
  %8 = and i32 %7, 255, !dbg !78
  %9 = trunc i32 %8 to i8, !dbg !79
  store i8 %9, ptr %3, align 1, !dbg !80
  %10 = load i16, ptr %2, align 2, !dbg !81
  %11 = zext i16 %10 to i32, !dbg !81
  %12 = ashr i32 %11, 8, !dbg !82
  %13 = trunc i32 %12 to i8, !dbg !83
  store i8 %13, ptr %4, align 1, !dbg !84
  %14 = load i16, ptr %2, align 2, !dbg !85
  %15 = call i32 @builtin_parity_cb(i16 noundef zeroext %14), !dbg !86
  store i32 %15, ptr %5, align 4, !dbg !87
  %16 = load i32, ptr %5, align 4, !dbg !88
  %17 = load i8, ptr %3, align 1, !dbg !88
  %18 = zext i8 %17 to i16, !dbg !88
  %19 = call i32 @builtin_parity_cb(i16 noundef zeroext %18), !dbg !88
  %20 = load i8, ptr %4, align 1, !dbg !88
  %21 = zext i8 %20 to i16, !dbg !88
  %22 = call i32 @builtin_parity_cb(i16 noundef zeroext %21), !dbg !88
  %23 = xor i32 %19, %22, !dbg !88
  %24 = and i32 %23, 1, !dbg !88
  %25 = icmp eq i32 %16, %24, !dbg !88
  br i1 %25, label %26, label %27, !dbg !88

26:                                               ; preds = %0
  br label %28, !dbg !88

27:                                               ; preds = %0
  call void @__assert_fail(ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 24, ptr noundef @__PRETTY_FUNCTION__.main) #4, !dbg !88
  unreachable, !dbg !88

28:                                               ; preds = %26
  %29 = load i32, ptr %5, align 4, !dbg !91
  %30 = load i16, ptr %2, align 2, !dbg !91
  %bswap.2 = shl i16 %30, 8, !dbg !91
  %bswap.1 = lshr i16 %30, 8, !dbg !91
  %bswap.i16 = or i16 %bswap.2, %bswap.1, !dbg !91
  %31 = call i32 @builtin_parity_cb(i16 noundef zeroext %bswap.i16), !dbg !91
  %32 = icmp eq i32 %29, %31, !dbg !91
  br i1 %32, label %33, label %34, !dbg !91

33:                                               ; preds = %28
  br label %35, !dbg !91

34:                                               ; preds = %28
  call void @__assert_fail(ptr noundef @.str.3, ptr noundef @.str.2, i32 noundef 25, ptr noundef @__PRETTY_FUNCTION__.main) #4, !dbg !91
  unreachable, !dbg !91

35:                                               ; preds = %33
  %36 = load i8, ptr %3, align 1, !dbg !94
  %37 = zext i8 %36 to i32, !dbg !94
  %38 = load i8, ptr %4, align 1, !dbg !96
  %39 = zext i8 %38 to i32, !dbg !96
  %40 = icmp eq i32 %37, %39, !dbg !97
  br i1 %40, label %41, label %47, !dbg !97

41:                                               ; preds = %35
  %42 = load i32, ptr %5, align 4, !dbg !98
  %43 = icmp eq i32 %42, 0, !dbg !98
  br i1 %43, label %44, label %45, !dbg !98

44:                                               ; preds = %41
  br label %46, !dbg !98

45:                                               ; preds = %41
  call void @__assert_fail(ptr noundef @.str.4, ptr noundef @.str.2, i32 noundef 27, ptr noundef @__PRETTY_FUNCTION__.main) #4, !dbg !98
  unreachable, !dbg !98

46:                                               ; preds = %44
  br label %47, !dbg !102

47:                                               ; preds = %46, %35
  %48 = load i16, ptr %2, align 2, !dbg !103
  %49 = zext i16 %48 to i32, !dbg !103
  %50 = icmp eq i32 %49, 0, !dbg !105
  br i1 %50, label %55, label %51, !dbg !106

51:                                               ; preds = %47
  %52 = load i16, ptr %2, align 2, !dbg !107
  %53 = zext i16 %52 to i32, !dbg !107
  %54 = icmp eq i32 %53, 65535, !dbg !108
  br i1 %54, label %55, label %61, !dbg !106

55:                                               ; preds = %51, %47
  %56 = load i32, ptr %5, align 4, !dbg !109
  %57 = icmp eq i32 %56, 0, !dbg !109
  br i1 %57, label %58, label %59, !dbg !109

58:                                               ; preds = %55
  br label %60, !dbg !109

59:                                               ; preds = %55
  call void @__assert_fail(ptr noundef @.str.4, ptr noundef @.str.2, i32 noundef 30, ptr noundef @__PRETTY_FUNCTION__.main) #4, !dbg !109
  unreachable, !dbg !109

60:                                               ; preds = %58
  br label %61, !dbg !113

61:                                               ; preds = %60, %51
  ret i32 0, !dbg !114
}

declare void @klee_make_symbolic(ptr noundef, i64 noundef, ptr noundef) #2

; Function Attrs: cold noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold noreturn nounwind }

!llvm.dbg.cu = !{!30}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 18, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/bench_04/parity_byte_fold_klee.c", directory: "/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet", checksumkind: CSK_MD5, checksum: "7271d51d2aa42206b013372819b5561d")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 10)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 24, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 816, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 102)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 24, type: !9, isLocal: true, isDefinition: true)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(scope: null, file: !2, line: 24, type: !16, isLocal: true, isDefinition: true)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 120, elements: !18)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!18 = !{!19}
!19 = !DISubrange(count: 15)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(scope: null, file: !2, line: 25, type: !22, isLocal: true, isDefinition: true)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !23)
!23 = !{!24}
!24 = !DISubrange(count: 64)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(scope: null, file: !2, line: 27, type: !27, isLocal: true, isDefinition: true)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: 19)
!30 = distinct !DICompileUnit(language: DW_LANG_C11, file: !31, producer: "Ubuntu clang version 20.1.8 (0ubuntu4)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !32, globals: !42, splitDebugInlining: false, nameTableKind: None)
!31 = !DIFile(filename: "/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/src/bench_04/parity_byte_fold_klee.c", directory: "/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet", checksumkind: CSK_MD5, checksum: "7271d51d2aa42206b013372819b5561d")
!32 = !{!33, !34, !39}
!33 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !35, line: 24, baseType: !36)
!35 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "006a4d9ce94ea5734db820ef3fdd4790")
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !37, line: 38, baseType: !38)
!37 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "0737a53e1b85eab0e0ba9675962d13f4")
!38 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !35, line: 25, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !37, line: 40, baseType: !41)
!41 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!42 = !{!0, !7, !12, !14, !20, !25}
!43 = !{i32 7, !"Dwarf Version", i32 5}
!44 = !{i32 2, !"Debug Info Version", i32 3}
!45 = !{i32 1, !"wchar_size", i32 4}
!46 = !{i32 8, !"PIC Level", i32 2}
!47 = !{i32 7, !"PIE Level", i32 2}
!48 = !{i32 7, !"uwtable", i32 2}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"Ubuntu clang version 20.1.8 (0ubuntu4)"}
!51 = distinct !DISubprogram(name: "builtin_parity_cb", scope: !2, file: !2, line: 7, type: !52, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !30, retainedNodes: !54)
!52 = !DISubroutineType(types: !53)
!53 = !{!33, !39}
!54 = !{}
!55 = !DILocalVariable(name: "inp_frame", arg: 1, scope: !51, file: !2, line: 7, type: !39)
!56 = !DILocation(line: 7, column: 41, scope: !51)
!57 = !DILocalVariable(name: "out_checksum", scope: !51, file: !2, line: 8, type: !33)
!58 = !DILocation(line: 8, column: 18, scope: !51)
!59 = !DILocation(line: 8, column: 78, scope: !51)
!60 = !DILocation(line: 8, column: 64, scope: !51)
!61 = !DILocation(line: 8, column: 47, scope: !51)
!62 = !DILocation(line: 9, column: 12, scope: !51)
!63 = !DILocation(line: 9, column: 5, scope: !51)
!64 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 12, type: !65, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !30, retainedNodes: !54)
!65 = !DISubroutineType(types: !66)
!66 = !{!67}
!67 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!68 = !DILocalVariable(name: "inp_frame", scope: !64, file: !2, line: 13, type: !39)
!69 = !DILocation(line: 13, column: 14, scope: !64)
!70 = !DILocalVariable(name: "inp_low", scope: !64, file: !2, line: 14, type: !34)
!71 = !DILocation(line: 14, column: 13, scope: !64)
!72 = !DILocalVariable(name: "inp_high", scope: !64, file: !2, line: 15, type: !34)
!73 = !DILocation(line: 15, column: 13, scope: !64)
!74 = !DILocalVariable(name: "out_checksum", scope: !64, file: !2, line: 16, type: !33)
!75 = !DILocation(line: 16, column: 18, scope: !64)
!76 = !DILocation(line: 18, column: 5, scope: !64)
!77 = !DILocation(line: 20, column: 25, scope: !64)
!78 = !DILocation(line: 20, column: 35, scope: !64)
!79 = !DILocation(line: 20, column: 15, scope: !64)
!80 = !DILocation(line: 20, column: 13, scope: !64)
!81 = !DILocation(line: 21, column: 26, scope: !64)
!82 = !DILocation(line: 21, column: 36, scope: !64)
!83 = !DILocation(line: 21, column: 16, scope: !64)
!84 = !DILocation(line: 21, column: 14, scope: !64)
!85 = !DILocation(line: 22, column: 38, scope: !64)
!86 = !DILocation(line: 22, column: 20, scope: !64)
!87 = !DILocation(line: 22, column: 18, scope: !64)
!88 = !DILocation(line: 24, column: 5, scope: !89)
!89 = distinct !DILexicalBlock(scope: !90, file: !2, line: 24, column: 5)
!90 = distinct !DILexicalBlock(scope: !64, file: !2, line: 24, column: 5)
!91 = !DILocation(line: 25, column: 5, scope: !92)
!92 = distinct !DILexicalBlock(scope: !93, file: !2, line: 25, column: 5)
!93 = distinct !DILexicalBlock(scope: !64, file: !2, line: 25, column: 5)
!94 = !DILocation(line: 26, column: 9, scope: !95)
!95 = distinct !DILexicalBlock(scope: !64, file: !2, line: 26, column: 9)
!96 = !DILocation(line: 26, column: 20, scope: !95)
!97 = !DILocation(line: 26, column: 17, scope: !95)
!98 = !DILocation(line: 27, column: 9, scope: !99)
!99 = distinct !DILexicalBlock(scope: !100, file: !2, line: 27, column: 9)
!100 = distinct !DILexicalBlock(scope: !101, file: !2, line: 27, column: 9)
!101 = distinct !DILexicalBlock(scope: !95, file: !2, line: 26, column: 30)
!102 = !DILocation(line: 28, column: 5, scope: !101)
!103 = !DILocation(line: 29, column: 9, scope: !104)
!104 = distinct !DILexicalBlock(scope: !64, file: !2, line: 29, column: 9)
!105 = !DILocation(line: 29, column: 19, scope: !104)
!106 = !DILocation(line: 29, column: 30, scope: !104)
!107 = !DILocation(line: 29, column: 33, scope: !104)
!108 = !DILocation(line: 29, column: 43, scope: !104)
!109 = !DILocation(line: 30, column: 9, scope: !110)
!110 = distinct !DILexicalBlock(scope: !111, file: !2, line: 30, column: 9)
!111 = distinct !DILexicalBlock(scope: !112, file: !2, line: 30, column: 9)
!112 = distinct !DILexicalBlock(scope: !104, file: !2, line: 29, column: 55)
!113 = !DILocation(line: 31, column: 5, scope: !112)
!114 = !DILocation(line: 33, column: 5, scope: !64)
