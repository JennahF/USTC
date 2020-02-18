## LLVM 8.0.1 RISCV使用

llvm 8.0.1中已有riscv支持，但不在默认target列表中，因此支持RISCV仅需要在编译中需要使用LLVM_EXPERIMENTAL_TARGETS_TO_BUILD来指定RISCV为target

```
mkdir build
cd build
cmake -DLLVM_EXPERIMENTAL_TARGETS_TO_BUILD=RISCV -DLLVM_TARGETS_TO_BUILD=X86 ../llvm
make -j2
```

编译需要一段时间，完成后有几种方式来生成riscv执行程序

### 分步生成可执行文件

- 可以先使用clang和llc来对编译程序生成汇编，如

```
bin/clang -emit-llvm --target=riscv32 -march=rv32gc min.c -S -o min.ll  -I/opt/riscv/riscv32-unknown-elf/include
bin/llc -march=riscv32 min.ll -o min.s
或
bin/clang -emit-llvm --target=riscv64 -march=rv64gc min.c -S -o min.ll  -I/opt/riscv/riscv64-unknown-elf/include
bin/llc -march=riscv64 min.ll -o min.s
```

注意: 这里需要用-I显式指定riscv版本库路径，如-I/opt/riscv/riscv32-unknown-elf/include

- 对于生成的汇编，可以使用riscv版的gcc来生成执行程序

```
riscv32-unknown-elf-gcc  min.s -o min.riscv
或
riscv64-unknown-elf-gcc  min.s -o min.riscv
```

- 通过spike来模拟执行

```
spike pk min.riscv
```

注意：当前测试中，pk只支持64位riscv程序

### 直接生成可执行文件

直接使用clang来生成可执行文件：

- 将crt0.o, crtbegin.o, crtend.o拷贝到当前目录

``` 
cp /opt/riscv/riscv32-unknown-elf/lib/crt0.o ./
cp /opt/riscv/lib/gcc/riscv32-unknown-elf/8.3.0/crtbegin.o ./
cp /opt/riscv/lib/gcc/riscv32-unknown-elf/8.3.0/crtend.o ./
```

- 使用clang编译c文件

```
bin/clang --target=riscv64 -march=rv64gc min.c -I/opt/riscv/riscv64-unknown-elf/include -B/opt/riscv/riscv64-unknown-elf/bin/ -L/opt/riscv/lib/gcc/riscv64-unknown-elf/8.3.0/
```

注意：这个版本clang目前不支持lp64d api，因此该步骤需要依赖于libc库是遵循lp64 ABI，即在编译riscv toolchain时添加`--with-abi=lp64`选项