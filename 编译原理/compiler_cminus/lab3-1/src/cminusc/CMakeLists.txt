add_executable(
  cminusc
  main.cpp
  cminus_builder.cpp
)

target_compile_options(
  cminusc
  PRIVATE "-fno-rtti"
)

target_link_libraries(
  cminusc
  syntax
  syntax_tree
  syntax_tree_cpp
  ${llvm_libs}
)

install(
  TARGETS cminusc
  RUNTIME DESTINATION bin
)
