bison_target(syntax ${PROJECT_SOURCE_DIR}/lab2_syntax_analyzer/syntax_analyzer.y ${CMAKE_CURRENT_BINARY_DIR}/syntax_analyzer.c)
flex_target(lex lexical_analyzer.l ${CMAKE_CURRENT_BINARY_DIR}/lex.yy.c)
add_flex_bison_dependency(lex syntax)
add_library(lex STATIC
	lexical_analyzer.c
	${FLEX_lex_OUTPUTS}
)
target_link_libraries(lex common)

add_executable(test_lex test_lex.c ${FLEX_lex_OUTPUTS})
target_compile_definitions(test_lex PUBLIC LAB1_ONLY)
target_link_libraries(test_lex common)
