; ModuleID = 'Blawn'
source_filename = "Blawn"

%struct.String = type { i8*, i64 }

declare i64* @malloc(i64)

declare void @free(i64*)

declare %struct.String* @string_constructor(i8*, i64)

declare void @append_string(%struct.String*, %struct.String*)

declare void @print(%struct.String*)

declare i8* @to_char_ptr(%struct.String*)

declare %struct.String* @int_to_str(i64)

declare %struct.String* @float_to_str(double)

define i8 @i64_to_i8(i64) {
i64_to_i8:
  %1 = trunc i64 %0 to i8
  ret i8 %1
}

define i32 @i64_to_i32(i64) {
i64_to_i32:
  %1 = trunc i64 %0 to i32
  ret i32 %1
}

define i8 @i32_to_i8(i32) {
i32_to_i8:
  %1 = trunc i32 %0 to i8
  ret i8 %1
}

define i32 @i8_to_i32(i8) {
i8_to_i32:
  %1 = zext i8 %0 to i32
  ret i32 %1
}

define i64 @i32_to_i64(i32) {
i32_to_i64:
  %1 = zext i32 %0 to i64
  ret i64 %1
}

define i64 @i8_to_i64(i8) {
i8_to_i64:
  %1 = zext i8 %0 to i64
  ret i64 %1
}

declare void @blawn_memcpy(i8*, i64, i64, i8*)

declare i8* @blawn_realloc(i8*, i64, i64)

declare i8* @blawn_index(i8*, i64, i64, i64)

declare i8* @blawn_set_element(i8*, i64, i64, i8*, i64)

define i8 @main() {
entry:
  %m = alloca i64
  store i64 3, i64* %m
  %0 = load i64, i64* %m
  %n = alloca i64
  store i64 5, i64* %n
  %1 = load i64, i64* %n
  %2 = load i64, i64* %m
  %3 = load i64, i64* %n
  %4 = icmp slt i64 %2, %3
  br i1 %4, label %"then of if expr", label %"else of if_expr"

"then of if expr":                                ; preds = %entry
  %ret = alloca i64
  store i64 1, i64* %ret
  %5 = load i64, i64* %ret
  br label %"merge of if_expr"

"else of if_expr":                                ; preds = %entry
  %6 = load i64, i64* %ret
  store i64 0, i64* %ret
  %7 = load i64, i64* %ret
  br label %"merge of if_expr"

"merge of if_expr":                               ; preds = %"else of if_expr", %"then of if expr"
  %condtmp = phi i64 [ %5, %"then of if expr" ], [ %7, %"else of if_expr" ]
  %x = alloca i64
  store i64 %condtmp, i64* %x
  %8 = load i64, i64* %x
  %9 = load i64, i64* %x
  %10 = call %struct.String* @int_to_str(i64 %9)
  call void @print(%struct.String* %10)
  %11 = load i64, i64* %m
  store i64 3, i64* %m
  %12 = load i64, i64* %m
  %13 = load i64, i64* %n
  store i64 1, i64* %n
  %14 = load i64, i64* %n
  %15 = load i64, i64* %x
  %16 = load i64, i64* %m
  %17 = load i64, i64* %n
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %"then of if expr1", label %"else of if_expr2"

"then of if expr1":                               ; preds = %"merge of if_expr"
  %19 = load i64, i64* %ret
  store i64 1, i64* %ret
  %20 = load i64, i64* %ret
  br label %"merge of if_expr3"

"else of if_expr2":                               ; preds = %"merge of if_expr"
  %21 = load i64, i64* %ret
  store i64 0, i64* %ret
  %22 = load i64, i64* %ret
  br label %"merge of if_expr3"

"merge of if_expr3":                              ; preds = %"else of if_expr2", %"then of if expr1"
  %condtmp4 = phi i64 [ %20, %"then of if expr1" ], [ %22, %"else of if_expr2" ]
  store i64 %condtmp4, i64* %x
  %23 = load i64, i64* %x
  %24 = load i64, i64* %x
  %25 = call %struct.String* @int_to_str(i64 %24)
  call void @print(%struct.String* %25)
  ret i8 0
}
