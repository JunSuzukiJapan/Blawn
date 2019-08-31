; ModuleID = '../builtins/builtins.c'
source_filename = "../builtins/builtins.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.List = type { i64, i64, i64, i8* }
%struct.String = type { i8*, i64 }

@.str = private unnamed_addr constant [63 x i8] c"CRITICAL ERROR: failed to realloc at appending element to self\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Error: list index out of range\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"aaaa\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define %struct.List* @list_constructor(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.List*, align 8
  store i64 %0, i64* %2, align 8
  %4 = call noalias i8* @malloc(i64 32) #5
  %5 = bitcast i8* %4 to %struct.List*
  store %struct.List* %5, %struct.List** %3, align 8
  %6 = load %struct.List*, %struct.List** %3, align 8
  %7 = getelementptr inbounds %struct.List, %struct.List* %6, i32 0, i32 3
  store i8* null, i8** %7, align 8
  %8 = load i64, i64* %2, align 8
  %9 = load %struct.List*, %struct.List** %3, align 8
  %10 = getelementptr inbounds %struct.List, %struct.List* %9, i32 0, i32 2
  store i64 %8, i64* %10, align 8
  %11 = load %struct.List*, %struct.List** %3, align 8
  %12 = getelementptr inbounds %struct.List, %struct.List* %11, i32 0, i32 0
  store i64 0, i64* %12, align 8
  %13 = load %struct.List*, %struct.List** %3, align 8
  %14 = getelementptr inbounds %struct.List, %struct.List* %13, i32 0, i32 1
  store i64 1, i64* %14, align 8
  %15 = load %struct.List*, %struct.List** %3, align 8
  ret %struct.List* %15
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @resize_list(%struct.List*) #0 {
  %2 = alloca %struct.List*, align 8
  %3 = alloca i8*, align 8
  store %struct.List* %0, %struct.List** %2, align 8
  %4 = load %struct.List*, %struct.List** %2, align 8
  %5 = getelementptr inbounds %struct.List, %struct.List* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = mul nsw i64 %6, 2
  store i64 %7, i64* %5, align 8
  %8 = load %struct.List*, %struct.List** %2, align 8
  %9 = getelementptr inbounds %struct.List, %struct.List* %8, i32 0, i32 3
  %10 = load i8*, i8** %9, align 8
  %11 = load %struct.List*, %struct.List** %2, align 8
  %12 = getelementptr inbounds %struct.List, %struct.List* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.List*, %struct.List** %2, align 8
  %15 = getelementptr inbounds %struct.List, %struct.List* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = mul nsw i64 %13, %16
  %18 = call i8* @realloc(i8* %10, i64 %17) #5
  store i8* %18, i8** %3, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %23

; <label>:21:                                     ; preds = %1
  %22 = call i32 @puts(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

; <label>:23:                                     ; preds = %1
  %24 = load i8*, i8** %3, align 8
  %25 = load %struct.List*, %struct.List** %2, align 8
  %26 = getelementptr inbounds %struct.List, %struct.List* %25, i32 0, i32 3
  store i8* %24, i8** %26, align 8
  ret void
}

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #1

declare i32 @puts(i8*) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define i64 @append_to_list(%struct.List*, i8*) #0 {
  %3 = alloca %struct.List*, align 8
  %4 = alloca i8*, align 8
  store %struct.List* %0, %struct.List** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.List*, %struct.List** %3, align 8
  %6 = getelementptr inbounds %struct.List, %struct.List* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add nsw i64 %7, 1
  %9 = load %struct.List*, %struct.List** %3, align 8
  %10 = getelementptr inbounds %struct.List, %struct.List* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp sge i64 %8, %11
  br i1 %12, label %13, label %15

; <label>:13:                                     ; preds = %2
  %14 = load %struct.List*, %struct.List** %3, align 8
  call void @resize_list(%struct.List* %14)
  br label %15

; <label>:15:                                     ; preds = %13, %2
  %16 = load %struct.List*, %struct.List** %3, align 8
  %17 = getelementptr inbounds %struct.List, %struct.List* %16, i32 0, i32 3
  %18 = load i8*, i8** %17, align 8
  %19 = load %struct.List*, %struct.List** %3, align 8
  %20 = getelementptr inbounds %struct.List, %struct.List* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.List*, %struct.List** %3, align 8
  %23 = getelementptr inbounds %struct.List, %struct.List* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = mul nsw i64 %21, %24
  %26 = getelementptr i8, i8* %18, i64 %25
  %27 = load i8*, i8** %4, align 8
  %28 = load %struct.List*, %struct.List** %3, align 8
  %29 = getelementptr inbounds %struct.List, %struct.List* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 %30, i32 1, i1 false)
  %31 = load %struct.List*, %struct.List** %3, align 8
  %32 = getelementptr inbounds %struct.List, %struct.List* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %32, align 8
  ret i64 1
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: noinline nounwind optnone uwtable
define i8* @get_element(%struct.List*, i64) #0 {
  %3 = alloca %struct.List*, align 8
  %4 = alloca i64, align 8
  store %struct.List* %0, %struct.List** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = icmp sle i64 0, %5
  br i1 %6, label %7, label %23

