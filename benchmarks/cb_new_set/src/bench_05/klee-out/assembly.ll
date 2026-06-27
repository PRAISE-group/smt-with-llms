; ModuleID = '/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/src/bench_05/clz_prefix_bucket_klee.bc'
source_filename = "/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/src/bench_05/clz_prefix_bucket_klee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"inp_code\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [24 x i8] c"out_prefix_zeros <= 15U\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [103 x i8] c"/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/src/bench_05/clz_prefix_bucket_klee.c\00", align 1, !dbg !12
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1, !dbg !17
@.str.3 = private unnamed_addr constant [55 x i8] c"(uint32_t)inp_code >= (1U << (15U - out_prefix_zeros))\00", align 1, !dbg !23
@.str.4 = private unnamed_addr constant [54 x i8] c"(uint32_t)inp_code < (1U << (16U - out_prefix_zeros))\00", align 1, !dbg !28
@.str.5 = private unnamed_addr constant [23 x i8] c"out_prefix_zeros == 0U\00", align 1, !dbg !33
@.str.6 = private unnamed_addr constant [8 x i8] c"IGNORED\00", align 1, !dbg !38
@.str.1.7 = private unnamed_addr constant [16 x i8] c"overshift error\00", align 1, !dbg !44
@.str.2.8 = private unnamed_addr constant [14 x i8] c"overshift.err\00", align 1, !dbg !49

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @builtin_clz_cb(i16 noundef zeroext %0) #0 !dbg !75 {
  %2 = alloca i16, align 2
  %3 = alloca i32, align 4
  store i16 %0, ptr %2, align 2
    #dbg_declare(ptr %2, !82, !DIExpression(), !83)
    #dbg_declare(ptr %3, !84, !DIExpression(), !85)
  %4 = load i16, ptr %2, align 2, !dbg !86
  %5 = zext i16 %4 to i32, !dbg !87
  %ctlz.sh = lshr i32 %5, 1, !dbg !88
  %ctlz.step = or i32 %5, %ctlz.sh, !dbg !88
  %ctlz.sh1 = lshr i32 %ctlz.step, 2, !dbg !88
  %ctlz.step2 = or i32 %ctlz.step, %ctlz.sh1, !dbg !88
  %ctlz.sh3 = lshr i32 %ctlz.step2, 4, !dbg !88
  %ctlz.step4 = or i32 %ctlz.step2, %ctlz.sh3, !dbg !88
  %ctlz.sh5 = lshr i32 %ctlz.step4, 8, !dbg !88
  %ctlz.step6 = or i32 %ctlz.step4, %ctlz.sh5, !dbg !88
  %ctlz.sh7 = lshr i32 %ctlz.step6, 16, !dbg !88
  %ctlz.step8 = or i32 %ctlz.step6, %ctlz.sh7, !dbg !88
  %6 = xor i32 %ctlz.step8, -1, !dbg !88
  %cppop.and1 = and i32 %6, 1431655765, !dbg !88
  %ctpop.sh = lshr i32 %6, 1, !dbg !88
  %cppop.and2 = and i32 %ctpop.sh, 1431655765, !dbg !88
  %ctpop.step = add i32 %cppop.and1, %cppop.and2, !dbg !88
  %cppop.and19 = and i32 %ctpop.step, 858993459, !dbg !88
  %ctpop.sh10 = lshr i32 %ctpop.step, 2, !dbg !88
  %cppop.and211 = and i32 %ctpop.sh10, 858993459, !dbg !88
  %ctpop.step12 = add i32 %cppop.and19, %cppop.and211, !dbg !88
  %cppop.and113 = and i32 %ctpop.step12, 252645135, !dbg !88
  %ctpop.sh14 = lshr i32 %ctpop.step12, 4, !dbg !88
  %cppop.and215 = and i32 %ctpop.sh14, 252645135, !dbg !88
  %ctpop.step16 = add i32 %cppop.and113, %cppop.and215, !dbg !88
  %cppop.and117 = and i32 %ctpop.step16, 16711935, !dbg !88
  %ctpop.sh18 = lshr i32 %ctpop.step16, 8, !dbg !88
  %cppop.and219 = and i32 %ctpop.sh18, 16711935, !dbg !88
  %ctpop.step20 = add i32 %cppop.and117, %cppop.and219, !dbg !88
  %cppop.and121 = and i32 %ctpop.step20, 65535, !dbg !88
  %ctpop.sh22 = lshr i32 %ctpop.step20, 16, !dbg !88
  %cppop.and223 = and i32 %ctpop.sh22, 65535, !dbg !88
  %ctpop.step24 = add i32 %cppop.and121, %cppop.and223, !dbg !88
  %ctpop.part = add i32 %ctpop.step24, 0, !dbg !88
  %7 = sub nsw i32 %ctpop.part, 16, !dbg !89
  store i32 %7, ptr %3, align 4, !dbg !85
  %8 = load i32, ptr %3, align 4, !dbg !90
  ret i32 %8, !dbg !91
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !dbg !92 {
  %1 = alloca i32, align 4
  %2 = alloca i16, align 2
  %3 = alloca i32, align 4
  store i32 0, ptr %1, align 4
    #dbg_declare(ptr %2, !95, !DIExpression(), !96)
  call void @klee_make_symbolic(ptr noundef %2, i64 noundef 2, ptr noundef @.str), !dbg !97
  %4 = load i16, ptr %2, align 2, !dbg !98
  %5 = zext i16 %4 to i32, !dbg !98
  %6 = icmp ne i32 %5, 0, !dbg !100
  br i1 %6, label %7, label %44, !dbg !100

7:                                                ; preds = %0
    #dbg_declare(ptr %3, !101, !DIExpression(), !103)
  %8 = load i16, ptr %2, align 2, !dbg !104
  %9 = call i32 @builtin_clz_cb(i16 noundef zeroext %8), !dbg !105
  store i32 %9, ptr %3, align 4, !dbg !103
  %10 = load i32, ptr %3, align 4, !dbg !106
  %11 = icmp ule i32 %10, 15, !dbg !106
  br i1 %11, label %12, label %13, !dbg !106

12:                                               ; preds = %7
  br label %14, !dbg !106

13:                                               ; preds = %7
  call void @__assert_fail(ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 22, ptr noundef @__PRETTY_FUNCTION__.main) #5, !dbg !106
  unreachable, !dbg !106

14:                                               ; preds = %12
  %15 = load i16, ptr %2, align 2, !dbg !109
  %16 = zext i16 %15 to i32, !dbg !109
  %17 = load i32, ptr %3, align 4, !dbg !109
  %18 = sub i32 15, %17, !dbg !109
  %int_cast_to_i64 = zext i32 %18 to i64, !dbg !109
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !109
  %19 = shl i32 1, %18, !dbg !109, !klee.check.shift !112
  %20 = icmp uge i32 %16, %19, !dbg !109
  br i1 %20, label %21, label %22, !dbg !109

21:                                               ; preds = %14
  br label %23, !dbg !109

22:                                               ; preds = %14
  call void @__assert_fail(ptr noundef @.str.3, ptr noundef @.str.2, i32 noundef 23, ptr noundef @__PRETTY_FUNCTION__.main) #5, !dbg !109
  unreachable, !dbg !109

23:                                               ; preds = %21
  %24 = load i16, ptr %2, align 2, !dbg !113
  %25 = zext i16 %24 to i32, !dbg !113
  %26 = load i32, ptr %3, align 4, !dbg !113
  %27 = sub i32 16, %26, !dbg !113
  %int_cast_to_i641 = zext i32 %27 to i64, !dbg !113
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !113
  %28 = shl i32 1, %27, !dbg !113, !klee.check.shift !112
  %29 = icmp ult i32 %25, %28, !dbg !113
  br i1 %29, label %30, label %31, !dbg !113

30:                                               ; preds = %23
  br label %32, !dbg !113

31:                                               ; preds = %23
  call void @__assert_fail(ptr noundef @.str.4, ptr noundef @.str.2, i32 noundef 24, ptr noundef @__PRETTY_FUNCTION__.main) #5, !dbg !113
  unreachable, !dbg !113

32:                                               ; preds = %30
  %33 = load i16, ptr %2, align 2, !dbg !116
  %34 = zext i16 %33 to i32, !dbg !116
  %35 = and i32 %34, 32768, !dbg !118
  %36 = icmp ne i32 %35, 0, !dbg !119
  br i1 %36, label %37, label %43, !dbg !119

37:                                               ; preds = %32
  %38 = load i32, ptr %3, align 4, !dbg !120
  %39 = icmp eq i32 %38, 0, !dbg !120
  br i1 %39, label %40, label %41, !dbg !120

40:                                               ; preds = %37
  br label %42, !dbg !120

41:                                               ; preds = %37
  call void @__assert_fail(ptr noundef @.str.5, ptr noundef @.str.2, i32 noundef 26, ptr noundef @__PRETTY_FUNCTION__.main) #5, !dbg !120
  unreachable, !dbg !120

42:                                               ; preds = %40
  br label %43, !dbg !124

43:                                               ; preds = %42, %32
  br label %44, !dbg !125

44:                                               ; preds = %43, %0
  ret i32 0, !dbg !126
}

