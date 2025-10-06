; ModuleID = 'bin/regex.bc'
source_filename = "src/regex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"re\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"hello\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @match(i8* %0, i8* %1) #0 !dbg !9 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !15, metadata !DIExpression()), !dbg !16
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !17, metadata !DIExpression()), !dbg !18
  %6 = load i8*, i8** %4, align 8, !dbg !19
  %7 = getelementptr inbounds i8, i8* %6, i64 0, !dbg !19
  %8 = load i8, i8* %7, align 1, !dbg !19
  %9 = sext i8 %8 to i32, !dbg !19
  %10 = icmp eq i32 %9, 94, !dbg !21
  br i1 %10, label %11, label %16, !dbg !22

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8, !dbg !23
  %13 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !24
  %14 = load i8*, i8** %5, align 8, !dbg !25
  %15 = call i32 @matchhere(i8* %13, i8* %14), !dbg !26
  store i32 %15, i32* %3, align 4, !dbg !27
  br label %29, !dbg !27

16:                                               ; preds = %2, %22
  %17 = load i8*, i8** %4, align 8, !dbg !28
  %18 = load i8*, i8** %5, align 8, !dbg !31
  %19 = call i32 @matchhere(i8* %17, i8* %18), !dbg !32
  %20 = icmp ne i32 %19, 0, !dbg !32
  br i1 %20, label %21, label %22, !dbg !33

21:                                               ; preds = %16
  store i32 1, i32* %3, align 4, !dbg !34
  br label %29, !dbg !34

22:                                               ; preds = %16
  %23 = load i8*, i8** %5, align 8, !dbg !35
  %24 = getelementptr inbounds i8, i8* %23, i32 1, !dbg !35
  store i8* %24, i8** %5, align 8, !dbg !35
  %25 = load i8, i8* %23, align 1, !dbg !36
  %26 = sext i8 %25 to i32, !dbg !36
  %27 = icmp ne i32 %26, 0, !dbg !37
  br i1 %27, label %16, label %28, !dbg !38, !llvm.loop !39

28:                                               ; preds = %22
  store i32 0, i32* %3, align 4, !dbg !43
  br label %29, !dbg !43

29:                                               ; preds = %28, %21, %11
  %30 = load i32, i32* %3, align 4, !dbg !44
  ret i32 %30, !dbg !44
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @matchhere(i8* %0, i8* %1) #0 !dbg !45 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !46, metadata !DIExpression()), !dbg !47
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !48, metadata !DIExpression()), !dbg !49
  %6 = load i8*, i8** %4, align 8, !dbg !50
  %7 = getelementptr inbounds i8, i8* %6, i64 0, !dbg !50
  %8 = load i8, i8* %7, align 1, !dbg !50
  %9 = sext i8 %8 to i32, !dbg !50
  %10 = icmp eq i32 %9, 0, !dbg !52
  br i1 %10, label %11, label %12, !dbg !53

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !54
  br label %72, !dbg !54

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8, !dbg !55
  %14 = getelementptr inbounds i8, i8* %13, i64 1, !dbg !55
  %15 = load i8, i8* %14, align 1, !dbg !55
  %16 = sext i8 %15 to i32, !dbg !55
  %17 = icmp eq i32 %16, 42, !dbg !57
  br i1 %17, label %18, label %27, !dbg !58

18:                                               ; preds = %12
  %19 = load i8*, i8** %4, align 8, !dbg !59
  %20 = getelementptr inbounds i8, i8* %19, i64 0, !dbg !59
  %21 = load i8, i8* %20, align 1, !dbg !59
  %22 = sext i8 %21 to i32, !dbg !59
  %23 = load i8*, i8** %4, align 8, !dbg !60
  %24 = getelementptr inbounds i8, i8* %23, i64 2, !dbg !61
  %25 = load i8*, i8** %5, align 8, !dbg !62
  %26 = call i32 @matchstar(i32 %22, i8* %24, i8* %25), !dbg !63
  store i32 %26, i32* %3, align 4, !dbg !64
  br label %72, !dbg !64

