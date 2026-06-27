; ModuleID = '/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/src/bench_16/rotl_byte_swap_bridge_klee.bc'
source_filename = "/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/src/bench_16/rotl_byte_swap_bridge_klee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"inp_word\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [40 x i8] c"out_rot8 == __builtin_bswap16(inp_word)\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [107 x i8] c"/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/src/bench_16/rotl_byte_swap_bridge_klee.c\00", align 1, !dbg !12
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1, !dbg !17
@.str.3 = private unnamed_addr constant [79 x i8] c"builtin_rotateleft16_cb(builtin_rotateleft16_cb(inp_word, 4U), 4U) == out_rot8\00", align 1, !dbg !23
@.str.4 = private unnamed_addr constant [80 x i8] c"builtin_rotateleft16_cb(inp_word, 8U) == builtin_rotateleft16_cb(inp_word, 24U)\00", align 1, !dbg !28
@.str.5 = private unnamed_addr constant [21 x i8] c"out_rot8 == inp_word\00", align 1, !dbg !33

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i16 @builtin_rotateleft16_cb(i16 noundef zeroext %0, i16 noundef zeroext %1) #0 !dbg !56 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  store i16 %0, ptr %3, align 2
    #dbg_declare(ptr %3, !63, !DIExpression(), !64)
  store i16 %1, ptr %4, align 2
    #dbg_declare(ptr %4, !65, !DIExpression(), !66)
    #dbg_declare(ptr %5, !67, !DIExpression(), !68)
  %6 = load i16, ptr %3, align 2, !dbg !69
  %7 = load i16, ptr %4, align 2, !dbg !70
  %8 = zext i16 %7 to i32, !dbg !71
  %9 = trunc i32 %8 to i16, !dbg !71
  %10 = call i16 @llvm.fshl.i16(i16 %6, i16 %6, i16 %9), !dbg !72
  store i16 %10, ptr %5, align 2, !dbg !68
  %11 = load i16, ptr %5, align 2, !dbg !73
  ret i16 %11, !dbg !74
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.fshl.i16(i16, i16, i16) #1

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
  %5 = call zeroext i16 @builtin_rotateleft16_cb(i16 noundef zeroext %4, i16 noundef zeroext 8), !dbg !85
  store i16 %5, ptr %3, align 2, !dbg !86
  %6 = load i16, ptr %3, align 2, !dbg !87
  %7 = zext i16 %6 to i32, !dbg !87
  %8 = load i16, ptr %2, align 2, !dbg !87
  %bswap.2 = shl i16 %8, 8, !dbg !87
  %bswap.1 = lshr i16 %8, 8, !dbg !87
  %bswap.i16 = or i16 %bswap.2, %bswap.1, !dbg !87
  %9 = zext i16 %bswap.i16 to i32, !dbg !87
  %10 = icmp eq i32 %7, %9, !dbg !87
  br i1 %10, label %11, label %12, !dbg !87

11:                                               ; preds = %0
  br label %13, !dbg !87

12:                                               ; preds = %0
  call void @__assert_fail(ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 20, ptr noundef @__PRETTY_FUNCTION__.main) #4, !dbg !87
  unreachable, !dbg !87

13:                                               ; preds = %11
  %14 = load i16, ptr %2, align 2, !dbg !90
  %15 = call zeroext i16 @builtin_rotateleft16_cb(i16 noundef zeroext %14, i16 noundef zeroext 4), !dbg !90
  %16 = call zeroext i16 @builtin_rotateleft16_cb(i16 noundef zeroext %15, i16 noundef zeroext 4), !dbg !90
  %17 = zext i16 %16 to i32, !dbg !90
  %18 = load i16, ptr %3, align 2, !dbg !90
  %19 = zext i16 %18 to i32, !dbg !90
  %20 = icmp eq i32 %17, %19, !dbg !90
  br i1 %20, label %21, label %22, !dbg !90

21:                                               ; preds = %13
  br label %23, !dbg !90

22:                                               ; preds = %13
  call void @__assert_fail(ptr noundef @.str.3, ptr noundef @.str.2, i32 noundef 21, ptr noundef @__PRETTY_FUNCTION__.main) #4, !dbg !90
  unreachable, !dbg !90

