; ModuleID = 'assign_generator.c'
source_filename = "assign_generator.c"

define i32 @main(){
entry:
    %0 = alloca i32, i32 1  ;变量a的存储空间，1个int
    store i32 1, i32* %0    ;把1赋给a
    %1 = load i32, i32* %0  ;把a的值load上来
    ret i32 %1              ;返回a

}