27:                                               ; preds = %12
  %28 = load i8*, i8** %4, align 8, !dbg !65
  %29 = getelementptr inbounds i8, i8* %28, i64 0, !dbg !65
  %30 = load i8, i8* %29, align 1, !dbg !65
  %31 = sext i8 %30 to i32, !dbg !65
  %32 = icmp eq i32 %31, 36, !dbg !67
  br i1 %32, label %33, label %45, !dbg !68

33:                                               ; preds = %27
  %34 = load i8*, i8** %4, align 8, !dbg !69
  %35 = getelementptr inbounds i8, i8* %34, i64 1, !dbg !69
  %36 = load i8, i8* %35, align 1, !dbg !69
  %37 = sext i8 %36 to i32, !dbg !69
  %38 = icmp eq i32 %37, 0, !dbg !70
  br i1 %38, label %39, label %45, !dbg !71

39:                                               ; preds = %33
  %40 = load i8*, i8** %5, align 8, !dbg !72
  %41 = load i8, i8* %40, align 1, !dbg !73
  %42 = sext i8 %41 to i32, !dbg !73
  %43 = icmp eq i32 %42, 0, !dbg !74
  %44 = zext i1 %43 to i32, !dbg !74
  store i32 %44, i32* %3, align 4, !dbg !75
  br label %72, !dbg !75

45:                                               ; preds = %33, %27
  %46 = load i8*, i8** %5, align 8, !dbg !76
  %47 = load i8, i8* %46, align 1, !dbg !78
  %48 = sext i8 %47 to i32, !dbg !78
  %49 = icmp ne i32 %48, 0, !dbg !79
  br i1 %49, label %50, label %71, !dbg !80

50:                                               ; preds = %45
  %51 = load i8*, i8** %4, align 8, !dbg !81
  %52 = getelementptr inbounds i8, i8* %51, i64 0, !dbg !81
  %53 = load i8, i8* %52, align 1, !dbg !81
  %54 = sext i8 %53 to i32, !dbg !81
  %55 = icmp eq i32 %54, 46, !dbg !82
  br i1 %55, label %65, label %56, !dbg !83

56:                                               ; preds = %50
  %57 = load i8*, i8** %4, align 8, !dbg !84
  %58 = getelementptr inbounds i8, i8* %57, i64 0, !dbg !84
  %59 = load i8, i8* %58, align 1, !dbg !84
  %60 = sext i8 %59 to i32, !dbg !84
  %61 = load i8*, i8** %5, align 8, !dbg !85
  %62 = load i8, i8* %61, align 1, !dbg !86
  %63 = sext i8 %62 to i32, !dbg !86
  %64 = icmp eq i32 %60, %63, !dbg !87
  br i1 %64, label %65, label %71, !dbg !88

65:                                               ; preds = %56, %50
  %66 = load i8*, i8** %4, align 8, !dbg !89
  %67 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !90
  %68 = load i8*, i8** %5, align 8, !dbg !91
  %69 = getelementptr inbounds i8, i8* %68, i64 1, !dbg !92
  %70 = call i32 @matchhere(i8* %67, i8* %69), !dbg !93
  store i32 %70, i32* %3, align 4, !dbg !94
  br label %72, !dbg !94

71:                                               ; preds = %56, %45
  store i32 0, i32* %3, align 4, !dbg !95
  br label %72, !dbg !95