23:                                               ; preds = %21
  %24 = load i16, ptr %2, align 2, !dbg !93
  %25 = call zeroext i16 @builtin_rotateleft16_cb(i16 noundef zeroext %24, i16 noundef zeroext 8), !dbg !93
  %26 = zext i16 %25 to i32, !dbg !93
  %27 = load i16, ptr %2, align 2, !dbg !93
  %28 = call zeroext i16 @builtin_rotateleft16_cb(i16 noundef zeroext %27, i16 noundef zeroext 24), !dbg !93
  %29 = zext i16 %28 to i32, !dbg !93
  %30 = icmp eq i32 %26, %29, !dbg !93
  br i1 %30, label %31, label %32, !dbg !93

31:                                               ; preds = %23
  br label %33, !dbg !93

32:                                               ; preds = %23
  call void @__assert_fail(ptr noundef @.str.4, ptr noundef @.str.2, i32 noundef 22, ptr noundef @__PRETTY_FUNCTION__.main) #4, !dbg !93
  unreachable, !dbg !93

33:                                               ; preds = %31
  %34 = load i16, ptr %2, align 2, !dbg !96
  %35 = trunc i16 %34 to i8, !dbg !98
  %36 = zext i8 %35 to i32, !dbg !98
  %37 = load i16, ptr %2, align 2, !dbg !99
  %38 = zext i16 %37 to i32, !dbg !99
  %39 = ashr i32 %38, 8, !dbg !100
  %40 = trunc i32 %39 to i8, !dbg !101
  %41 = zext i8 %40 to i32, !dbg !101
  %42 = icmp eq i32 %36, %41, !dbg !102
  br i1 %42, label %43, label %52, !dbg !102

43:                                               ; preds = %33
  %44 = load i16, ptr %3, align 2, !dbg !103
  %45 = zext i16 %44 to i32, !dbg !103
  %46 = load i16, ptr %2, align 2, !dbg !103
  %47 = zext i16 %46 to i32, !dbg !103
  %48 = icmp eq i32 %45, %47, !dbg !103
  br i1 %48, label %49, label %50, !dbg !103

49:                                               ; preds = %43
  br label %51, !dbg !103

50:                                               ; preds = %43
  call void @__assert_fail(ptr noundef @.str.5, ptr noundef @.str.2, i32 noundef 24, ptr noundef @__PRETTY_FUNCTION__.main) #4, !dbg !103
  unreachable, !dbg !103

51:                                               ; preds = %49
  br label %52, !dbg !107

52:                                               ; preds = %51, %33
  ret i32 0, !dbg !108
}

declare void @klee_make_symbolic(ptr noundef, i64 noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #1

; Function Attrs: cold noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold noreturn nounwind }

