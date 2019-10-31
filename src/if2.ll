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
  %0 = call i64 @lt.2(i64 5, i64 7)
  %x = alloca i64
  store i64 %0, i64* %x
  %1 = load i64, i64* %x
  %2 = load i64, i64* %x
  %3 = call %struct.String* @int_to_str(i64 %2)
  call void @print(%struct.String* %3)
  ret i8 0
}

declare void @lt()

define i64 @lt.2(i64 %m, i64 %n) {
entry:
  %0 = alloca i64
  store i64 %m, i64* %0
  %1 = alloca i64
  store i64 %n, i64* %1
  %2 = load i64, i64* %0
  %3 = load i64, i64* %1
  %4 = icmp slt i64 %2, %3
  br i1 %4, label %"then of if expr", label %"else of if_expr"

"then of if expr":                                ; preds = %entry
  br label %"merge of if_expr"

"else of if_expr":                                ; preds = %entry
  br label %"merge of if_expr"

"merge of if_expr":                               ; preds = %"else of if_expr", %"then of if expr"
  %condtmp = phi i64 [ 1, %"then of if expr" ], [ 0, %"else of if_expr" ]
  ret i64 %condtmp
}
