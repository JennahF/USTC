; ModuleID = 'if.c'
source_filename = "if.c"

define i32 @main(){
entry:
    %0 = icmp sgt i32 2, 1              ;计算2>1，若为真，%0=true，否则为false
    br i1 %0, label %true, label %false ;若%0为ture，转到true分支，否则转到false分支
true:
    ret i32 1   ;return 1
false:
    ret i32 0   ;return 0
}