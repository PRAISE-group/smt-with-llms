; ModuleID = '/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/src/bench_14/bswap32_packet_stamp_klee.bc'
source_filename = "/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/src/bench_14/bswap32_packet_stamp_klee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"inp_hi\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [7 x i8] c"inp_lo\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [99 x i8] c"out_stamp == ((((uint32_t)__builtin_bswap16(inp_lo)) << 16) | (uint32_t)__builtin_bswap16(inp_hi))\00", align 1, !dbg !9
@.str.3 = private unnamed_addr constant [106 x i8] c"/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/src/bench_14/bswap32_packet_stamp_klee.c\00", align 1, !dbg !14
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1, !dbg !19
@.str.4 = private unnamed_addr constant [61 x i8] c"out_stamp == ((((uint32_t)inp_hi) << 16) | (uint32_t)inp_lo)\00", align 1, !dbg !25

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @builtin_bswap32_cb(i16 noundef zeroext %0, i16 noundef zeroext %1) #0 !dbg !47 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i16 %0, ptr %3, align 2
    #dbg_declare(ptr %3, !54, !DIExpression(), !55)
  store i16 %1, ptr %4, align 2
    #dbg_declare(ptr %4, !56, !DIExpression(), !57)
    #dbg_declare(ptr %5, !58, !DIExpression(), !59)
  %7 = load i16, ptr %3, align 2, !dbg !60
  %8 = zext i16 %7 to i32, !dbg !61
  %9 = shl i32 %8, 16, !dbg !62
  %10 = load i16, ptr %4, align 2, !dbg !63
  %11 = zext i16 %10 to i32, !dbg !64
  %12 = or i32 %9, %11, !dbg !65
  store i32 %12, ptr %5, align 4, !dbg !59
    #dbg_declare(ptr %6, !66, !DIExpression(), !67)
  %13 = load i32, ptr %5, align 4, !dbg !68
  %bswap.4 = shl i32 %13, 24, !dbg !69
  %bswap.3 = shl i32 %13, 8, !dbg !69
  %bswap.2 = lshr i32 %13, 8, !dbg !69
  %bswap.1 = lshr i32 %13, 24, !dbg !69
  %bswap.and3 = and i32 %bswap.3, 16711680, !dbg !69
  %bswap.and2 = and i32 %bswap.2, 65280, !dbg !69
  %bswap.or1 = or i32 %bswap.4, %bswap.and3, !dbg !69
  %bswap.or2 = or i32 %bswap.and2, %bswap.1, !dbg !69
  %bswap.i32 = or i32 %bswap.or1, %bswap.or2, !dbg !69
  store i32 %bswap.i32, ptr %6, align 4, !dbg !67
  %14 = load i32, ptr %6, align 4, !dbg !70
  ret i32 %14, !dbg !71
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !dbg !72 {
  %1 = alloca i32, align 4
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  store i32 0, ptr %1, align 4
    #dbg_declare(ptr %2, !76, !DIExpression(), !77)
    #dbg_declare(ptr %3, !78, !DIExpression(), !79)
  call void @klee_make_symbolic(ptr noundef %2, i64 noundef 2, ptr noundef @.str), !dbg !80
  call void @klee_make_symbolic(ptr noundef %3, i64 noundef 2, ptr noundef @.str.1), !dbg !81
    #dbg_declare(ptr %4, !82, !DIExpression(), !83)
  %5 = load i16, ptr %2, align 2, !dbg !84
  %6 = load i16, ptr %3, align 2, !dbg !85
  %7 = call i32 @builtin_bswap32_cb(i16 noundef zeroext %5, i16 noundef zeroext %6), !dbg !86
  store i32 %7, ptr %4, align 4, !dbg !83
  %8 = load i32, ptr %4, align 4, !dbg !87
  %9 = load i16, ptr %3, align 2, !dbg !87
  %bswap.2 = shl i16 %9, 8, !dbg !87
  %bswap.1 = lshr i16 %9, 8, !dbg !87
  %bswap.i16 = or i16 %bswap.2, %bswap.1, !dbg !87
  %10 = zext i16 %bswap.i16 to i32, !dbg !87
  %11 = shl i32 %10, 16, !dbg !87
  %12 = load i16, ptr %2, align 2, !dbg !87
  %bswap.21 = shl i16 %12, 8, !dbg !87
  %bswap.12 = lshr i16 %12, 8, !dbg !87
  %bswap.i163 = or i16 %bswap.21, %bswap.12, !dbg !87
  %13 = zext i16 %bswap.i163 to i32, !dbg !87
  %14 = or i32 %11, %13, !dbg !87
  %15 = icmp eq i32 %8, %14, !dbg !87
  br i1 %15, label %16, label %17, !dbg !87

16:                                               ; preds = %0
  br label %18, !dbg !87

17:                                               ; preds = %0
  call void @__assert_fail(ptr noundef @.str.2, ptr noundef @.str.3, i32 noundef 22, ptr noundef @__PRETTY_FUNCTION__.main) #4, !dbg !87
  unreachable, !dbg !87

18:                                               ; preds = %16
  %19 = load i16, ptr %2, align 2, !dbg !90
  %20 = zext i16 %19 to i32, !dbg !90
  %21 = load i16, ptr %3, align 2, !dbg !92
  %bswap.24 = shl i16 %21, 8, !dbg !93
  %bswap.15 = lshr i16 %21, 8, !dbg !93
  %bswap.i166 = or i16 %bswap.24, %bswap.15, !dbg !93
  %22 = zext i16 %bswap.i166 to i32, !dbg !93
  %23 = icmp eq i32 %20, %22, !dbg !94
  br i1 %23, label %24, label %36, !dbg !94

24:                                               ; preds = %18
  %25 = load i32, ptr %4, align 4, !dbg !95
  %26 = load i16, ptr %2, align 2, !dbg !95
  %27 = zext i16 %26 to i32, !dbg !95
  %28 = shl i32 %27, 16, !dbg !95
  %29 = load i16, ptr %3, align 2, !dbg !95
  %30 = zext i16 %29 to i32, !dbg !95
  %31 = or i32 %28, %30, !dbg !95
  %32 = icmp eq i32 %25, %31, !dbg !95
  br i1 %32, label %33, label %34, !dbg !95

33:                                               ; preds = %24
  br label %35, !dbg !95

34:                                               ; preds = %24
  call void @__assert_fail(ptr noundef @.str.4, ptr noundef @.str.3, i32 noundef 24, ptr noundef @__PRETTY_FUNCTION__.main) #4, !dbg !95
  unreachable, !dbg !95

35:                                               ; preds = %33
  br label %36, !dbg !99

36:                                               ; preds = %35, %18
  ret i32 0, !dbg !100
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

!llvm.dbg.cu = !{!30}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 17, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/bench_14/bswap32_packet_stamp_klee.c", directory: "/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet", checksumkind: CSK_MD5, checksum: "fb666936031f3c3d752d79ef9cd8f44c")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 7)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 18, type: !3, isLocal: true, isDefinition: true)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(scope: null, file: !2, line: 22, type: !11, isLocal: true, isDefinition: true)
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 792, elements: !12)
!12 = !{!13}
!13 = !DISubrange(count: 99)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(scope: null, file: !2, line: 22, type: !16, isLocal: true, isDefinition: true)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 848, elements: !17)
!17 = !{!18}
!18 = !DISubrange(count: 106)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(scope: null, file: !2, line: 22, type: !21, isLocal: true, isDefinition: true)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 120, elements: !23)
!22 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!23 = !{!24}
!24 = !DISubrange(count: 15)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(scope: null, file: !2, line: 24, type: !27, isLocal: true, isDefinition: true)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: 61)
!30 = distinct !DICompileUnit(language: DW_LANG_C11, file: !31, producer: "Ubuntu clang version 20.1.8 (0ubuntu4)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !32, globals: !38, splitDebugInlining: false, nameTableKind: None)
!31 = !DIFile(filename: "/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/src/bench_14/bswap32_packet_stamp_klee.c", directory: "/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet", checksumkind: CSK_MD5, checksum: "fb666936031f3c3d752d79ef9cd8f44c")
!32 = !{!33}
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !34, line: 26, baseType: !35)
!34 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "006a4d9ce94ea5734db820ef3fdd4790")
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !36, line: 42, baseType: !37)
!36 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "0737a53e1b85eab0e0ba9675962d13f4")
!37 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!38 = !{!0, !7, !9, !14, !19, !25}
!39 = !{i32 7, !"Dwarf Version", i32 5}
!40 = !{i32 2, !"Debug Info Version", i32 3}
!41 = !{i32 1, !"wchar_size", i32 4}
!42 = !{i32 8, !"PIC Level", i32 2}
!43 = !{i32 7, !"PIE Level", i32 2}
!44 = !{i32 7, !"uwtable", i32 2}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"Ubuntu clang version 20.1.8 (0ubuntu4)"}
!47 = distinct !DISubprogram(name: "builtin_bswap32_cb", scope: !2, file: !2, line: 7, type: !48, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !30, retainedNodes: !53)
!48 = !DISubroutineType(types: !49)
!49 = !{!33, !50, !50}
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !34, line: 25, baseType: !51)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !36, line: 40, baseType: !52)
!52 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!53 = !{}
!54 = !DILocalVariable(name: "inp_hi", arg: 1, scope: !47, file: !2, line: 7, type: !50)
!55 = !DILocation(line: 7, column: 38, scope: !47)
!56 = !DILocalVariable(name: "inp_lo", arg: 2, scope: !47, file: !2, line: 7, type: !50)
!57 = !DILocation(line: 7, column: 55, scope: !47)
!58 = !DILocalVariable(name: "inp_stamp", scope: !47, file: !2, line: 8, type: !33)
!59 = !DILocation(line: 8, column: 14, scope: !47)
!60 = !DILocation(line: 8, column: 37, scope: !47)
!61 = !DILocation(line: 8, column: 27, scope: !47)
!62 = !DILocation(line: 8, column: 44, scope: !47)
!63 = !DILocation(line: 8, column: 63, scope: !47)
!64 = !DILocation(line: 8, column: 53, scope: !47)
!65 = !DILocation(line: 8, column: 51, scope: !47)
!66 = !DILocalVariable(name: "out_stamp", scope: !47, file: !2, line: 9, type: !33)
!67 = !DILocation(line: 9, column: 14, scope: !47)
!68 = !DILocation(line: 9, column: 44, scope: !47)
!69 = !DILocation(line: 9, column: 26, scope: !47)
!70 = !DILocation(line: 10, column: 12, scope: !47)
!71 = !DILocation(line: 10, column: 5, scope: !47)
!72 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 13, type: !73, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !30, retainedNodes: !53)
!73 = !DISubroutineType(types: !74)
!74 = !{!75}
!75 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!76 = !DILocalVariable(name: "inp_hi", scope: !72, file: !2, line: 14, type: !50)
!77 = !DILocation(line: 14, column: 14, scope: !72)
!78 = !DILocalVariable(name: "inp_lo", scope: !72, file: !2, line: 15, type: !50)
!79 = !DILocation(line: 15, column: 14, scope: !72)
!80 = !DILocation(line: 17, column: 5, scope: !72)
!81 = !DILocation(line: 18, column: 5, scope: !72)
!82 = !DILocalVariable(name: "out_stamp", scope: !72, file: !2, line: 20, type: !33)
!83 = !DILocation(line: 20, column: 14, scope: !72)
!84 = !DILocation(line: 20, column: 45, scope: !72)
!85 = !DILocation(line: 20, column: 53, scope: !72)
!86 = !DILocation(line: 20, column: 26, scope: !72)
!87 = !DILocation(line: 22, column: 5, scope: !88)
!88 = distinct !DILexicalBlock(scope: !89, file: !2, line: 22, column: 5)
!89 = distinct !DILexicalBlock(scope: !72, file: !2, line: 22, column: 5)
!90 = !DILocation(line: 23, column: 9, scope: !91)
!91 = distinct !DILexicalBlock(scope: !72, file: !2, line: 23, column: 9)
!92 = !DILocation(line: 23, column: 37, scope: !91)
!93 = !DILocation(line: 23, column: 19, scope: !91)
!94 = !DILocation(line: 23, column: 16, scope: !91)
!95 = !DILocation(line: 24, column: 9, scope: !96)
!96 = distinct !DILexicalBlock(scope: !97, file: !2, line: 24, column: 9)
!97 = distinct !DILexicalBlock(scope: !98, file: !2, line: 24, column: 9)
!98 = distinct !DILexicalBlock(scope: !91, file: !2, line: 23, column: 46)
!99 = !DILocation(line: 25, column: 5, scope: !98)
!100 = !DILocation(line: 27, column: 5, scope: !72)
