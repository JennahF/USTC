add_library(syntax_tree STATIC
	SyntaxTree.c
)
target_link_libraries(syntax_tree)

add_executable(test_syntree test_tree.c)
target_link_libraries(test_syntree syntax_tree)
