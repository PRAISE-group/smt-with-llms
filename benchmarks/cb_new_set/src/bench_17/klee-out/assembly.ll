; ModuleID = '/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/src/bench_17/rotr_priority_ring_klee.bc'
source_filename = "/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/src/bench_17/rotr_priority_ring_klee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"inp_mask\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [10 x i8] c"inp_steps\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [51 x i8] c"builtin_rotateright16_cb(inp_mask, 0U) == inp_mask\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [104 x i8] c"/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/src/bench_17/rotr_priority_ring_klee.c\00", align 1, !dbg !17
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1, !dbg !22
@.str.4 = private unnamed_addr constant [52 x i8] c"builtin_rotateright16_cb(inp_mask, 16U) == inp_mask\00", align 1, !dbg !28
@.str.5 = private unnamed_addr constant [87 x i8] c"builtin_rotateright16_cb(out_rotated, (uint16_t)(16U - (inp_steps & 15U))) == inp_mask\00", align 1, !dbg !33
@.str.6 = private unnamed_addr constant [150 x i8] c"builtin_rotateright16_cb(builtin_rotateright16_cb(inp_mask, inp_steps), 5U) == builtin_rotateright16_cb(inp_mask, (uint16_t)((inp_steps + 5U) & 15U))\00", align 1, !dbg !38
@.str.7 = private unnamed_addr constant [24 x i8] c"out_rotated == inp_mask\00", align 1, !dbg !43

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i16 @builtin_rotateright16_cb(i16 noundef zeroext %0, i16 noundef zeroext %1) #0 !dbg !66 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  store i16 %0, ptr %3, align 2
    #dbg_declare(ptr %3, !70, !DIExpression(), !71)
  store i16 %1, ptr %4, align 2
    #dbg_declare(ptr %4, !72, !DIExpression(), !73)
    #dbg_declare(ptr %5, !74, !DIExpression(), !75)
  %6 = load i16, ptr %3, align 2, !dbg !76
  %7 = load i16, ptr %4, align 2, !dbg !77
  %8 = zext i16 %7 to i32, !dbg !78
  %9 = trunc i32 %8 to i16, !dbg !78
  %10 = call i16 @llvm.fshr.i16(i16 %6, i16 %6, i16 %9), !dbg !79
  store i16 %10, ptr %5, align 2, !dbg !75
  %11 = load i16, ptr %5, align 2, !dbg !80
  ret i16 %11, !dbg !81
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.fshr.i16(i16, i16, i16) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !dbg !82 {
  %1 = alloca i32, align 4
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  store i32 0, ptr %1, align 4
    #dbg_declare(ptr %2, !86, !DIExpression(), !87)
    #dbg_declare(ptr %3, !88, !DIExpression(), !89)
    #dbg_declare(ptr %4, !90, !DIExpression(), !91)
  call void @klee_make_symbolic(ptr noundef %2, i64 noundef 2, ptr noundef @.str), !dbg !92
  call void @klee_make_symbolic(ptr noundef %3, i64 noundef 2, ptr noundef @.str.1), !dbg !93
  %5 = load i16, ptr %2, align 2, !dbg !94
  %6 = load i16, ptr %3, align 2, !dbg !95
  %7 = call zeroext i16 @builtin_rotateright16_cb(i16 noundef zeroext %5, i16 noundef zeroext %6), !dbg !96
  store i16 %7, ptr %4, align 2, !dbg !97
  %8 = load i16, ptr %2, align 2, !dbg !98
  %9 = call zeroext i16 @builtin_rotateright16_cb(i16 noundef zeroext %8, i16 noundef zeroext 0), !dbg !98
  %10 = zext i16 %9 to i32, !dbg !98
  %11 = load i16, ptr %2, align 2, !dbg !98
  %12 = zext i16 %11 to i32, !dbg !98
  %13 = icmp eq i32 %10, %12, !dbg !98
  br i1 %13, label %14, label %15, !dbg !98

14:                                               ; preds = %0
  br label %16, !dbg !98

15:                                               ; preds = %0
  call void @__assert_fail(ptr noundef @.str.2, ptr noundef @.str.3, i32 noundef 22, ptr noundef @__PRETTY_FUNCTION__.main) #4, !dbg !98
  unreachable, !dbg !98

16:                                               ; preds = %14
  %17 = load i16, ptr %2, align 2, !dbg !101
  %18 = call zeroext i16 @builtin_rotateright16_cb(i16 noundef zeroext %17, i16 noundef zeroext 16), !dbg !101
  %19 = zext i16 %18 to i32, !dbg !101
  %20 = load i16, ptr %2, align 2, !dbg !101
  %21 = zext i16 %20 to i32, !dbg !101
  %22 = icmp eq i32 %19, %21, !dbg !101
  br i1 %22, label %23, label %24, !dbg !101

23:                                               ; preds = %16
  br label %25, !dbg !101

24:                                               ; preds = %16
  call void @__assert_fail(ptr noundef @.str.4, ptr noundef @.str.3, i32 noundef 23, ptr noundef @__PRETTY_FUNCTION__.main) #4, !dbg !101
  unreachable, !dbg !101

25:                                               ; preds = %23
  %26 = load i16, ptr %4, align 2, !dbg !104
  %27 = load i16, ptr %3, align 2, !dbg !104
  %28 = zext i16 %27 to i32, !dbg !104
  %29 = and i32 %28, 15, !dbg !104
  %30 = sub i32 16, %29, !dbg !104
  %31 = trunc i32 %30 to i16, !dbg !104
  %32 = call zeroext i16 @builtin_rotateright16_cb(i16 noundef zeroext %26, i16 noundef zeroext %31), !dbg !104
  %33 = zext i16 %32 to i32, !dbg !104
  %34 = load i16, ptr %2, align 2, !dbg !104
  %35 = zext i16 %34 to i32, !dbg !104
  %36 = icmp eq i32 %33, %35, !dbg !104
  br i1 %36, label %37, label %38, !dbg !104

37:                                               ; preds = %25
  br label %39, !dbg !104

38:                                               ; preds = %25
  call void @__assert_fail(ptr noundef @.str.5, ptr noundef @.str.3, i32 noundef 24, ptr noundef @__PRETTY_FUNCTION__.main) #4, !dbg !104
  unreachable, !dbg !104

39:                                               ; preds = %37
  %40 = load i16, ptr %2, align 2, !dbg !107
  %41 = load i16, ptr %3, align 2, !dbg !107
  %42 = call zeroext i16 @builtin_rotateright16_cb(i16 noundef zeroext %40, i16 noundef zeroext %41), !dbg !107
  %43 = call zeroext i16 @builtin_rotateright16_cb(i16 noundef zeroext %42, i16 noundef zeroext 5), !dbg !107
  %44 = zext i16 %43 to i32, !dbg !107
  %45 = load i16, ptr %2, align 2, !dbg !107
  %46 = load i16, ptr %3, align 2, !dbg !107
  %47 = zext i16 %46 to i32, !dbg !107
  %48 = add i32 %47, 5, !dbg !107
  %49 = and i32 %48, 15, !dbg !107
  %50 = trunc i32 %49 to i16, !dbg !107
  %51 = call zeroext i16 @builtin_rotateright16_cb(i16 noundef zeroext %45, i16 noundef zeroext %50), !dbg !107
  %52 = zext i16 %51 to i32, !dbg !107
  %53 = icmp eq i32 %44, %52, !dbg !107
  br i1 %53, label %54, label %55, !dbg !107

54:                                               ; preds = %39
  br label %56, !dbg !107

55:                                               ; preds = %39
  call void @__assert_fail(ptr noundef @.str.6, ptr noundef @.str.3, i32 noundef 26, ptr noundef @__PRETTY_FUNCTION__.main) #4, !dbg !107
  unreachable, !dbg !107

56:                                               ; preds = %54
  %57 = load i16, ptr %2, align 2, !dbg !110
  %58 = zext i16 %57 to i32, !dbg !110
  %59 = icmp eq i32 %58, 0, !dbg !112
  br i1 %59, label %64, label %60, !dbg !113

60:                                               ; preds = %56
  %61 = load i16, ptr %2, align 2, !dbg !114
  %62 = zext i16 %61 to i32, !dbg !114
  %63 = icmp eq i32 %62, 65535, !dbg !115
  br i1 %63, label %64, label %73, !dbg !113

64:                                               ; preds = %60, %56
  %65 = load i16, ptr %4, align 2, !dbg !116
  %66 = zext i16 %65 to i32, !dbg !116
  %67 = load i16, ptr %2, align 2, !dbg !116
  %68 = zext i16 %67 to i32, !dbg !116
  %69 = icmp eq i32 %66, %68, !dbg !116
  br i1 %69, label %70, label %71, !dbg !116

70:                                               ; preds = %64
  br label %72, !dbg !116

71:                                               ; preds = %64
  call void @__assert_fail(ptr noundef @.str.7, ptr noundef @.str.3, i32 noundef 28, ptr noundef @__PRETTY_FUNCTION__.main) #4, !dbg !116
  unreachable, !dbg !116

72:                                               ; preds = %70
  br label %73, !dbg !120

73:                                               ; preds = %72, %60
  ret i32 0, !dbg !121
}