; <label>:7:                                      ; preds = %2
  %8 = load i64, i64* %4, align 8
  %9 = load %struct.List*, %struct.List** %3, align 8
  %10 = getelementptr inbounds %struct.List, %struct.List* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp slt i64 %8, %11
  br i1 %12, label %13, label %23

; <label>:13:                                     ; preds = %7
  %14 = load %struct.List*, %struct.List** %3, align 8
  %15 = getelementptr inbounds %struct.List, %struct.List* %14, i32 0, i32 3
  %16 = load i8*, i8** %15, align 8
  %17 = load %struct.List*, %struct.List** %3, align 8
  %18 = getelementptr inbounds %struct.List, %struct.List* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %4, align 8
  %21 = mul nsw i64 %19, %20
  %22 = getelementptr inbounds i8, i8* %16, i64 %21
  ret i8* %22

; <label>:23:                                     ; preds = %7, %2
  %24 = call i32 @puts(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define void @set_element(%struct.List*, i8*, i64) #0 {
  %4 = alloca %struct.List*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.List* %0, %struct.List** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %6, align 8
  %8 = icmp sle i64 0, %7
  br i1 %8, label %9, label %27

; <label>:9:                                      ; preds = %3
  %10 = load i64, i64* %6, align 8
  %11 = load %struct.List*, %struct.List** %4, align 8
  %12 = getelementptr inbounds %struct.List, %struct.List* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp slt i64 %10, %13
  br i1 %14, label %15, label %27

; <label>:15:                                     ; preds = %9
  %16 = load i8*, i8** %5, align 8
  %17 = ptrtoint i8* %16 to i8
  %18 = load %struct.List*, %struct.List** %4, align 8
  %19 = getelementptr inbounds %struct.List, %struct.List* %18, i32 0, i32 3
  %20 = load i8*, i8** %19, align 8
  %21 = load %struct.List*, %struct.List** %4, align 8
  %22 = getelementptr inbounds %struct.List, %struct.List* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %6, align 8
  %25 = mul nsw i64 %23, %24
  %26 = getelementptr inbounds i8, i8* %20, i64 %25
  store i8 %17, i8* %26, align 1
  br label %29

; <label>:27:                                     ; preds = %9, %3
  %28 = call i32 @puts(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

; <label>:29:                                     ; preds = %15
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @print(%struct.String*) #0 {
  %2 = alloca %struct.String*, align 8
  store %struct.String* %0, %struct.String** %2, align 8
  %3 = load %struct.String*, %struct.String** %2, align 8
  %4 = getelementptr inbounds %struct.String, %struct.String* %3, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* %5)
  ret void
}

