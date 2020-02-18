# How to use CMake to build up your project

CMake is used to help developers to build up `Makefile`s for the whole project. Complicated Makefile rules could be simplified into one or several few lines, which means better management.

## 5-minute Guide
First you need to install onto your machine. For example, CMake could be installed with command:
```
(shell) $ sudo apt-get install cmake
```
After installation, you can now generate `Makefile` with specified project path. If you have no interest in how to run CMake, just run shell `do_cmake.sh` **AT THE ROOT DIRECTORY** of the project:
```
(shell) $ ./do_cmake.sh
```
Then a new directory called `build/` appears in your project, with `Makefile` inside. Now build up your project with `make`:
```
(shell) $ make -C bulid/
```
or change directory to `build` directory to make:
```
(shell) $ cd build/
(shell) $ make
```
Done! Your project has been compiled. Your executables are under `build/` directory now. For example, you can run executable(`test_lex`) for lab1 in the root directory:
```
(shell) ./build/test_lex
```

**WARNING: ** Since we care nothing about absolute paths for test cases in source files, executables could not recognize where itself is. It matters if you change directory into `build/` directory to build up your project. Yes you can do that but when testing, your executables find nothing about `testcase/` sub-directory in the `build/` directory and of course end up in failure.

## Details of generating Makefile

So what does `do_cmake.sh` script do?

  - First it trys to get an empty directory named `build/` (Tip: this name is arbitary, or even it is arbitary to choose directory.).
  - Then it change directory into that directory and executes `cmake ..` command. Here `..` means its parent directory (i.e. the root directory).
  
After that, CMake tool generates `Makefile` in the `build/` directory. Further compilations for the project in `build/` generate any possible output files/executables/libraries into `build/` directory, and thus do not pollute the original project.

## Alternative way of building up your project?

As mentioned above, CMake could be used in any directory with `cmake [directory]` ( If no directory is given, CMake generates everything in the current directory. )

You can generate all files in the root directory manually (**NOT RECOMMENDED**) by:
```
cmake
make
```
It is OK and all outputs are together with your source codes, with executables (e.g. `test_lex`) in the root directory. Be careful to commmit to the repository now. If you run `git add .`, all the executables are included in your next commit, and propably synchronized into your remote repository.

# How does '.gitignore' works for CMake?
`.gitignore` file (in the root directory now) defines regular expressions for Git to ignore when it traverses the directory. Ignored files look as if they do not exist.

In this project, `build/` is given in the first line, which means everything under `build/` directory is ignored for Git. Another rule `syntree` does the same thing, and `*.swp` teaches Git to dismiss any file with suffix `.swp`, which filters temporary file for `vim`.

You could add your own rules for your own purposes.