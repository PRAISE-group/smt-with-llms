; ModuleID = '/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/src/bench_13/bswap32_header_swap_klee.bc'
source_filename = "/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/src/bench_13/bswap32_header_swap_klee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"inp_hi\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [7 x i8] c"inp_lo\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [45 x i8] c"__builtin_bswap32(out_swapped) == inp_header\00", align 1, !dbg !9
@.str.3 = private unnamed_addr constant [105 x i8] c"/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/src/bench_13/bswap32_header_swap_klee.c\00", align 1, !dbg !14
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1, !dbg !19
@.str.4 = private unnamed_addr constant [60 x i8] c"(uint8_t)(out_swapped >> 24) == (uint8_t)(inp_lo & 0x00FFU)\00", align 1, !dbg !25
@.str.5 = private unnamed_addr constant [55 x i8] c"(uint8_t)(out_swapped >> 16) == (uint8_t)(inp_lo >> 8)\00", align 1, !dbg !30
@.str.6 = private unnamed_addr constant [59 x i8] c"(uint8_t)(out_swapped >> 8) == (uint8_t)(inp_hi & 0x00FFU)\00", align 1, !dbg !35
@.str.7 = private unnamed_addr constant [47 x i8] c"(uint8_t)out_swapped == (uint8_t)(inp_hi >> 8)\00", align 1, !dbg !40

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @builtin_bswap32_cb(i16 noundef zeroext %0, i16 noundef zeroext %1) #0 !dbg !65 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i16 %0, ptr %3, align 2
    #dbg_declare(ptr %3, !72, !DIExpression(), !73)
  store i16 %1, ptr %4, align 2
    #dbg_declare(ptr %4, !74, !DIExpression(), !75)
    #dbg_declare(ptr %5, !76, !DIExpression(), !77)
  %7 = load i16, ptr %3, align 2, !dbg !78
  %8 = zext i16 %7 to i32, !dbg !79
  %9 = shl i32 %8, 16, !dbg !80
  %10 = load i16, ptr %4, align 2, !dbg !81
  %11 = zext i16 %10 to i32, !dbg !82
  %12 = or i32 %9, %11, !dbg !83
  store i32 %12, ptr %5, align 4, !dbg !77
    #dbg_declare(ptr %6, !84, !DIExpression(), !85)
  %13 = load i32, ptr %5, align 4, !dbg !86
  %bswap.4 = shl i32 %13, 24, !dbg !87
  %bswap.3 = shl i32 %13, 8, !dbg !87
  %bswap.2 = lshr i32 %13, 8, !dbg !87
  %bswap.1 = lshr i32 %13, 24, !dbg !87
  %bswap.and3 = and i32 %bswap.3, 16711680, !dbg !87
  %bswap.and2 = and i32 %bswap.2, 65280, !dbg !87
  %bswap.or1 = or i32 %bswap.4, %bswap.and3, !dbg !87
  %bswap.or2 = or i32 %bswap.and2, %bswap.1, !dbg !87
  %bswap.i32 = or i32 %bswap.or1, %bswap.or2, !dbg !87
  store i32 %bswap.i32, ptr %6, align 4, !dbg !85
  %14 = load i32, ptr %6, align 4, !dbg !88
  ret i32 %14, !dbg !89
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !dbg !90 {
  %1 = alloca i32, align 4
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, ptr %1, align 4
    #dbg_declare(ptr %2, !94, !DIExpression(), !95)
    #dbg_declare(ptr %3, !96, !DIExpression(), !97)
  call void @klee_make_symbolic(ptr noundef %2, i64 noundef 2, ptr noundef @.str), !dbg !98
  call void @klee_make_symbolic(ptr noundef %3, i64 noundef 2, ptr noundef @.str.1), !dbg !99
    #dbg_declare(ptr %4, !100, !DIExpression(), !101)
  %6 = load i16, ptr %2, align 2, !dbg !102
  %7 = zext i16 %6 to i32, !dbg !103
  %8 = shl i32 %7, 16, !dbg !104
  %9 = load i16, ptr %3, align 2, !dbg !105
  %10 = zext i16 %9 to i32, !dbg !106
  %11 = or i32 %8, %10, !dbg !107
  store i32 %11, ptr %4, align 4, !dbg !101
    #dbg_declare(ptr %5, !108, !DIExpression(), !109)
  %12 = load i16, ptr %2, align 2, !dbg !110
  %13 = load i16, ptr %3, align 2, !dbg !111
  %14 = call i32 @builtin_bswap32_cb(i16 noundef zeroext %12, i16 noundef zeroext %13), !dbg !112
  store i32 %14, ptr %5, align 4, !dbg !109
  %15 = load i32, ptr %5, align 4, !dbg !113
  %bswap.4 = shl i32 %15, 24, !dbg !113
  %bswap.3 = shl i32 %15, 8, !dbg !113
  %bswap.2 = lshr i32 %15, 8, !dbg !113
  %bswap.1 = lshr i32 %15, 24, !dbg !113
  %bswap.and3 = and i32 %bswap.3, 16711680, !dbg !113
  %bswap.and2 = and i32 %bswap.2, 65280, !dbg !113
  %bswap.or1 = or i32 %bswap.4, %bswap.and3, !dbg !113
  %bswap.or2 = or i32 %bswap.and2, %bswap.1, !dbg !113
  %bswap.i32 = or i32 %bswap.or1, %bswap.or2, !dbg !113
  %16 = load i32, ptr %4, align 4, !dbg !113
  %17 = icmp eq i32 %bswap.i32, %16, !dbg !113
  br i1 %17, label %18, label %19, !dbg !113

18:                                               ; preds = %0
  br label %20, !dbg !113

19:                                               ; preds = %0
  call void @__assert_fail(ptr noundef @.str.2, ptr noundef @.str.3, i32 noundef 23, ptr noundef @__PRETTY_FUNCTION__.main) #4, !dbg !113
  unreachable, !dbg !113

20:                                               ; preds = %18
  %21 = load i32, ptr %5, align 4, !dbg !116
  %22 = lshr i32 %21, 24, !dbg !116
  %23 = trunc i32 %22 to i8, !dbg !116
  %24 = zext i8 %23 to i32, !dbg !116
  %25 = load i16, ptr %3, align 2, !dbg !116
  %26 = zext i16 %25 to i32, !dbg !116
  %27 = and i32 %26, 255, !dbg !116
  %28 = trunc i32 %27 to i8, !dbg !116
  %29 = zext i8 %28 to i32, !dbg !116
  %30 = icmp eq i32 %24, %29, !dbg !116
  br i1 %30, label %31, label %32, !dbg !116

31:                                               ; preds = %20
  br label %33, !dbg !116

32:                                               ; preds = %20
  call void @__assert_fail(ptr noundef @.str.4, ptr noundef @.str.3, i32 noundef 24, ptr noundef @__PRETTY_FUNCTION__.main) #4, !dbg !116
  unreachable, !dbg !116

33:                                               ; preds = %31
  %34 = load i32, ptr %5, align 4, !dbg !119
  %35 = lshr i32 %34, 16, !dbg !119
  %36 = trunc i32 %35 to i8, !dbg !119
  %37 = zext i8 %36 to i32, !dbg !119
  %38 = load i16, ptr %3, align 2, !dbg !119
  %39 = zext i16 %38 to i32, !dbg !119
  %40 = ashr i32 %39, 8, !dbg !119
  %41 = trunc i32 %40 to i8, !dbg !119
  %42 = zext i8 %41 to i32, !dbg !119
  %43 = icmp eq i32 %37, %42, !dbg !119
  br i1 %43, label %44, label %45, !dbg !119

44:                                               ; preds = %33
  br label %46, !dbg !119

45:                                               ; preds = %33
  call void @__assert_fail(ptr noundef @.str.5, ptr noundef @.str.3, i32 noundef 25, ptr noundef @__PRETTY_FUNCTION__.main) #4, !dbg !119
  unreachable, !dbg !119

46:                                               ; preds = %44
  %47 = load i32, ptr %5, align 4, !dbg !122
  %48 = lshr i32 %47, 8, !dbg !122
  %49 = trunc i32 %48 to i8, !dbg !122
  %50 = zext i8 %49 to i32, !dbg !122
  %51 = load i16, ptr %2, align 2, !dbg !122
  %52 = zext i16 %51 to i32, !dbg !122
  %53 = and i32 %52, 255, !dbg !122
  %54 = trunc i32 %53 to i8, !dbg !122
  %55 = zext i8 %54 to i32, !dbg !122
  %56 = icmp eq i32 %50, %55, !dbg !122
  br i1 %56, label %57, label %58, !dbg !122

57:                                               ; preds = %46
  br label %59, !dbg !122

58:                                               ; preds = %46
  call void @__assert_fail(ptr noundef @.str.6, ptr noundef @.str.3, i32 noundef 26, ptr noundef @__PRETTY_FUNCTION__.main) #4, !dbg !122
  unreachable, !dbg !122

59:                                               ; preds = %57
  %60 = load i32, ptr %5, align 4, !dbg !125
  %61 = trunc i32 %60 to i8, !dbg !125
  %62 = zext i8 %61 to i32, !dbg !125
  %63 = load i16, ptr %2, align 2, !dbg !125
  %64 = zext i16 %63 to i32, !dbg !125
  %65 = ashr i32 %64, 8, !dbg !125
  %66 = trunc i32 %65 to i8, !dbg !125
  %67 = zext i8 %66 to i32, !dbg !125
  %68 = icmp eq i32 %62, %67, !dbg !125
  br i1 %68, label %69, label %70, !dbg !125

69:                                               ; preds = %59
  br label %71, !dbg !125

70:                                               ; preds = %59
  call void @__assert_fail(ptr noundef @.str.7, ptr noundef @.str.3, i32 noundef 27, ptr noundef @__PRETTY_FUNCTION__.main) #4, !dbg !125
  unreachable, !dbg !125

71:                                               ; preds = %69
  ret i32 0, !dbg !128
}