declare void @klee_make_symbolic(ptr noundef, i64 noundef, ptr noundef) #2

; Function Attrs: cold noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @klee_overshift_check(i64 noundef %0, i64 noundef %1) #0 !dbg !127 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, ptr %3, align 8
    #dbg_declare(ptr %3, !131, !DIExpression(), !132)
  store i64 %1, ptr %4, align 8
    #dbg_declare(ptr %4, !133, !DIExpression(), !134)
  %5 = load i64, ptr %4, align 8, !dbg !135
  %6 = load i64, ptr %3, align 8, !dbg !137
  %7 = icmp uge i64 %5, %6, !dbg !138
  br i1 %7, label %8, label %9, !dbg !138

8:                                                ; preds = %2
  call void @klee_report_error(ptr noundef @.str.6, i32 noundef 0, ptr noundef @.str.1.7, ptr noundef @.str.2.8) #6, !dbg !139
  unreachable, !dbg !139

9:                                                ; preds = %2
  ret void, !dbg !141
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

!llvm.dbg.cu = !{!54, !64}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74, !74}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 17, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/bench_05/clz_prefix_bucket_klee.c", directory: "/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet", checksumkind: CSK_MD5, checksum: "bb10a22a38e3d647061ae6e5cd38e6f1")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 9)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 22, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 24)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 22, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 824, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 103)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 22, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 120, elements: !21)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!21 = !{!22}
!22 = !DISubrange(count: 15)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !2, line: 23, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 440, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 55)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !2, line: 24, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 432, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 54)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !2, line: 26, type: !35, isLocal: true, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 23)
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
!54 = distinct !DICompileUnit(language: DW_LANG_C11, file: !55, producer: "Ubuntu clang version 20.1.8 (0ubuntu4)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !56, globals: !63, splitDebugInlining: false, nameTableKind: None)
!55 = !DIFile(filename: "/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/src/bench_05/clz_prefix_bucket_klee.c", directory: "/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet", checksumkind: CSK_MD5, checksum: "bb10a22a38e3d647061ae6e5cd38e6f1")
!56 = !{!57, !58, !59}
!57 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!58 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !60, line: 26, baseType: !61)
!60 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "006a4d9ce94ea5734db820ef3fdd4790")
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !62, line: 42, baseType: !57)
!62 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "0737a53e1b85eab0e0ba9675962d13f4")
!63 = !{!0, !7, !12, !17, !23, !28, !33}
!64 = distinct !DICompileUnit(language: DW_LANG_C89, file: !65, producer: "Ubuntu clang version 20.1.8 (0ubuntu4)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !66, splitDebugInlining: false, nameTableKind: None)
!65 = !DIFile(filename: "/home/sumiqlnx/klee_experiments/klee/runtime/Intrinsic/klee_overshift_check.c", directory: "/home/sumiqlnx/klee_experiments/klee_build/runtime/Intrinsic", checksumkind: CSK_MD5, checksum: "5666ed772284910b5d0f856859e4d123")
!66 = !{!38, !44, !49}
!67 = !{i32 7, !"Dwarf Version", i32 5}
!68 = !{i32 2, !"Debug Info Version", i32 3}
!69 = !{i32 1, !"wchar_size", i32 4}
!70 = !{i32 8, !"PIC Level", i32 2}
!71 = !{i32 7, !"PIE Level", i32 2}
!72 = !{i32 7, !"uwtable", i32 2}
!73 = !{i32 7, !"frame-pointer", i32 2}
!74 = !{!"Ubuntu clang version 20.1.8 (0ubuntu4)"}
!75 = distinct !DISubprogram(name: "builtin_clz_cb", scope: !2, file: !2, line: 8, type: !76, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !54, retainedNodes: !81)
!76 = !DISubroutineType(types: !77)
!77 = !{!57, !78}
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !60, line: 25, baseType: !79)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !62, line: 40, baseType: !80)
!80 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!81 = !{}
!82 = !DILocalVariable(name: "inp_code", arg: 1, scope: !75, file: !2, line: 8, type: !78)
!83 = !DILocation(line: 8, column: 38, scope: !75)
!84 = !DILocalVariable(name: "out_prefix_zeros", scope: !75, file: !2, line: 9, type: !57)
!85 = !DILocation(line: 9, column: 18, scope: !75)
!86 = !DILocation(line: 10, column: 52, scope: !75)
!87 = !DILocation(line: 10, column: 38, scope: !75)
!88 = !DILocation(line: 10, column: 24, scope: !75)
!89 = !DILocation(line: 10, column: 62, scope: !75)
!90 = !DILocation(line: 11, column: 12, scope: !75)
!91 = !DILocation(line: 11, column: 5, scope: !75)
!92 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 14, type: !93, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !54, retainedNodes: !81)
!93 = !DISubroutineType(types: !94)
!94 = !{!58}
!95 = !DILocalVariable(name: "inp_code", scope: !92, file: !2, line: 15, type: !78)
!96 = !DILocation(line: 15, column: 14, scope: !92)
!97 = !DILocation(line: 17, column: 5, scope: !92)
!98 = !DILocation(line: 19, column: 9, scope: !99)
!99 = distinct !DILexicalBlock(scope: !92, file: !2, line: 19, column: 9)
!100 = !DILocation(line: 19, column: 18, scope: !99)
!101 = !DILocalVariable(name: "out_prefix_zeros", scope: !102, file: !2, line: 20, type: !57)
!102 = distinct !DILexicalBlock(scope: !99, file: !2, line: 19, column: 25)
!103 = !DILocation(line: 20, column: 22, scope: !102)
!104 = !DILocation(line: 20, column: 56, scope: !102)
!105 = !DILocation(line: 20, column: 41, scope: !102)
!106 = !DILocation(line: 22, column: 9, scope: !107)
!107 = distinct !DILexicalBlock(scope: !108, file: !2, line: 22, column: 9)
!108 = distinct !DILexicalBlock(scope: !102, file: !2, line: 22, column: 9)
!109 = !DILocation(line: 23, column: 9, scope: !110)
!110 = distinct !DILexicalBlock(scope: !111, file: !2, line: 23, column: 9)
!111 = distinct !DILexicalBlock(scope: !102, file: !2, line: 23, column: 9)
!112 = !{!"True"}
!113 = !DILocation(line: 24, column: 9, scope: !114)
!114 = distinct !DILexicalBlock(scope: !115, file: !2, line: 24, column: 9)
!115 = distinct !DILexicalBlock(scope: !102, file: !2, line: 24, column: 9)
!116 = !DILocation(line: 25, column: 14, scope: !117)
!117 = distinct !DILexicalBlock(scope: !102, file: !2, line: 25, column: 13)
!118 = !DILocation(line: 25, column: 23, scope: !117)
!119 = !DILocation(line: 25, column: 34, scope: !117)
!120 = !DILocation(line: 26, column: 13, scope: !121)
!121 = distinct !DILexicalBlock(scope: !122, file: !2, line: 26, column: 13)
!122 = distinct !DILexicalBlock(scope: !123, file: !2, line: 26, column: 13)
!123 = distinct !DILexicalBlock(scope: !117, file: !2, line: 25, column: 41)
!124 = !DILocation(line: 27, column: 9, scope: !123)
!125 = !DILocation(line: 28, column: 5, scope: !102)
!126 = !DILocation(line: 30, column: 5, scope: !92)
!127 = distinct !DISubprogram(name: "klee_overshift_check", scope: !40, file: !40, line: 20, type: !128, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !64, retainedNodes: !81)
!128 = !DISubroutineType(types: !129)
!129 = !{null, !130, !130}
!130 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!131 = !DILocalVariable(name: "bitWidth", arg: 1, scope: !127, file: !40, line: 20, type: !130)
!132 = !DILocation(line: 20, column: 46, scope: !127)
!133 = !DILocalVariable(name: "shift", arg: 2, scope: !127, file: !40, line: 20, type: !130)
!134 = !DILocation(line: 20, column: 75, scope: !127)
!135 = !DILocation(line: 21, column: 7, scope: !136)
!136 = distinct !DILexicalBlock(scope: !127, file: !40, line: 21, column: 7)
!137 = !DILocation(line: 21, column: 16, scope: !136)
!138 = !DILocation(line: 21, column: 13, scope: !136)
!139 = !DILocation(line: 27, column: 5, scope: !140)
!140 = distinct !DILexicalBlock(scope: !136, file: !40, line: 21, column: 26)
!141 = !DILocation(line: 29, column: 1, scope: !127)
