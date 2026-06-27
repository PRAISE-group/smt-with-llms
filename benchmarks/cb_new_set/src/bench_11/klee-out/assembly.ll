; ModuleID = '/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/src/bench_11/bswap16_endian_word_klee.bc'
source_filename = "/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/src/bench_11/bswap16_endian_word_klee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"inp_word\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [44 x i8] c"builtin_bswap16_cb(out_swapped) == inp_word\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [105 x i8] c"/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/src/bench_11/bswap16_endian_word_klee.c\00", align 1, !dbg !12
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1, !dbg !17
@.str.3 = private unnamed_addr constant [63 x i8] c"(uint16_t)(out_swapped >> 8) == (uint16_t)(inp_word & 0x00FFU)\00", align 1, !dbg !23
@.str.4 = private unnamed_addr constant [63 x i8] c"(uint16_t)(out_swapped & 0x00FFU) == (uint16_t)(inp_word >> 8)\00", align 1, !dbg !28
@.str.5 = private unnamed_addr constant [24 x i8] c"out_swapped == inp_word\00", align 1, !dbg !30

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i16 @builtin_bswap16_cb(i16 noundef zeroext %0) #0 !dbg !52 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  store i16 %0, ptr %2, align 2
    #dbg_declare(ptr %2, !56, !DIExpression(), !57)
    #dbg_declare(ptr %3, !58, !DIExpression(), !59)
  %4 = load i16, ptr %2, align 2, !dbg !60
  %bswap.2 = shl i16 %4, 8, !dbg !61
  %bswap.1 = lshr i16 %4, 8, !dbg !61
  %bswap.i16 = or i16 %bswap.2, %bswap.1, !dbg !61
  store i16 %bswap.i16, ptr %3, align 2, !dbg !59
  %5 = load i16, ptr %3, align 2, !dbg !62
  ret i16 %5, !dbg !63
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !dbg !64 {
  %1 = alloca i32, align 4
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  store i32 0, ptr %1, align 4
    #dbg_declare(ptr %2, !68, !DIExpression(), !69)
  call void @klee_make_symbolic(ptr noundef %2, i64 noundef 2, ptr noundef @.str), !dbg !70
    #dbg_declare(ptr %3, !71, !DIExpression(), !72)
  %4 = load i16, ptr %2, align 2, !dbg !73
  %5 = call zeroext i16 @builtin_bswap16_cb(i16 noundef zeroext %4), !dbg !74
  store i16 %5, ptr %3, align 2, !dbg !72
  %6 = load i16, ptr %3, align 2, !dbg !75
  %7 = call zeroext i16 @builtin_bswap16_cb(i16 noundef zeroext %6), !dbg !75
  %8 = zext i16 %7 to i32, !dbg !75
  %9 = load i16, ptr %2, align 2, !dbg !75
  %10 = zext i16 %9 to i32, !dbg !75
  %11 = icmp eq i32 %8, %10, !dbg !75
  br i1 %11, label %12, label %13, !dbg !75

12:                                               ; preds = %0
  br label %14, !dbg !75

13:                                               ; preds = %0
  call void @__assert_fail(ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 19, ptr noundef @__PRETTY_FUNCTION__.main) #4, !dbg !75
  unreachable, !dbg !75

14:                                               ; preds = %12
  %15 = load i16, ptr %3, align 2, !dbg !78
  %16 = zext i16 %15 to i32, !dbg !78
  %17 = ashr i32 %16, 8, !dbg !78
  %18 = trunc i32 %17 to i16, !dbg !78
  %19 = zext i16 %18 to i32, !dbg !78
  %20 = load i16, ptr %2, align 2, !dbg !78
  %21 = zext i16 %20 to i32, !dbg !78
  %22 = and i32 %21, 255, !dbg !78
  %23 = trunc i32 %22 to i16, !dbg !78
  %24 = zext i16 %23 to i32, !dbg !78
  %25 = icmp eq i32 %19, %24, !dbg !78
  br i1 %25, label %26, label %27, !dbg !78

26:                                               ; preds = %14
  br label %28, !dbg !78

27:                                               ; preds = %14
  call void @__assert_fail(ptr noundef @.str.3, ptr noundef @.str.2, i32 noundef 20, ptr noundef @__PRETTY_FUNCTION__.main) #4, !dbg !78
  unreachable, !dbg !78

28:                                               ; preds = %26
  %29 = load i16, ptr %3, align 2, !dbg !81
  %30 = zext i16 %29 to i32, !dbg !81
  %31 = and i32 %30, 255, !dbg !81
  %32 = trunc i32 %31 to i16, !dbg !81
  %33 = zext i16 %32 to i32, !dbg !81
  %34 = load i16, ptr %2, align 2, !dbg !81
  %35 = zext i16 %34 to i32, !dbg !81
  %36 = ashr i32 %35, 8, !dbg !81
  %37 = trunc i32 %36 to i16, !dbg !81
  %38 = zext i16 %37 to i32, !dbg !81
  %39 = icmp eq i32 %33, %38, !dbg !81
  br i1 %39, label %40, label %41, !dbg !81

40:                                               ; preds = %28
  br label %42, !dbg !81

41:                                               ; preds = %28
  call void @__assert_fail(ptr noundef @.str.4, ptr noundef @.str.2, i32 noundef 21, ptr noundef @__PRETTY_FUNCTION__.main) #4, !dbg !81
  unreachable, !dbg !81

42:                                               ; preds = %40
  %43 = load i16, ptr %2, align 2, !dbg !84
  %44 = zext i16 %43 to i32, !dbg !84
  %45 = and i32 %44, 255, !dbg !86
  %46 = load i16, ptr %2, align 2, !dbg !87
  %47 = zext i16 %46 to i32, !dbg !87
  %48 = ashr i32 %47, 8, !dbg !88
  %49 = icmp eq i32 %45, %48, !dbg !89
  br i1 %49, label %50, label %59, !dbg !89

50:                                               ; preds = %42
  %51 = load i16, ptr %3, align 2, !dbg !90
  %52 = zext i16 %51 to i32, !dbg !90
  %53 = load i16, ptr %2, align 2, !dbg !90
  %54 = zext i16 %53 to i32, !dbg !90
  %55 = icmp eq i32 %52, %54, !dbg !90
  br i1 %55, label %56, label %57, !dbg !90

56:                                               ; preds = %50
  br label %58, !dbg !90

57:                                               ; preds = %50
  call void @__assert_fail(ptr noundef @.str.5, ptr noundef @.str.2, i32 noundef 23, ptr noundef @__PRETTY_FUNCTION__.main) #4, !dbg !90
  unreachable, !dbg !90

58:                                               ; preds = %56
  br label %59, !dbg !94

59:                                               ; preds = %58, %42
  ret i32 0, !dbg !95
}