declare i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define %struct.String* @string_constructor(i8*, i64) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.String*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = call noalias i8* @malloc(i64 16) #5
  %7 = bitcast i8* %6 to %struct.String*
  store %struct.String* %7, %struct.String** %5, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = load %struct.String*, %struct.String** %5, align 8
  %10 = getelementptr inbounds %struct.String, %struct.String* %9, i32 0, i32 0
  store i8* %8, i8** %10, align 8
  %11 = load i64, i64* %4, align 8
  %12 = load %struct.String*, %struct.String** %5, align 8
  %13 = getelementptr inbounds %struct.String, %struct.String* %12, i32 0, i32 1
  store i64 %11, i64* %13, align 8
  %14 = load %struct.String*, %struct.String** %5, align 8
  ret %struct.String* %14
}

; Function Attrs: noinline nounwind optnone uwtable
define void @append_string(%struct.String*, %struct.String*) #0 {
  %3 = alloca %struct.String*, align 8
  %4 = alloca %struct.String*, align 8
  %5 = alloca i8*, align 8
  store %struct.String* %0, %struct.String** %3, align 8
  store %struct.String* %1, %struct.String** %4, align 8
  %6 = load %struct.String*, %struct.String** %3, align 8
  %7 = getelementptr inbounds %struct.String, %struct.String* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.String*, %struct.String** %4, align 8
  %10 = getelementptr inbounds %struct.String, %struct.String* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %8, %11
  %13 = call noalias i8* @malloc(i64 %12) #5
  store i8* %13, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  store i8 0, i8* %15, align 1
  %16 = load i8*, i8** %5, align 8
  %17 = load %struct.String*, %struct.String** %3, align 8
  %18 = getelementptr inbounds %struct.String, %struct.String* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i8* @strcat(i8* %16, i8* %19) #5
  %21 = load i8*, i8** %5, align 8
  %22 = load %struct.String*, %struct.String** %4, align 8
  %23 = getelementptr inbounds %struct.String, %struct.String* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i8* @strcat(i8* %21, i8* %24) #5
  %26 = load %struct.String*, %struct.String** %4, align 8
  %27 = getelementptr inbounds %struct.String, %struct.String* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.String*, %struct.String** %3, align 8
  %30 = getelementptr inbounds %struct.String, %struct.String* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, %28
  store i64 %32, i64* %30, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = load %struct.String*, %struct.String** %3, align 8
  %35 = getelementptr inbounds %struct.String, %struct.String* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  ret void
}

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @main() #0 {
  %1 = alloca %struct.String*, align 8
  %2 = alloca %struct.List*, align 8
  %3 = call %struct.String* @string_constructor(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i64 4)
  store %struct.String* %3, %struct.String** %1, align 8
  %4 = call %struct.List* @list_constructor(i64 8)
  store %struct.List* %4, %struct.List** %2, align 8
  %5 = load %struct.List*, %struct.List** %2, align 8
  %6 = load %struct.String*, %struct.String** %1, align 8
  %7 = bitcast %struct.String* %6 to i8*
  %8 = call i64 @append_to_list(%struct.List* %5, i8* %7)
  %9 = load %struct.List*, %struct.List** %2, align 8
  %10 = load %struct.String*, %struct.String** %1, align 8
  %11 = bitcast %struct.String* %10 to i8*
  %12 = call i64 @append_to_list(%struct.List* %9, i8* %11)
  %13 = load %struct.List*, %struct.List** %2, align 8
  %14 = call i8* @get_element(%struct.List* %13, i64 1)
  %15 = bitcast i8* %14 to %struct.String*
  %16 = getelementptr inbounds %struct.String, %struct.String* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* %17)
  %19 = load %struct.List*, %struct.List** %2, align 8
  %20 = call i8* @get_element(%struct.List* %19, i64 1)
  %21 = bitcast i8* %20 to %struct.String*
  %22 = getelementptr inbounds %struct.String, %struct.String* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* %23)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}