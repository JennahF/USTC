; ModuleID = 'while.c'
source_filename = "while.c"

define i32 @main ( ) {
entry:
    %0 = alloca i32
    %1 = alloca i32
    store i32 10, i32* %0   ;a=10
    store i32 0, i32* %1    ;i=0

    br label %while       ;while basic block前要br

while:
    %2 = load i32, i32* %1
    %3 = icmp slt i32 %2, 10    ;计算i<10, 若为真，%3=true，否则Wiefalse
    br i1 %3, label %true, label %false ;若%3为true，转到true分支，否则转到false分支
    
true:   ;true分支
    %4 = add nsw i32 %2, 1  
    store i32 %4, i32* %1   ;i=i+1

    %5 = load i32, i32* %1
    %6 = load i32, i32* %0

    %7 = add nsw i32 %6, %5
    store i32 %7, i32* %0   ;a=a+i

    br label %while ;   无条件跳转回while basic block进行判断
    
false:  ;false分支
    %9 = load i32, i32* %0
    ret i32 %9  ;返回a的值

}