!llvm.dbg.cu = !{!38}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 16, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/bench_16/rotl_byte_swap_bridge_klee.c", directory: "/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet", checksumkind: CSK_MD5, checksum: "f2b8023b581b1856711dd675bc275645")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 9)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 20, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 40)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 20, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 856, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 107)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 20, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 120, elements: !21)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!21 = !{!22}
!22 = !DISubrange(count: 15)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !2, line: 21, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 632, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 79)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !2, line: 22, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 640, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 80)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !2, line: 24, type: !35, isLocal: true, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 21)
!38 = distinct !DICompileUnit(language: DW_LANG_C11, file: !39, producer: "Ubuntu clang version 20.1.8 (0ubuntu4)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !40, globals: !47, splitDebugInlining: false, nameTableKind: None)
!39 = !DIFile(filename: "/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/src/bench_16/rotl_byte_swap_bridge_klee.c", directory: "/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet", checksumkind: CSK_MD5, checksum: "f2b8023b581b1856711dd675bc275645")
!40 = !{!41, !42}
!41 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !43, line: 24, baseType: !44)
!43 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "006a4d9ce94ea5734db820ef3fdd4790")
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !45, line: 38, baseType: !46)
!45 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "0737a53e1b85eab0e0ba9675962d13f4")
!46 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!47 = !{!0, !7, !12, !17, !23, !28, !33}
!48 = !{i32 7, !"Dwarf Version", i32 5}
!49 = !{i32 2, !"Debug Info Version", i32 3}
!50 = !{i32 1, !"wchar_size", i32 4}
!51 = !{i32 8, !"PIC Level", i32 2}
!52 = !{i32 7, !"PIE Level", i32 2}
!53 = !{i32 7, !"uwtable", i32 2}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"Ubuntu clang version 20.1.8 (0ubuntu4)"}
!56 = distinct !DISubprogram(name: "builtin_rotateleft16_cb", scope: !2, file: !2, line: 7, type: !57, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !38, retainedNodes: !62)
!57 = !DISubroutineType(types: !58)
!58 = !{!59, !59, !59}
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !43, line: 25, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !45, line: 40, baseType: !61)
!61 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!62 = !{}
!63 = !DILocalVariable(name: "inp_word", arg: 1, scope: !56, file: !2, line: 7, type: !59)
!64 = !DILocation(line: 7, column: 43, scope: !56)
!65 = !DILocalVariable(name: "inp_steps", arg: 2, scope: !56, file: !2, line: 7, type: !59)
!66 = !DILocation(line: 7, column: 62, scope: !56)
!67 = !DILocalVariable(name: "out_rotated", scope: !56, file: !2, line: 8, type: !59)
!68 = !DILocation(line: 8, column: 14, scope: !56)
!69 = !DILocation(line: 8, column: 51, scope: !56)
!70 = !DILocation(line: 8, column: 75, scope: !56)
!71 = !DILocation(line: 8, column: 61, scope: !56)
!72 = !DILocation(line: 8, column: 28, scope: !56)
!73 = !DILocation(line: 9, column: 12, scope: !56)
!74 = !DILocation(line: 9, column: 5, scope: !56)
!75 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 12, type: !76, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !38, retainedNodes: !62)
!76 = !DISubroutineType(types: !77)
!77 = !{!78}
!78 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!79 = !DILocalVariable(name: "inp_word", scope: !75, file: !2, line: 13, type: !59)
!80 = !DILocation(line: 13, column: 14, scope: !75)
!81 = !DILocalVariable(name: "out_rot8", scope: !75, file: !2, line: 14, type: !59)
!82 = !DILocation(line: 14, column: 14, scope: !75)
!83 = !DILocation(line: 16, column: 5, scope: !75)
!84 = !DILocation(line: 18, column: 40, scope: !75)
!85 = !DILocation(line: 18, column: 16, scope: !75)
!86 = !DILocation(line: 18, column: 14, scope: !75)
!87 = !DILocation(line: 20, column: 5, scope: !88)
!88 = distinct !DILexicalBlock(scope: !89, file: !2, line: 20, column: 5)
!89 = distinct !DILexicalBlock(scope: !75, file: !2, line: 20, column: 5)
!90 = !DILocation(line: 21, column: 5, scope: !91)
!91 = distinct !DILexicalBlock(scope: !92, file: !2, line: 21, column: 5)
!92 = distinct !DILexicalBlock(scope: !75, file: !2, line: 21, column: 5)
!93 = !DILocation(line: 22, column: 5, scope: !94)
!94 = distinct !DILexicalBlock(scope: !95, file: !2, line: 22, column: 5)
!95 = distinct !DILexicalBlock(scope: !75, file: !2, line: 22, column: 5)
!96 = !DILocation(line: 23, column: 18, scope: !97)
!97 = distinct !DILexicalBlock(scope: !75, file: !2, line: 23, column: 9)
!98 = !DILocation(line: 23, column: 9, scope: !97)
!99 = !DILocation(line: 23, column: 40, scope: !97)
!100 = !DILocation(line: 23, column: 49, scope: !97)
!101 = !DILocation(line: 23, column: 30, scope: !97)
!102 = !DILocation(line: 23, column: 27, scope: !97)
!103 = !DILocation(line: 24, column: 9, scope: !104)
!104 = distinct !DILexicalBlock(scope: !105, file: !2, line: 24, column: 9)
!105 = distinct !DILexicalBlock(scope: !106, file: !2, line: 24, column: 9)
!106 = distinct !DILexicalBlock(scope: !97, file: !2, line: 23, column: 56)
!107 = !DILocation(line: 25, column: 5, scope: !106)
!108 = !DILocation(line: 27, column: 5, scope: !75)
