add_library(lex STATIC lex.yy.c)
add_library(syntax STATIC syntax_analyzer.tab.c)
target_link_libraries(syntax lex)