72:                                               ; preds = %71, %65, %39, %18, %11
  %73 = load i32, i32* %3, align 4, !dbg !96
  ret i32 %73, !dbg !96
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !dbg !97 {
  %1 = alloca i32, align 4
  %2 = alloca [12 x i8], align 1
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [12 x i8]* %2, metadata !100, metadata !DIExpression()), !dbg !104
  %3 = getelementptr inbounds [12 x i8], [12 x i8]* %2, i64 0, i64 0, !dbg !105
  call void @klee_make_symbolic(i8* %3, i64 12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !dbg !106
  %4 = getelementptr inbounds [12 x i8], [12 x i8]* %2, i64 0, i64 0, !dbg !107
  %5 = call i32 @match(i8* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)), !dbg !108
  ret i32 0, !dbg !109
}

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @matchstar(i32 %0, i8* %1, i8* %2) #0 !dbg !110 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !113, metadata !DIExpression()), !dbg !114
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !115, metadata !DIExpression()), !dbg !116
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !117, metadata !DIExpression()), !dbg !118
  br label %8, !dbg !119

8:                                                ; preds = %19, %3
  %9 = load i8*, i8** %6, align 8, !dbg !120
  %10 = load i8*, i8** %7, align 8, !dbg !123
  %11 = call i32 @matchhere(i8* %9, i8* %10), !dbg !124
  %12 = icmp ne i32 %11, 0, !dbg !124
  br i1 %12, label %13, label %14, !dbg !125

13:                                               ; preds = %8
  store i32 1, i32* %4, align 4, !dbg !126
  br label %29, !dbg !126

14:                                               ; preds = %8
  %15 = load i8*, i8** %7, align 8, !dbg !127
  %16 = load i8, i8* %15, align 1, !dbg !128
  %17 = sext i8 %16 to i32, !dbg !128
  %18 = icmp ne i32 %17, 0, !dbg !129
  br i1 %18, label %19, label %.critedge, !dbg !130

19:                                               ; preds = %14
  %20 = load i8*, i8** %7, align 8, !dbg !131
  %21 = getelementptr inbounds i8, i8* %20, i32 1, !dbg !131
  store i8* %21, i8** %7, align 8, !dbg !131
  %22 = load i8, i8* %20, align 1, !dbg !132
  %23 = sext i8 %22 to i32, !dbg !132
  %24 = load i32, i32* %5, align 4, !dbg !133
  %25 = icmp eq i32 %23, %24, !dbg !134
  %26 = load i32, i32* %5, align 4, !dbg !135
  %27 = icmp eq i32 %26, 46, !dbg !135
  %28 = select i1 %25, i1 true, i1 %27, !dbg !135
  br i1 %28, label %8, label %.critedge, !dbg !136, !llvm.loop !137

.critedge:                                        ; preds = %14, %19
  store i32 0, i32* %4, align 4, !dbg !139
  br label %29, !dbg !139

