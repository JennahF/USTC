bison_target(syntax syntax_analyzer.y ${CMAKE_CURRENT_BINARY_DIR}/syntax_analyzer.c)
flex_target(lex ${PROJECT_SOURCE_DIR}/lab1_lexical_analyzer/lexical_analyzer.l ${CMAKE_CURRENT_BINARY_DIR}/lex.yy.c)
add_flex_bison_dependency(lex syntax)
add_library(syntax STATIC
	${BISON_syntax_OUTPUTS}
)
target_link_libraries(syntax lex syntax_tree)

add_executable(test_syntax test_syntax.c)
target_link_libraries(test_syntax syntax)