declare void @klee_make_symbolic(ptr noundef, i64 noundef, ptr noundef) #2

; Function Attrs: cold noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold noreturn nounwind }

!llvm.dbg.cu = !{!45}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 17, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/bench_13/bswap32_header_swap_klee.c", directory: "/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet", checksumkind: CSK_MD5, checksum: "b2151c4458b6bc169ec92a58dc3a46a3")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 7)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 18, type: !3, isLocal: true, isDefinition: true)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(scope: null, file: !2, line: 23, type: !11, isLocal: true, isDefinition: true)
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 360, elements: !12)
!12 = !{!13}
!13 = !DISubrange(count: 45)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(scope: null, file: !2, line: 23, type: !16, isLocal: true, isDefinition: true)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 840, elements: !17)
!17 = !{!18}
!18 = !DISubrange(count: 105)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(scope: null, file: !2, line: 23, type: !21, isLocal: true, isDefinition: true)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 120, elements: !23)
!22 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!23 = !{!24}
!24 = !DISubrange(count: 15)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(scope: null, file: !2, line: 24, type: !27, isLocal: true, isDefinition: true)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: 60)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(scope: null, file: !2, line: 25, type: !32, isLocal: true, isDefinition: true)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 440, elements: !33)
!33 = !{!34}
!34 = !DISubrange(count: 55)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(scope: null, file: !2, line: 26, type: !37, isLocal: true, isDefinition: true)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 472, elements: !38)
!38 = !{!39}
!39 = !DISubrange(count: 59)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(scope: null, file: !2, line: 27, type: !42, isLocal: true, isDefinition: true)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 376, elements: !43)
!43 = !{!44}
!44 = !DISubrange(count: 47)
!45 = distinct !DICompileUnit(language: DW_LANG_C11, file: !46, producer: "Ubuntu clang version 20.1.8 (0ubuntu4)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !47, globals: !56, splitDebugInlining: false, nameTableKind: None)
!46 = !DIFile(filename: "/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/src/bench_13/bswap32_header_swap_klee.c", directory: "/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet", checksumkind: CSK_MD5, checksum: "b2151c4458b6bc169ec92a58dc3a46a3")
!47 = !{!48, !53}
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !49, line: 26, baseType: !50)
!49 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "006a4d9ce94ea5734db820ef3fdd4790")
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !51, line: 42, baseType: !52)
!51 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "0737a53e1b85eab0e0ba9675962d13f4")
!52 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !49, line: 24, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !51, line: 38, baseType: !55)
!55 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!56 = !{!0, !7, !9, !14, !19, !25, !30, !35, !40}
!57 = !{i32 7, !"Dwarf Version", i32 5}
!58 = !{i32 2, !"Debug Info Version", i32 3}
!59 = !{i32 1, !"wchar_size", i32 4}
!60 = !{i32 8, !"PIC Level", i32 2}
!61 = !{i32 7, !"PIE Level", i32 2}
!62 = !{i32 7, !"uwtable", i32 2}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"Ubuntu clang version 20.1.8 (0ubuntu4)"}
!65 = distinct !DISubprogram(name: "builtin_bswap32_cb", scope: !2, file: !2, line: 7, type: !66, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !45, retainedNodes: !71)
!66 = !DISubroutineType(types: !67)
!67 = !{!48, !68, !68}
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !49, line: 25, baseType: !69)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !51, line: 40, baseType: !70)
!70 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!71 = !{}
!72 = !DILocalVariable(name: "inp_hi", arg: 1, scope: !65, file: !2, line: 7, type: !68)
!73 = !DILocation(line: 7, column: 38, scope: !65)
!74 = !DILocalVariable(name: "inp_lo", arg: 2, scope: !65, file: !2, line: 7, type: !68)
!75 = !DILocation(line: 7, column: 55, scope: !65)
!76 = !DILocalVariable(name: "inp_header", scope: !65, file: !2, line: 8, type: !48)
!77 = !DILocation(line: 8, column: 14, scope: !65)
!78 = !DILocation(line: 8, column: 38, scope: !65)
!79 = !DILocation(line: 8, column: 28, scope: !65)
!80 = !DILocation(line: 8, column: 45, scope: !65)
!81 = !DILocation(line: 8, column: 64, scope: !65)
!82 = !DILocation(line: 8, column: 54, scope: !65)
!83 = !DILocation(line: 8, column: 52, scope: !65)
!84 = !DILocalVariable(name: "out_swapped", scope: !65, file: !2, line: 9, type: !48)
!85 = !DILocation(line: 9, column: 14, scope: !65)
!86 = !DILocation(line: 9, column: 46, scope: !65)
!87 = !DILocation(line: 9, column: 28, scope: !65)
!88 = !DILocation(line: 10, column: 12, scope: !65)
!89 = !DILocation(line: 10, column: 5, scope: !65)
!90 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 13, type: !91, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !45, retainedNodes: !71)
!91 = !DISubroutineType(types: !92)
!92 = !{!93}
!93 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!94 = !DILocalVariable(name: "inp_hi", scope: !90, file: !2, line: 14, type: !68)
!95 = !DILocation(line: 14, column: 14, scope: !90)
!96 = !DILocalVariable(name: "inp_lo", scope: !90, file: !2, line: 15, type: !68)
!97 = !DILocation(line: 15, column: 14, scope: !90)
!98 = !DILocation(line: 17, column: 5, scope: !90)
!99 = !DILocation(line: 18, column: 5, scope: !90)
!100 = !DILocalVariable(name: "inp_header", scope: !90, file: !2, line: 20, type: !48)
!101 = !DILocation(line: 20, column: 14, scope: !90)
!102 = !DILocation(line: 20, column: 38, scope: !90)
!103 = !DILocation(line: 20, column: 28, scope: !90)
!104 = !DILocation(line: 20, column: 45, scope: !90)
!105 = !DILocation(line: 20, column: 64, scope: !90)
!106 = !DILocation(line: 20, column: 54, scope: !90)
!107 = !DILocation(line: 20, column: 52, scope: !90)
!108 = !DILocalVariable(name: "out_swapped", scope: !90, file: !2, line: 21, type: !48)
!109 = !DILocation(line: 21, column: 14, scope: !90)
!110 = !DILocation(line: 21, column: 47, scope: !90)
!111 = !DILocation(line: 21, column: 55, scope: !90)
!112 = !DILocation(line: 21, column: 28, scope: !90)
!113 = !DILocation(line: 23, column: 5, scope: !114)
!114 = distinct !DILexicalBlock(scope: !115, file: !2, line: 23, column: 5)
!115 = distinct !DILexicalBlock(scope: !90, file: !2, line: 23, column: 5)
!116 = !DILocation(line: 24, column: 5, scope: !117)
!117 = distinct !DILexicalBlock(scope: !118, file: !2, line: 24, column: 5)
!118 = distinct !DILexicalBlock(scope: !90, file: !2, line: 24, column: 5)
!119 = !DILocation(line: 25, column: 5, scope: !120)
!120 = distinct !DILexicalBlock(scope: !121, file: !2, line: 25, column: 5)
!121 = distinct !DILexicalBlock(scope: !90, file: !2, line: 25, column: 5)
!122 = !DILocation(line: 26, column: 5, scope: !123)
!123 = distinct !DILexicalBlock(scope: !124, file: !2, line: 26, column: 5)
!124 = distinct !DILexicalBlock(scope: !90, file: !2, line: 26, column: 5)
!125 = !DILocation(line: 27, column: 5, scope: !126)
!126 = distinct !DILexicalBlock(scope: !127, file: !2, line: 27, column: 5)
!127 = distinct !DILexicalBlock(scope: !90, file: !2, line: 27, column: 5)
!128 = !DILocation(line: 29, column: 5, scope: !90)
