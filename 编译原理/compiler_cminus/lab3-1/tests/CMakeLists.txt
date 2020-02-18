add_executable(test_syntax_tree_cpp test_syntax_tree.cpp)
target_link_libraries(test_syntax_tree_cpp
  lex
  syntax
  syntax_tree_cpp
  syntax_tree
)