declare void @klee_make_symbolic(ptr noundef, i64 noundef, ptr noundef) #2

; Function Attrs: cold noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold noreturn nounwind }

!llvm.dbg.cu = !{!48}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 17, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/bench_17/rotr_priority_ring_klee.c", directory: "/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet", checksumkind: CSK_MD5, checksum: "918f4197d0fbab554ae5e1917a4bbff4")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 9)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 18, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 10)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 22, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 51)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 22, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 832, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 104)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 22, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 120, elements: !26)
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!26 = !{!27}
!27 = !DISubrange(count: 15)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !2, line: 23, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 52)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !2, line: 24, type: !35, isLocal: true, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 696, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 87)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(scope: null, file: !2, line: 25, type: !40, isLocal: true, isDefinition: true)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1200, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 150)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(scope: null, file: !2, line: 28, type: !45, isLocal: true, isDefinition: true)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 24)
!48 = distinct !DICompileUnit(language: DW_LANG_C11, file: !49, producer: "Ubuntu clang version 20.1.8 (0ubuntu4)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !50, globals: !57, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/src/bench_17/rotr_priority_ring_klee.c", directory: "/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet", checksumkind: CSK_MD5, checksum: "918f4197d0fbab554ae5e1917a4bbff4")
!50 = !{!51, !52}
!51 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !53, line: 25, baseType: !54)
!53 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "006a4d9ce94ea5734db820ef3fdd4790")
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !55, line: 40, baseType: !56)
!55 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "0737a53e1b85eab0e0ba9675962d13f4")
!56 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!57 = !{!0, !7, !12, !17, !22, !28, !33, !38, !43}
!58 = !{i32 7, !"Dwarf Version", i32 5}
!59 = !{i32 2, !"Debug Info Version", i32 3}
!60 = !{i32 1, !"wchar_size", i32 4}
!61 = !{i32 8, !"PIC Level", i32 2}
!62 = !{i32 7, !"PIE Level", i32 2}
!63 = !{i32 7, !"uwtable", i32 2}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"Ubuntu clang version 20.1.8 (0ubuntu4)"}
!66 = distinct !DISubprogram(name: "builtin_rotateright16_cb", scope: !2, file: !2, line: 7, type: !67, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !69)
!67 = !DISubroutineType(types: !68)
!68 = !{!52, !52, !52}
!69 = !{}
!70 = !DILocalVariable(name: "inp_mask", arg: 1, scope: !66, file: !2, line: 7, type: !52)
!71 = !DILocation(line: 7, column: 44, scope: !66)
!72 = !DILocalVariable(name: "inp_steps", arg: 2, scope: !66, file: !2, line: 7, type: !52)
!73 = !DILocation(line: 7, column: 63, scope: !66)
!74 = !DILocalVariable(name: "out_rotated", scope: !66, file: !2, line: 8, type: !52)
!75 = !DILocation(line: 8, column: 14, scope: !66)
!76 = !DILocation(line: 8, column: 52, scope: !66)
!77 = !DILocation(line: 8, column: 76, scope: !66)
!78 = !DILocation(line: 8, column: 62, scope: !66)
!79 = !DILocation(line: 8, column: 28, scope: !66)
!80 = !DILocation(line: 9, column: 12, scope: !66)
!81 = !DILocation(line: 9, column: 5, scope: !66)
!82 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 12, type: !83, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !69)
!83 = !DISubroutineType(types: !84)
!84 = !{!85}
!85 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!86 = !DILocalVariable(name: "inp_mask", scope: !82, file: !2, line: 13, type: !52)
!87 = !DILocation(line: 13, column: 14, scope: !82)
!88 = !DILocalVariable(name: "inp_steps", scope: !82, file: !2, line: 14, type: !52)
!89 = !DILocation(line: 14, column: 14, scope: !82)
!90 = !DILocalVariable(name: "out_rotated", scope: !82, file: !2, line: 15, type: !52)
!91 = !DILocation(line: 15, column: 14, scope: !82)
!92 = !DILocation(line: 17, column: 5, scope: !82)
!93 = !DILocation(line: 18, column: 5, scope: !82)
!94 = !DILocation(line: 20, column: 44, scope: !82)
!95 = !DILocation(line: 20, column: 54, scope: !82)
!96 = !DILocation(line: 20, column: 19, scope: !82)
!97 = !DILocation(line: 20, column: 17, scope: !82)
!98 = !DILocation(line: 22, column: 5, scope: !99)
!99 = distinct !DILexicalBlock(scope: !100, file: !2, line: 22, column: 5)
!100 = distinct !DILexicalBlock(scope: !82, file: !2, line: 22, column: 5)
!101 = !DILocation(line: 23, column: 5, scope: !102)
!102 = distinct !DILexicalBlock(scope: !103, file: !2, line: 23, column: 5)
!103 = distinct !DILexicalBlock(scope: !82, file: !2, line: 23, column: 5)
!104 = !DILocation(line: 24, column: 5, scope: !105)
!105 = distinct !DILexicalBlock(scope: !106, file: !2, line: 24, column: 5)
!106 = distinct !DILexicalBlock(scope: !82, file: !2, line: 24, column: 5)
!107 = !DILocation(line: 25, column: 5, scope: !108)
!108 = distinct !DILexicalBlock(scope: !109, file: !2, line: 25, column: 5)
!109 = distinct !DILexicalBlock(scope: !82, file: !2, line: 25, column: 5)
!110 = !DILocation(line: 27, column: 9, scope: !111)
!111 = distinct !DILexicalBlock(scope: !82, file: !2, line: 27, column: 9)
!112 = !DILocation(line: 27, column: 18, scope: !111)
!113 = !DILocation(line: 27, column: 29, scope: !111)
!114 = !DILocation(line: 27, column: 32, scope: !111)
!115 = !DILocation(line: 27, column: 41, scope: !111)
!116 = !DILocation(line: 28, column: 9, scope: !117)
!117 = distinct !DILexicalBlock(scope: !118, file: !2, line: 28, column: 9)
!118 = distinct !DILexicalBlock(scope: !119, file: !2, line: 28, column: 9)
!119 = distinct !DILexicalBlock(scope: !111, file: !2, line: 27, column: 53)
!120 = !DILocation(line: 29, column: 5, scope: !119)
!121 = !DILocation(line: 31, column: 5, scope: !82)
