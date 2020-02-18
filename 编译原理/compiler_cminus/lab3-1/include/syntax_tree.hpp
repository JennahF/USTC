#ifndef _SYNTAX_TREE_HPP_
#define _SYNTAX_TREE_HPP_
extern "C" {
#include "syntax_tree/SyntaxTree.h"
#include "analyzer/syntax_analyzer.tab.h"
  extern SyntaxTree *syntax(const char *input);
}
#include <vector>
#include <memory>

enum type_specifier {
  TYPE_INT,
  TYPE_VOID
};

enum relop {
  // <=
  OP_LE,
  // <
  OP_LT,
  // >
  OP_GT,
  // >=
  OP_GE,
  // ==
  OP_EQ,
  // !=
  OP_NEQ
};

enum addop {
  // +
  OP_PLUS,
  // -
  OP_MINUS
};

enum mulop {
  // *
  OP_MUL,
  // /
  OP_DIV
};



class syntax_tree;


struct syntax_tree_node;
struct syntax_program ;
struct syntax_declaration;
struct syntax_num;
struct syntax_var_declaration;
struct syntax_fun_declaration;
struct syntax_param;
struct syntax_compound_stmt;
struct syntax_statement;
struct syntax_expresion_stmt;
struct syntax_selection_stmt;
struct syntax_iteration_stmt;
struct syntax_return_stmt;
struct syntax_factor;
struct syntax_expression;
struct syntax_var;
struct syntax_assign_expression;
struct syntax_simple_expression;
struct syntax_additive_expression;
struct syntax_term ;
struct syntax_call;

class syntax_tree_visitor;

class syntax_tree {
public:
  syntax_tree() = delete;
  syntax_tree(SyntaxTree *);
  syntax_tree(syntax_tree &&tree) {
    root = tree.root;
    tree.root = nullptr;
  };
  syntax_program* get_root() { return root.get(); }
  void run_visitor(syntax_tree_visitor& visitor);
private:
  syntax_tree_node* transform_node_iter(SyntaxTreeNode *);
  std::shared_ptr<syntax_program> root = nullptr;
};

struct syntax_tree_node {
  virtual void accept(syntax_tree_visitor&) = 0;
};

struct syntax_program : syntax_tree_node {
  virtual void accept(syntax_tree_visitor&) override final;
  std::vector<std::shared_ptr<syntax_declaration>>
    declarations;
};

struct syntax_declaration: syntax_tree_node {
  virtual void accept(syntax_tree_visitor&) override;
  type_specifier type;
  std::string id;
};

struct syntax_factor: syntax_tree_node {
  virtual void accept(syntax_tree_visitor&) override;
};

struct syntax_num: syntax_factor {
  virtual void accept(syntax_tree_visitor&) override final;
  int value;
};

struct syntax_var_declaration: syntax_declaration {
  virtual void accept(syntax_tree_visitor&) override final;
  std::shared_ptr<syntax_num> num;
};

struct syntax_fun_declaration: syntax_declaration {
  virtual void accept(syntax_tree_visitor&) override final;
  std::vector<std::shared_ptr<syntax_param>> params;
  std::shared_ptr<syntax_compound_stmt> compound_stmt;
};

struct syntax_param: syntax_tree_node {
  virtual void accept(syntax_tree_visitor&) override final;
  type_specifier type;
  std::string id;
  // true if it is array param
  bool isarray;
};

struct syntax_statement : syntax_tree_node {
  virtual void accept(syntax_tree_visitor&) override;
};

struct syntax_compound_stmt: syntax_statement {
  virtual void accept(syntax_tree_visitor&) override final;
  std::vector<std::shared_ptr<syntax_var_declaration>> local_declarations;
  std::vector<std::shared_ptr<syntax_statement>> statement_list;
};

struct syntax_expresion_stmt: syntax_statement { 
  virtual void accept(syntax_tree_visitor&) override final;
  std::shared_ptr<syntax_expression> expression; 
};

struct syntax_selection_stmt: syntax_statement {
  virtual void accept(syntax_tree_visitor&) override final;
  std::shared_ptr<syntax_expression> expression; 
  std::shared_ptr<syntax_statement> if_statement;
  // should be nullptr if no else structure exists
  std::shared_ptr<syntax_statement> else_statement;
};

