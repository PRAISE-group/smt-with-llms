; ModuleID = '/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/src/bench_12/bswap16_sensor_register_klee.bc'
source_filename = "/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/src/bench_12/bswap16_sensor_register_klee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"inp_register\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [48 x i8] c"builtin_bswap16_cb(out_network) == inp_register\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [109 x i8] c"/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/src/bench_12/bswap16_sensor_register_klee.c\00", align 1, !dbg !12
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1, !dbg !17
@.str.3 = private unnamed_addr constant [92 x i8] c"builtin_bswap16_cb((uint16_t)(inp_register ^ 0x00FFU)) == (uint16_t)(out_network ^ 0xFF00U)\00", align 1, !dbg !23
@.str.4 = private unnamed_addr constant [28 x i8] c"out_network == inp_register\00", align 1, !dbg !28

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i16 @builtin_bswap16_cb(i16 noundef zeroext %0) #0 !dbg !50 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  store i16 %0, ptr %2, align 2
    #dbg_declare(ptr %2, !54, !DIExpression(), !55)
    #dbg_declare(ptr %3, !56, !DIExpression(), !57)
  %4 = load i16, ptr %2, align 2, !dbg !58
  %bswap.2 = shl i16 %4, 8, !dbg !59
  %bswap.1 = lshr i16 %4, 8, !dbg !59
  %bswap.i16 = or i16 %bswap.2, %bswap.1, !dbg !59
  store i16 %bswap.i16, ptr %3, align 2, !dbg !57
  %5 = load i16, ptr %3, align 2, !dbg !60
  ret i16 %5, !dbg !61
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !dbg !62 {
  %1 = alloca i32, align 4
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  store i32 0, ptr %1, align 4
    #dbg_declare(ptr %2, !66, !DIExpression(), !67)
  call void @klee_make_symbolic(ptr noundef %2, i64 noundef 2, ptr noundef @.str), !dbg !68
    #dbg_declare(ptr %3, !69, !DIExpression(), !70)
  %4 = load i16, ptr %2, align 2, !dbg !71
  %5 = call zeroext i16 @builtin_bswap16_cb(i16 noundef zeroext %4), !dbg !72
  store i16 %5, ptr %3, align 2, !dbg !70
  %6 = load i16, ptr %3, align 2, !dbg !73
  %7 = call zeroext i16 @builtin_bswap16_cb(i16 noundef zeroext %6), !dbg !73
  %8 = zext i16 %7 to i32, !dbg !73
  %9 = load i16, ptr %2, align 2, !dbg !73
  %10 = zext i16 %9 to i32, !dbg !73
  %11 = icmp eq i32 %8, %10, !dbg !73
  br i1 %11, label %12, label %13, !dbg !73

12:                                               ; preds = %0
  br label %14, !dbg !73

13:                                               ; preds = %0
  call void @__assert_fail(ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 19, ptr noundef @__PRETTY_FUNCTION__.main) #4, !dbg !73
  unreachable, !dbg !73

14:                                               ; preds = %12
  %15 = load i16, ptr %2, align 2, !dbg !76
  %16 = zext i16 %15 to i32, !dbg !76
  %17 = xor i32 %16, 255, !dbg !76
  %18 = trunc i32 %17 to i16, !dbg !76
  %19 = call zeroext i16 @builtin_bswap16_cb(i16 noundef zeroext %18), !dbg !76
  %20 = zext i16 %19 to i32, !dbg !76
  %21 = load i16, ptr %3, align 2, !dbg !76
  %22 = zext i16 %21 to i32, !dbg !76
  %23 = xor i32 %22, 65280, !dbg !76
  %24 = trunc i32 %23 to i16, !dbg !76
  %25 = zext i16 %24 to i32, !dbg !76
  %26 = icmp eq i32 %20, %25, !dbg !76
  br i1 %26, label %27, label %28, !dbg !76

27:                                               ; preds = %14
  br label %29, !dbg !76

28:                                               ; preds = %14
  call void @__assert_fail(ptr noundef @.str.3, ptr noundef @.str.2, i32 noundef 20, ptr noundef @__PRETTY_FUNCTION__.main) #4, !dbg !76
  unreachable, !dbg !76

29:                                               ; preds = %27
  %30 = load i16, ptr %2, align 2, !dbg !79
  %31 = zext i16 %30 to i32, !dbg !79
  %32 = and i32 %31, 255, !dbg !81
  %33 = load i16, ptr %2, align 2, !dbg !82
  %34 = zext i16 %33 to i32, !dbg !82
  %35 = ashr i32 %34, 8, !dbg !83
  %36 = icmp eq i32 %32, %35, !dbg !84
  br i1 %36, label %37, label %46, !dbg !84

37:                                               ; preds = %29
  %38 = load i16, ptr %3, align 2, !dbg !85
  %39 = zext i16 %38 to i32, !dbg !85
  %40 = load i16, ptr %2, align 2, !dbg !85
  %41 = zext i16 %40 to i32, !dbg !85
  %42 = icmp eq i32 %39, %41, !dbg !85
  br i1 %42, label %43, label %44, !dbg !85

43:                                               ; preds = %37
  br label %45, !dbg !85

44:                                               ; preds = %37
  call void @__assert_fail(ptr noundef @.str.4, ptr noundef @.str.2, i32 noundef 22, ptr noundef @__PRETTY_FUNCTION__.main) #4, !dbg !85
  unreachable, !dbg !85

45:                                               ; preds = %43
  br label %46, !dbg !89

46:                                               ; preds = %45, %29
  ret i32 0, !dbg !90
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
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 15, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/bench_12/bswap16_sensor_register_klee.c", directory: "/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet", checksumkind: CSK_MD5, checksum: "5976028d59bfceab83d71b1047f9e803")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 13)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 19, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 48)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 19, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 872, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 109)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 19, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 120, elements: !21)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!21 = !{!22}
!22 = !DISubrange(count: 15)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !2, line: 20, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 736, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 92)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !2, line: 22, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 28)
!33 = distinct !DICompileUnit(language: DW_LANG_C11, file: !34, producer: "Ubuntu clang version 20.1.8 (0ubuntu4)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !35, globals: !41, splitDebugInlining: false, nameTableKind: None)
!34 = !DIFile(filename: "/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/src/bench_12/bswap16_sensor_register_klee.c", directory: "/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet", checksumkind: CSK_MD5, checksum: "5976028d59bfceab83d71b1047f9e803")
!35 = !{!36}
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !37, line: 25, baseType: !38)
!37 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "006a4d9ce94ea5734db820ef3fdd4790")
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !39, line: 40, baseType: !40)
!39 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "0737a53e1b85eab0e0ba9675962d13f4")
!40 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!41 = !{!0, !7, !12, !17, !23, !28}
!42 = !{i32 7, !"Dwarf Version", i32 5}
!43 = !{i32 2, !"Debug Info Version", i32 3}
!44 = !{i32 1, !"wchar_size", i32 4}
!45 = !{i32 8, !"PIC Level", i32 2}
!46 = !{i32 7, !"PIE Level", i32 2}
!47 = !{i32 7, !"uwtable", i32 2}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"Ubuntu clang version 20.1.8 (0ubuntu4)"}
!50 = distinct !DISubprogram(name: "builtin_bswap16_cb", scope: !2, file: !2, line: 7, type: !51, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !33, retainedNodes: !53)
!51 = !DISubroutineType(types: !52)
!52 = !{!36, !36}
!53 = !{}
!54 = !DILocalVariable(name: "inp_register", arg: 1, scope: !50, file: !2, line: 7, type: !36)
!55 = !DILocation(line: 7, column: 38, scope: !50)
!56 = !DILocalVariable(name: "out_network", scope: !50, file: !2, line: 8, type: !36)
!57 = !DILocation(line: 8, column: 14, scope: !50)
!58 = !DILocation(line: 8, column: 46, scope: !50)
!59 = !DILocation(line: 8, column: 28, scope: !50)
!60 = !DILocation(line: 9, column: 12, scope: !50)
!61 = !DILocation(line: 9, column: 5, scope: !50)
!62 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 12, type: !63, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !33, retainedNodes: !53)
!63 = !DISubroutineType(types: !64)
!64 = !{!65}
!65 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!66 = !DILocalVariable(name: "inp_register", scope: !62, file: !2, line: 13, type: !36)
!67 = !DILocation(line: 13, column: 14, scope: !62)
!68 = !DILocation(line: 15, column: 5, scope: !62)
!69 = !DILocalVariable(name: "out_network", scope: !62, file: !2, line: 17, type: !36)
!70 = !DILocation(line: 17, column: 14, scope: !62)
!71 = !DILocation(line: 17, column: 47, scope: !62)
!72 = !DILocation(line: 17, column: 28, scope: !62)
!73 = !DILocation(line: 19, column: 5, scope: !74)
!74 = distinct !DILexicalBlock(scope: !75, file: !2, line: 19, column: 5)
!75 = distinct !DILexicalBlock(scope: !62, file: !2, line: 19, column: 5)
!76 = !DILocation(line: 20, column: 5, scope: !77)
!77 = distinct !DILexicalBlock(scope: !78, file: !2, line: 20, column: 5)
!78 = distinct !DILexicalBlock(scope: !62, file: !2, line: 20, column: 5)
!79 = !DILocation(line: 21, column: 10, scope: !80)
!80 = distinct !DILexicalBlock(scope: !62, file: !2, line: 21, column: 9)
!81 = !DILocation(line: 21, column: 23, scope: !80)
!82 = !DILocation(line: 21, column: 38, scope: !80)
!83 = !DILocation(line: 21, column: 51, scope: !80)
!84 = !DILocation(line: 21, column: 34, scope: !80)
!85 = !DILocation(line: 22, column: 9, scope: !86)
!86 = distinct !DILexicalBlock(scope: !87, file: !2, line: 22, column: 9)
!87 = distinct !DILexicalBlock(scope: !88, file: !2, line: 22, column: 9)
!88 = distinct !DILexicalBlock(scope: !80, file: !2, line: 21, column: 58)
!89 = !DILocation(line: 23, column: 5, scope: !88)
!90 = !DILocation(line: 25, column: 5, scope: !62)
