; ModuleID = 'call.c'
source_filename = "call.c"

define dso_local i32 @callee (i32) #0 { ;callee函数，%0为函数参数
    %2 = alloca i32
    store i32 %0, i32* %2   ;先把a的值存下来
    %3 = load i32, i32* %2  ;再把a的值load上来
    %4 = mul i32 2, %3      ;计算a*2的值放在%4中
    ret i32 %4              ;返回%4的值
}

define dso_local i32 @main(){   ;main函数
    %1 =  call i32 @callee(i32 10)  ;调用callee函数，传参数10，结果放在%1
    ret i32 %1
}