declare void @klee_make_symbolic(ptr noundef, i64 noundef, ptr noundef) #2

; Function Attrs: cold noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold noreturn nounwind }

!llvm.dbg.cu = !{!35}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 15, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/bench_11/bswap16_endian_word_klee.c", directory: "/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet", checksumkind: CSK_MD5, checksum: "fc18b847aee938a0788e160b31afcc45")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 9)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 19, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 44)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 19, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 840, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 105)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 19, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 120, elements: !21)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!21 = !{!22}
!22 = !DISubrange(count: 15)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !2, line: 20, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 504, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 63)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !2, line: 21, type: !25, isLocal: true, isDefinition: true)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(scope: null, file: !2, line: 23, type: !32, isLocal: true, isDefinition: true)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !33)
!33 = !{!34}
!34 = !DISubrange(count: 24)
!35 = distinct !DICompileUnit(language: DW_LANG_C11, file: !36, producer: "Ubuntu clang version 20.1.8 (0ubuntu4)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !37, globals: !43, splitDebugInlining: false, nameTableKind: None)
!36 = !DIFile(filename: "/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/src/bench_11/bswap16_endian_word_klee.c", directory: "/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet", checksumkind: CSK_MD5, checksum: "fc18b847aee938a0788e160b31afcc45")
!37 = !{!38}
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !39, line: 25, baseType: !40)
!39 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "006a4d9ce94ea5734db820ef3fdd4790")
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !41, line: 40, baseType: !42)
!41 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "0737a53e1b85eab0e0ba9675962d13f4")
!42 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!43 = !{!0, !7, !12, !17, !23, !28, !30}
!44 = !{i32 7, !"Dwarf Version", i32 5}
!45 = !{i32 2, !"Debug Info Version", i32 3}
!46 = !{i32 1, !"wchar_size", i32 4}
!47 = !{i32 8, !"PIC Level", i32 2}
!48 = !{i32 7, !"PIE Level", i32 2}
!49 = !{i32 7, !"uwtable", i32 2}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"Ubuntu clang version 20.1.8 (0ubuntu4)"}
!52 = distinct !DISubprogram(name: "builtin_bswap16_cb", scope: !2, file: !2, line: 7, type: !53, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !55)
!53 = !DISubroutineType(types: !54)
!54 = !{!38, !38}
!55 = !{}
!56 = !DILocalVariable(name: "inp_word", arg: 1, scope: !52, file: !2, line: 7, type: !38)
!57 = !DILocation(line: 7, column: 38, scope: !52)
!58 = !DILocalVariable(name: "out_swapped", scope: !52, file: !2, line: 8, type: !38)
!59 = !DILocation(line: 8, column: 14, scope: !52)
!60 = !DILocation(line: 8, column: 46, scope: !52)
!61 = !DILocation(line: 8, column: 28, scope: !52)
!62 = !DILocation(line: 9, column: 12, scope: !52)
!63 = !DILocation(line: 9, column: 5, scope: !52)
!64 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 12, type: !65, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !55)
!65 = !DISubroutineType(types: !66)
!66 = !{!67}
!67 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!68 = !DILocalVariable(name: "inp_word", scope: !64, file: !2, line: 13, type: !38)
!69 = !DILocation(line: 13, column: 14, scope: !64)
!70 = !DILocation(line: 15, column: 5, scope: !64)
!71 = !DILocalVariable(name: "out_swapped", scope: !64, file: !2, line: 17, type: !38)
!72 = !DILocation(line: 17, column: 14, scope: !64)
!73 = !DILocation(line: 17, column: 47, scope: !64)
!74 = !DILocation(line: 17, column: 28, scope: !64)
!75 = !DILocation(line: 19, column: 5, scope: !76)
!76 = distinct !DILexicalBlock(scope: !77, file: !2, line: 19, column: 5)
!77 = distinct !DILexicalBlock(scope: !64, file: !2, line: 19, column: 5)
!78 = !DILocation(line: 20, column: 5, scope: !79)
!79 = distinct !DILexicalBlock(scope: !80, file: !2, line: 20, column: 5)
!80 = distinct !DILexicalBlock(scope: !64, file: !2, line: 20, column: 5)
!81 = !DILocation(line: 21, column: 5, scope: !82)
!82 = distinct !DILexicalBlock(scope: !83, file: !2, line: 21, column: 5)
!83 = distinct !DILexicalBlock(scope: !64, file: !2, line: 21, column: 5)
!84 = !DILocation(line: 22, column: 10, scope: !85)
!85 = distinct !DILexicalBlock(scope: !64, file: !2, line: 22, column: 9)
!86 = !DILocation(line: 22, column: 19, scope: !85)
!87 = !DILocation(line: 22, column: 34, scope: !85)
!88 = !DILocation(line: 22, column: 43, scope: !85)
!89 = !DILocation(line: 22, column: 30, scope: !85)
!90 = !DILocation(line: 23, column: 9, scope: !91)
!91 = distinct !DILexicalBlock(scope: !92, file: !2, line: 23, column: 9)
!92 = distinct !DILexicalBlock(scope: !93, file: !2, line: 23, column: 9)
!93 = distinct !DILexicalBlock(scope: !85, file: !2, line: 22, column: 50)
!94 = !DILocation(line: 24, column: 5, scope: !93)
!95 = !DILocation(line: 26, column: 5, scope: !64)