29:                                               ; preds = %.critedge, %13
  %30 = load i32, i32* %4, align 4, !dbg !140
  ret i32 %30, !dbg !140
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 13.0.1-2ubuntu2.2", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "src/regex.c", directory: "/home/ctouac1265/Documents/smt-with-llms/unsat_examples")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"Ubuntu clang version 13.0.1-2ubuntu2.2"}
!9 = distinct !DISubprogram(name: "match", scope: !1, file: !1, line: 34, type: !10, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !13, !13}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = !DILocalVariable(name: "re", arg: 1, scope: !9, file: !1, line: 34, type: !13)
!16 = !DILocation(line: 34, column: 17, scope: !9)
!17 = !DILocalVariable(name: "text", arg: 2, scope: !9, file: !1, line: 34, type: !13)
!18 = !DILocation(line: 34, column: 27, scope: !9)
!19 = !DILocation(line: 35, column: 7, scope: !20)
!20 = distinct !DILexicalBlock(scope: !9, file: !1, line: 35, column: 7)
!21 = !DILocation(line: 35, column: 13, scope: !20)
!22 = !DILocation(line: 35, column: 7, scope: !9)
!23 = !DILocation(line: 36, column: 22, scope: !20)
!24 = !DILocation(line: 36, column: 24, scope: !20)
!25 = !DILocation(line: 36, column: 28, scope: !20)
!26 = !DILocation(line: 36, column: 12, scope: !20)
!27 = !DILocation(line: 36, column: 5, scope: !20)
!28 = !DILocation(line: 38, column: 19, scope: !29)
!29 = distinct !DILexicalBlock(scope: !30, file: !1, line: 38, column: 9)
!30 = distinct !DILexicalBlock(scope: !9, file: !1, line: 37, column: 6)
!31 = !DILocation(line: 38, column: 23, scope: !29)
!32 = !DILocation(line: 38, column: 9, scope: !29)
!33 = !DILocation(line: 38, column: 9, scope: !30)
!34 = !DILocation(line: 39, column: 7, scope: !29)
!35 = !DILocation(line: 40, column: 17, scope: !9)
!36 = !DILocation(line: 40, column: 12, scope: !9)
!37 = !DILocation(line: 40, column: 20, scope: !9)
!38 = !DILocation(line: 40, column: 3, scope: !30)
!39 = distinct !{!39, !40, !41, !42}
!40 = !DILocation(line: 37, column: 3, scope: !9)
!41 = !DILocation(line: 40, column: 27, scope: !9)
!42 = !{!"llvm.loop.mustprogress"}
!43 = !DILocation(line: 41, column: 3, scope: !9)
!44 = !DILocation(line: 42, column: 1, scope: !9)
!45 = distinct !DISubprogram(name: "matchhere", scope: !1, file: !1, line: 22, type: !10, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!46 = !DILocalVariable(name: "re", arg: 1, scope: !45, file: !1, line: 22, type: !13)
!47 = !DILocation(line: 22, column: 28, scope: !45)
!48 = !DILocalVariable(name: "text", arg: 2, scope: !45, file: !1, line: 22, type: !13)
!49 = !DILocation(line: 22, column: 38, scope: !45)
!50 = !DILocation(line: 23, column: 7, scope: !51)
!51 = distinct !DILexicalBlock(scope: !45, file: !1, line: 23, column: 7)
!52 = !DILocation(line: 23, column: 13, scope: !51)
!53 = !DILocation(line: 23, column: 7, scope: !45)
!54 = !DILocation(line: 24, column: 6, scope: !51)
!55 = !DILocation(line: 25, column: 7, scope: !56)
!56 = distinct !DILexicalBlock(scope: !45, file: !1, line: 25, column: 7)
!57 = !DILocation(line: 25, column: 13, scope: !56)
!58 = !DILocation(line: 25, column: 7, scope: !45)
!59 = !DILocation(line: 26, column: 22, scope: !56)
!60 = !DILocation(line: 26, column: 29, scope: !56)
!61 = !DILocation(line: 26, column: 31, scope: !56)
!62 = !DILocation(line: 26, column: 35, scope: !56)
!63 = !DILocation(line: 26, column: 12, scope: !56)
!64 = !DILocation(line: 26, column: 5, scope: !56)
!65 = !DILocation(line: 27, column: 7, scope: !66)
!66 = distinct !DILexicalBlock(scope: !45, file: !1, line: 27, column: 7)
!67 = !DILocation(line: 27, column: 13, scope: !66)
!68 = !DILocation(line: 27, column: 20, scope: !66)
!69 = !DILocation(line: 27, column: 23, scope: !66)
!70 = !DILocation(line: 27, column: 28, scope: !66)
!71 = !DILocation(line: 27, column: 7, scope: !45)
!72 = !DILocation(line: 28, column: 13, scope: !66)
!73 = !DILocation(line: 28, column: 12, scope: !66)
!74 = !DILocation(line: 28, column: 18, scope: !66)
!75 = !DILocation(line: 28, column: 5, scope: !66)
!76 = !DILocation(line: 29, column: 8, scope: !77)
!77 = distinct !DILexicalBlock(scope: !45, file: !1, line: 29, column: 7)
!78 = !DILocation(line: 29, column: 7, scope: !77)
!79 = !DILocation(line: 29, column: 12, scope: !77)
!80 = !DILocation(line: 29, column: 19, scope: !77)
!81 = !DILocation(line: 29, column: 23, scope: !77)
!82 = !DILocation(line: 29, column: 28, scope: !77)
!83 = !DILocation(line: 29, column: 34, scope: !77)
!84 = !DILocation(line: 29, column: 37, scope: !77)
!85 = !DILocation(line: 29, column: 45, scope: !77)
!86 = !DILocation(line: 29, column: 44, scope: !77)
!87 = !DILocation(line: 29, column: 42, scope: !77)
!88 = !DILocation(line: 29, column: 7, scope: !45)
!89 = !DILocation(line: 30, column: 22, scope: !77)
!90 = !DILocation(line: 30, column: 24, scope: !77)
!91 = !DILocation(line: 30, column: 28, scope: !77)
!92 = !DILocation(line: 30, column: 32, scope: !77)
!93 = !DILocation(line: 30, column: 12, scope: !77)
!94 = !DILocation(line: 30, column: 5, scope: !77)
!95 = !DILocation(line: 31, column: 3, scope: !45)
!96 = !DILocation(line: 32, column: 1, scope: !45)
!97 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 51, type: !98, scopeLine: 51, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!98 = !DISubroutineType(types: !99)
!99 = !{!12}
!100 = !DILocalVariable(name: "re", scope: !97, file: !1, line: 53, type: !101)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 96, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 12)
!104 = !DILocation(line: 53, column: 8, scope: !97)
!105 = !DILocation(line: 56, column: 22, scope: !97)
!106 = !DILocation(line: 56, column: 3, scope: !97)
!107 = !DILocation(line: 59, column: 9, scope: !97)
!108 = !DILocation(line: 59, column: 3, scope: !97)
!109 = !DILocation(line: 61, column: 3, scope: !97)
!110 = distinct !DISubprogram(name: "matchstar", scope: !1, file: !1, line: 14, type: !111, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!111 = !DISubroutineType(types: !112)
!112 = !{!12, !12, !13, !13}
!113 = !DILocalVariable(name: "c", arg: 1, scope: !110, file: !1, line: 14, type: !12)
!114 = !DILocation(line: 14, column: 26, scope: !110)
!115 = !DILocalVariable(name: "re", arg: 2, scope: !110, file: !1, line: 14, type: !13)
!116 = !DILocation(line: 14, column: 35, scope: !110)
!117 = !DILocalVariable(name: "text", arg: 3, scope: !110, file: !1, line: 14, type: !13)
!118 = !DILocation(line: 14, column: 45, scope: !110)
!119 = !DILocation(line: 15, column: 3, scope: !110)
!120 = !DILocation(line: 16, column: 19, scope: !121)
!121 = distinct !DILexicalBlock(scope: !122, file: !1, line: 16, column: 9)
!122 = distinct !DILexicalBlock(scope: !110, file: !1, line: 15, column: 6)
!123 = !DILocation(line: 16, column: 23, scope: !121)
!124 = !DILocation(line: 16, column: 9, scope: !121)
!125 = !DILocation(line: 16, column: 9, scope: !122)
!126 = !DILocation(line: 17, column: 7, scope: !121)
!127 = !DILocation(line: 18, column: 13, scope: !110)
!128 = !DILocation(line: 18, column: 12, scope: !110)
!129 = !DILocation(line: 18, column: 18, scope: !110)
!130 = !DILocation(line: 18, column: 26, scope: !110)
!131 = !DILocation(line: 18, column: 35, scope: !110)
!132 = !DILocation(line: 18, column: 30, scope: !110)
!133 = !DILocation(line: 18, column: 41, scope: !110)
!134 = !DILocation(line: 18, column: 38, scope: !110)
!135 = !DILocation(line: 18, column: 43, scope: !110)
!136 = !DILocation(line: 18, column: 3, scope: !122)
!137 = distinct !{!137, !119, !138, !42}
!138 = !DILocation(line: 18, column: 54, scope: !110)
!139 = !DILocation(line: 19, column: 3, scope: !110)
!140 = !DILocation(line: 20, column: 1, scope: !110)
