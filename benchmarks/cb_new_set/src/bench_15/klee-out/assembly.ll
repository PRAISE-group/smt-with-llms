; ModuleID = '/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/src/bench_15/rotl_flag_ring_klee.bc'
source_filename = "/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/src/bench_15/rotl_flag_ring_klee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"inp_flags\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [10 x i8] c"inp_steps\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [52 x i8] c"builtin_rotateleft16_cb(inp_flags, 0U) == inp_flags\00", align 1, !dbg !9
@.str.3 = private unnamed_addr constant [100 x i8] c"/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/src/bench_15/rotl_flag_ring_klee.c\00", align 1, !dbg !14
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1, !dbg !19
@.str.4 = private unnamed_addr constant [53 x i8] c"builtin_rotateleft16_cb(inp_flags, 16U) == inp_flags\00", align 1, !dbg !25
@.str.5 = private unnamed_addr constant [87 x i8] c"builtin_rotateleft16_cb(out_rotated, (uint16_t)(16U - (inp_steps & 15U))) == inp_flags\00", align 1, !dbg !30
@.str.6 = private unnamed_addr constant [149 x i8] c"builtin_rotateleft16_cb(builtin_rotateleft16_cb(inp_flags, inp_steps), 3U) == builtin_rotateleft16_cb(inp_flags, (uint16_t)((inp_steps + 3U) & 15U))\00", align 1, !dbg !35
@.str.7 = private unnamed_addr constant [25 x i8] c"out_rotated == inp_flags\00", align 1, !dbg !40

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i16 @builtin_rotateleft16_cb(i16 noundef zeroext %0, i16 noundef zeroext %1) #0 !dbg !63 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  store i16 %0, ptr %3, align 2
    #dbg_declare(ptr %3, !67, !DIExpression(), !68)
  store i16 %1, ptr %4, align 2
    #dbg_declare(ptr %4, !69, !DIExpression(), !70)
    #dbg_declare(ptr %5, !71, !DIExpression(), !72)
  %6 = load i16, ptr %3, align 2, !dbg !73
  %7 = load i16, ptr %4, align 2, !dbg !74
  %8 = zext i16 %7 to i32, !dbg !75
  %9 = trunc i32 %8 to i16, !dbg !75
  %10 = call i16 @llvm.fshl.i16(i16 %6, i16 %6, i16 %9), !dbg !76
  store i16 %10, ptr %5, align 2, !dbg !72
  %11 = load i16, ptr %5, align 2, !dbg !77
  ret i16 %11, !dbg !78
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.fshl.i16(i16, i16, i16) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !dbg !79 {
  %1 = alloca i32, align 4
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  store i32 0, ptr %1, align 4
    #dbg_declare(ptr %2, !83, !DIExpression(), !84)
    #dbg_declare(ptr %3, !85, !DIExpression(), !86)
    #dbg_declare(ptr %4, !87, !DIExpression(), !88)
  call void @klee_make_symbolic(ptr noundef %2, i64 noundef 2, ptr noundef @.str), !dbg !89
  call void @klee_make_symbolic(ptr noundef %3, i64 noundef 2, ptr noundef @.str.1), !dbg !90
  %5 = load i16, ptr %2, align 2, !dbg !91
  %6 = load i16, ptr %3, align 2, !dbg !92
  %7 = call zeroext i16 @builtin_rotateleft16_cb(i16 noundef zeroext %5, i16 noundef zeroext %6), !dbg !93
  store i16 %7, ptr %4, align 2, !dbg !94
  %8 = load i16, ptr %2, align 2, !dbg !95
  %9 = call zeroext i16 @builtin_rotateleft16_cb(i16 noundef zeroext %8, i16 noundef zeroext 0), !dbg !95
  %10 = zext i16 %9 to i32, !dbg !95
  %11 = load i16, ptr %2, align 2, !dbg !95
  %12 = zext i16 %11 to i32, !dbg !95
  %13 = icmp eq i32 %10, %12, !dbg !95
  br i1 %13, label %14, label %15, !dbg !95

14:                                               ; preds = %0
  br label %16, !dbg !95

15:                                               ; preds = %0
  call void @__assert_fail(ptr noundef @.str.2, ptr noundef @.str.3, i32 noundef 22, ptr noundef @__PRETTY_FUNCTION__.main) #4, !dbg !95
  unreachable, !dbg !95

16:                                               ; preds = %14
  %17 = load i16, ptr %2, align 2, !dbg !98
  %18 = call zeroext i16 @builtin_rotateleft16_cb(i16 noundef zeroext %17, i16 noundef zeroext 16), !dbg !98
  %19 = zext i16 %18 to i32, !dbg !98
  %20 = load i16, ptr %2, align 2, !dbg !98
  %21 = zext i16 %20 to i32, !dbg !98
  %22 = icmp eq i32 %19, %21, !dbg !98
  br i1 %22, label %23, label %24, !dbg !98

23:                                               ; preds = %16
  br label %25, !dbg !98

24:                                               ; preds = %16
  call void @__assert_fail(ptr noundef @.str.4, ptr noundef @.str.3, i32 noundef 23, ptr noundef @__PRETTY_FUNCTION__.main) #4, !dbg !98
  unreachable, !dbg !98

25:                                               ; preds = %23
  %26 = load i16, ptr %4, align 2, !dbg !101
  %27 = load i16, ptr %3, align 2, !dbg !101
  %28 = zext i16 %27 to i32, !dbg !101
  %29 = and i32 %28, 15, !dbg !101
  %30 = sub i32 16, %29, !dbg !101
  %31 = trunc i32 %30 to i16, !dbg !101
  %32 = call zeroext i16 @builtin_rotateleft16_cb(i16 noundef zeroext %26, i16 noundef zeroext %31), !dbg !101
  %33 = zext i16 %32 to i32, !dbg !101
  %34 = load i16, ptr %2, align 2, !dbg !101
  %35 = zext i16 %34 to i32, !dbg !101
  %36 = icmp eq i32 %33, %35, !dbg !101
  br i1 %36, label %37, label %38, !dbg !101

37:                                               ; preds = %25
  br label %39, !dbg !101

38:                                               ; preds = %25
  call void @__assert_fail(ptr noundef @.str.5, ptr noundef @.str.3, i32 noundef 24, ptr noundef @__PRETTY_FUNCTION__.main) #4, !dbg !101
  unreachable, !dbg !101

39:                                               ; preds = %37
  %40 = load i16, ptr %2, align 2, !dbg !104
  %41 = load i16, ptr %3, align 2, !dbg !104
  %42 = call zeroext i16 @builtin_rotateleft16_cb(i16 noundef zeroext %40, i16 noundef zeroext %41), !dbg !104
  %43 = call zeroext i16 @builtin_rotateleft16_cb(i16 noundef zeroext %42, i16 noundef zeroext 3), !dbg !104
  %44 = zext i16 %43 to i32, !dbg !104
  %45 = load i16, ptr %2, align 2, !dbg !104
  %46 = load i16, ptr %3, align 2, !dbg !104
  %47 = zext i16 %46 to i32, !dbg !104
  %48 = add i32 %47, 3, !dbg !104
  %49 = and i32 %48, 15, !dbg !104
  %50 = trunc i32 %49 to i16, !dbg !104
  %51 = call zeroext i16 @builtin_rotateleft16_cb(i16 noundef zeroext %45, i16 noundef zeroext %50), !dbg !104
  %52 = zext i16 %51 to i32, !dbg !104
  %53 = icmp eq i32 %44, %52, !dbg !104
  br i1 %53, label %54, label %55, !dbg !104

54:                                               ; preds = %39
  br label %56, !dbg !104

55:                                               ; preds = %39
  call void @__assert_fail(ptr noundef @.str.6, ptr noundef @.str.3, i32 noundef 26, ptr noundef @__PRETTY_FUNCTION__.main) #4, !dbg !104
  unreachable, !dbg !104

56:                                               ; preds = %54
  %57 = load i16, ptr %2, align 2, !dbg !107
  %58 = zext i16 %57 to i32, !dbg !107
  %59 = icmp eq i32 %58, 0, !dbg !109
  br i1 %59, label %64, label %60, !dbg !110

60:                                               ; preds = %56
  %61 = load i16, ptr %2, align 2, !dbg !111
  %62 = zext i16 %61 to i32, !dbg !111
  %63 = icmp eq i32 %62, 65535, !dbg !112
  br i1 %63, label %64, label %73, !dbg !110

64:                                               ; preds = %60, %56
  %65 = load i16, ptr %4, align 2, !dbg !113
  %66 = zext i16 %65 to i32, !dbg !113
  %67 = load i16, ptr %2, align 2, !dbg !113
  %68 = zext i16 %67 to i32, !dbg !113
  %69 = icmp eq i32 %66, %68, !dbg !113
  br i1 %69, label %70, label %71, !dbg !113

70:                                               ; preds = %64
  br label %72, !dbg !113

71:                                               ; preds = %64
  call void @__assert_fail(ptr noundef @.str.7, ptr noundef @.str.3, i32 noundef 28, ptr noundef @__PRETTY_FUNCTION__.main) #4, !dbg !113
  unreachable, !dbg !113

72:                                               ; preds = %70
  br label %73, !dbg !117

73:                                               ; preds = %72, %60
  ret i32 0, !dbg !118
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
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 17, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/bench_15/rotl_flag_ring_klee.c", directory: "/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet", checksumkind: CSK_MD5, checksum: "4169b3f560917b9cb7970545794da18a")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 10)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 18, type: !3, isLocal: true, isDefinition: true)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(scope: null, file: !2, line: 22, type: !11, isLocal: true, isDefinition: true)
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !12)
!12 = !{!13}
!13 = !DISubrange(count: 52)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(scope: null, file: !2, line: 22, type: !16, isLocal: true, isDefinition: true)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 800, elements: !17)
!17 = !{!18}
!18 = !DISubrange(count: 100)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(scope: null, file: !2, line: 22, type: !21, isLocal: true, isDefinition: true)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 120, elements: !23)
!22 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!23 = !{!24}
!24 = !DISubrange(count: 15)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(scope: null, file: !2, line: 23, type: !27, isLocal: true, isDefinition: true)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 424, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: 53)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(scope: null, file: !2, line: 24, type: !32, isLocal: true, isDefinition: true)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 696, elements: !33)
!33 = !{!34}
!34 = !DISubrange(count: 87)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(scope: null, file: !2, line: 25, type: !37, isLocal: true, isDefinition: true)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1192, elements: !38)
!38 = !{!39}
!39 = !DISubrange(count: 149)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(scope: null, file: !2, line: 28, type: !42, isLocal: true, isDefinition: true)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !43)
!43 = !{!44}
!44 = !DISubrange(count: 25)
!45 = distinct !DICompileUnit(language: DW_LANG_C11, file: !46, producer: "Ubuntu clang version 20.1.8 (0ubuntu4)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !47, globals: !54, splitDebugInlining: false, nameTableKind: None)
!46 = !DIFile(filename: "/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/src/bench_15/rotl_flag_ring_klee.c", directory: "/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet", checksumkind: CSK_MD5, checksum: "4169b3f560917b9cb7970545794da18a")
!47 = !{!48, !49}
!48 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !50, line: 25, baseType: !51)
!50 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "006a4d9ce94ea5734db820ef3fdd4790")
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !52, line: 40, baseType: !53)
!52 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "0737a53e1b85eab0e0ba9675962d13f4")
!53 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!54 = !{!0, !7, !9, !14, !19, !25, !30, !35, !40}
!55 = !{i32 7, !"Dwarf Version", i32 5}
!56 = !{i32 2, !"Debug Info Version", i32 3}
!57 = !{i32 1, !"wchar_size", i32 4}
!58 = !{i32 8, !"PIC Level", i32 2}
!59 = !{i32 7, !"PIE Level", i32 2}
!60 = !{i32 7, !"uwtable", i32 2}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"Ubuntu clang version 20.1.8 (0ubuntu4)"}
!63 = distinct !DISubprogram(name: "builtin_rotateleft16_cb", scope: !2, file: !2, line: 7, type: !64, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !45, retainedNodes: !66)
!64 = !DISubroutineType(types: !65)
!65 = !{!49, !49, !49}
!66 = !{}
!67 = !DILocalVariable(name: "inp_flags", arg: 1, scope: !63, file: !2, line: 7, type: !49)
!68 = !DILocation(line: 7, column: 43, scope: !63)
!69 = !DILocalVariable(name: "inp_steps", arg: 2, scope: !63, file: !2, line: 7, type: !49)
!70 = !DILocation(line: 7, column: 63, scope: !63)
!71 = !DILocalVariable(name: "out_rotated", scope: !63, file: !2, line: 8, type: !49)
!72 = !DILocation(line: 8, column: 14, scope: !63)
!73 = !DILocation(line: 8, column: 51, scope: !63)
!74 = !DILocation(line: 8, column: 76, scope: !63)
!75 = !DILocation(line: 8, column: 62, scope: !63)
!76 = !DILocation(line: 8, column: 28, scope: !63)
!77 = !DILocation(line: 9, column: 12, scope: !63)
!78 = !DILocation(line: 9, column: 5, scope: !63)
!79 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 12, type: !80, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !45, retainedNodes: !66)
!80 = !DISubroutineType(types: !81)
!81 = !{!82}
!82 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!83 = !DILocalVariable(name: "inp_flags", scope: !79, file: !2, line: 13, type: !49)
!84 = !DILocation(line: 13, column: 14, scope: !79)
!85 = !DILocalVariable(name: "inp_steps", scope: !79, file: !2, line: 14, type: !49)
!86 = !DILocation(line: 14, column: 14, scope: !79)
!87 = !DILocalVariable(name: "out_rotated", scope: !79, file: !2, line: 15, type: !49)
!88 = !DILocation(line: 15, column: 14, scope: !79)
!89 = !DILocation(line: 17, column: 5, scope: !79)
!90 = !DILocation(line: 18, column: 5, scope: !79)
!91 = !DILocation(line: 20, column: 43, scope: !79)
!92 = !DILocation(line: 20, column: 54, scope: !79)
!93 = !DILocation(line: 20, column: 19, scope: !79)
!94 = !DILocation(line: 20, column: 17, scope: !79)
!95 = !DILocation(line: 22, column: 5, scope: !96)
!96 = distinct !DILexicalBlock(scope: !97, file: !2, line: 22, column: 5)
!97 = distinct !DILexicalBlock(scope: !79, file: !2, line: 22, column: 5)
!98 = !DILocation(line: 23, column: 5, scope: !99)
!99 = distinct !DILexicalBlock(scope: !100, file: !2, line: 23, column: 5)
!100 = distinct !DILexicalBlock(scope: !79, file: !2, line: 23, column: 5)
!101 = !DILocation(line: 24, column: 5, scope: !102)
!102 = distinct !DILexicalBlock(scope: !103, file: !2, line: 24, column: 5)
!103 = distinct !DILexicalBlock(scope: !79, file: !2, line: 24, column: 5)
!104 = !DILocation(line: 25, column: 5, scope: !105)
!105 = distinct !DILexicalBlock(scope: !106, file: !2, line: 25, column: 5)
!106 = distinct !DILexicalBlock(scope: !79, file: !2, line: 25, column: 5)
!107 = !DILocation(line: 27, column: 9, scope: !108)
!108 = distinct !DILexicalBlock(scope: !79, file: !2, line: 27, column: 9)
!109 = !DILocation(line: 27, column: 19, scope: !108)
!110 = !DILocation(line: 27, column: 30, scope: !108)
!111 = !DILocation(line: 27, column: 33, scope: !108)
!112 = !DILocation(line: 27, column: 43, scope: !108)
!113 = !DILocation(line: 28, column: 9, scope: !114)
!114 = distinct !DILexicalBlock(scope: !115, file: !2, line: 28, column: 9)
!115 = distinct !DILexicalBlock(scope: !116, file: !2, line: 28, column: 9)
!116 = distinct !DILexicalBlock(scope: !108, file: !2, line: 27, column: 55)
!117 = !DILocation(line: 29, column: 5, scope: !116)
!118 = !DILocation(line: 31, column: 5, scope: !79)