struct syntax_iteration_stmt: syntax_statement {
  virtual void accept(syntax_tree_visitor&) override final;
  std::shared_ptr<syntax_expression> expression; 
  std::shared_ptr<syntax_statement> statement;
};

struct syntax_return_stmt: syntax_statement {
  virtual void accept(syntax_tree_visitor&) override final;
  // should be nullptr if return void
  std::shared_ptr<syntax_expression> expression; 
};

struct syntax_expression: syntax_factor {
  virtual void accept(syntax_tree_visitor&) override;
};

struct syntax_assign_expression: syntax_expression {
  virtual void accept(syntax_tree_visitor&) override final;
  std::shared_ptr<syntax_var> var;
  std::shared_ptr<syntax_expression> expression;
};

struct syntax_simple_expression: syntax_expression {
  virtual void accept(syntax_tree_visitor&) override final;
  std::shared_ptr<syntax_additive_expression> additive_expression_l;
  std::shared_ptr<syntax_additive_expression> additive_expression_r;
  relop op;
};

struct syntax_var: syntax_factor {
  virtual void accept(syntax_tree_visitor&) override final;
  std::string id;
  // nullptr if var is of int type
  std::shared_ptr<syntax_expression> expression;
};

struct syntax_additive_expression: syntax_tree_node {
  virtual void accept(syntax_tree_visitor&) override final;
  std::shared_ptr<syntax_additive_expression> additive_expression;
  addop op;
  std::shared_ptr<syntax_term> term;
};

struct syntax_term : syntax_tree_node {
  virtual void accept(syntax_tree_visitor&) override final;
  std::shared_ptr<syntax_term> term;
  mulop op;
  std::shared_ptr<syntax_factor> factor;
};

struct syntax_call: syntax_factor {
  virtual void accept(syntax_tree_visitor&) override final;
  std::string id;
  std::vector<std::shared_ptr<syntax_expression>> args;
};

class syntax_tree_visitor {
public:
  virtual void visit(syntax_program &) = 0;
  virtual void visit(syntax_num &) = 0;
  virtual void visit(syntax_var_declaration &) = 0;
  virtual void visit(syntax_fun_declaration &) = 0;
  virtual void visit(syntax_param &) = 0;
  virtual void visit(syntax_compound_stmt &) = 0;
  virtual void visit(syntax_expresion_stmt &) = 0;
  virtual void visit(syntax_selection_stmt &) = 0;
  virtual void visit(syntax_iteration_stmt &) = 0;
  virtual void visit(syntax_return_stmt &) = 0;
  virtual void visit(syntax_assign_expression &) = 0;
  virtual void visit(syntax_simple_expression &) = 0;
  virtual void visit(syntax_additive_expression &) = 0;
  virtual void visit(syntax_var &) = 0;
  virtual void visit(syntax_term &) = 0;
  virtual void visit(syntax_call &) = 0;
};

class syntax_tree_printer : public syntax_tree_visitor {
public:
  virtual void visit(syntax_program &) override final;
  virtual void visit(syntax_num &) override final;
  virtual void visit(syntax_var_declaration &) override final;
  virtual void visit(syntax_fun_declaration &) override final;
  virtual void visit(syntax_param &) override final;
  virtual void visit(syntax_compound_stmt &) override final;
  virtual void visit(syntax_expresion_stmt &) override final;
  virtual void visit(syntax_selection_stmt &) override final;
  virtual void visit(syntax_iteration_stmt &) override final;
  virtual void visit(syntax_return_stmt &) override final;
  virtual void visit(syntax_assign_expression &) override final;
  virtual void visit(syntax_simple_expression &) override final;
  virtual void visit(syntax_additive_expression &) override final;
  virtual void visit(syntax_var &) override final;
  virtual void visit(syntax_term &) override final;
  virtual void visit(syntax_call &) override final;
  void add_depth() { depth += 2; }
  void remove_depth() { depth -= 2; }
private:
  int depth = 0;
};
#endif
