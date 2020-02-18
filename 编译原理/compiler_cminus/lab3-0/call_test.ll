; ModuleID = 'call'
source_filename = "call"

define i32 @callee(i32*) {
entry:
  %1 = alloca i32*
  %2 = alloca i32
  store i32* %0, i32** %1
  %3 = load i32*, i32** %1
  %4 = mul i32 2, i32* %3
  store i32 %4, i32* %2
  %5 = load i32, i32* %2
  ret i32 %5
}

define i32 @main() {
entry:
  %0 = call i32 @callee(i32 10)
  %1 = alloca i32
  store i32 %0, i32* %1
  ret i32* %1
}