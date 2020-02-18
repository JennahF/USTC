#include "syntax_tree.hpp"
#include <cstring>
#include <stack>
#include <iostream>
#define _SYNTAX_TREE_NODE_ERROR_ \
  std::cerr << "Abort due to node cast error."\
  "Contact with TAs to solve your problem."\
  << std::endl;\
  std::abort();
#define _STR_EQ(a, b) (strcmp((a), (b)) == 0)

void syntax_tree::run_visitor(syntax_tree_visitor &visitor) {
  root->accept(visitor);
}

syntax_tree::syntax_tree(SyntaxTree* s) {
  if (s == nullptr) {
    std::cerr << "empty input tree!" << std::endl;
    std::abort();
  }
  auto node = transform_node_iter(s->root);
  deleteSyntaxTree(s);
  root = std::shared_ptr<syntax_program>(
      static_cast<syntax_program *>(node));
}

syntax_tree_node *
syntax_tree::transform_node_iter(SyntaxTreeNode* n) {
  if (_STR_EQ(n->name, "program")) {
    auto node = new syntax_program();

    // flatten declaration list
    std::stack<SyntaxTreeNode *> s;
    auto list_ptr = n->children[0];
    while (list_ptr->children_num == 2) {
      s.push(list_ptr->children[1]);
      list_ptr = list_ptr->children[0];
    }
    s.push(list_ptr->children[0]);

    while (!s.empty()) {
      auto child_node = static_cast<syntax_declaration*>(
          transform_node_iter(s.top()));

      auto child_node_shared =
        std::shared_ptr<syntax_declaration>(child_node);
      node->declarations.push_back(child_node_shared);
      s.pop();
    }
    return node;
  } else if (_STR_EQ(n->name, "declaration")) {
    return transform_node_iter(n->children[0]);
  } else if (_STR_EQ(n->name, "var-declaration")) {
    auto node = new syntax_var_declaration();
    node->type = TYPE_INT;
    // type-specifier IDENTIFIER SEMICOLON
    if (n->children_num == 3) {
      node->id = n->children[1]->name;
    } else if (n->children_num == 6) {
      node->id = n->children[1]->name;
      int num = std::stoi(n->children[3]->name);
      auto num_node = std::make_shared<syntax_num>();
      num_node->value = num;
      node->num = num_node;
    } else {
      std::cerr << "[syntax_tree]: var-declaration transform failure!" << std::endl;
      std::abort();
    }
    return node;
  } else if (_STR_EQ(n->name, "fun-declaration")) {
    auto node = new syntax_fun_declaration();
    if (_STR_EQ(n->children[0]->children[0]->name, "int")) {
      node->type = TYPE_INT;
    } else {
      node->type = TYPE_VOID;
    }

    node->id = n->children[1]->name;

    // flatten params
    std::stack<SyntaxTreeNode *> s;
    auto list_ptr = n->children[3]->children[0];
    if (list_ptr->children_num != 0) {
      if (list_ptr->children_num == 3) {
        while (list_ptr->children_num == 3) {
          s.push(list_ptr->children[2]);
          list_ptr = list_ptr->children[0];
        }
      }
      s.push(list_ptr->children[0]);

      while (!s.empty()) {
        auto child_node = static_cast<syntax_param*>(
            transform_node_iter(s.top()));

        auto child_node_shared =
          std::shared_ptr<syntax_param>(child_node);
        node->params.push_back(child_node_shared);
        s.pop();
      }
    }

    auto stmt_node =
      static_cast<syntax_compound_stmt *>(
          transform_node_iter(n->children[5]));
    node->compound_stmt = std::shared_ptr<syntax_compound_stmt>(stmt_node);
    return node;
  } else if (_STR_EQ(n->name, "param")) {
    auto node = new syntax_param();
    node->type = TYPE_INT;
    node->id = n->children[1]->name;
    if (n->children_num == 3)
      node->isarray = true;
    return node;
  } else if (_STR_EQ(n->name, "compound-stmt")) {
    auto node = new syntax_compound_stmt();
    if (n->children[1]->children_num ==  2) {
      // flatten local declarations
      auto list_ptr = n->children[1];
      std::stack<SyntaxTreeNode *> s;
      while (list_ptr->children_num == 2) {
        s.push(list_ptr->children[1]);
        list_ptr = list_ptr->children[0];
      }

      while (!s.empty()) {
        auto decl_node =
          static_cast<syntax_var_declaration*>(
              transform_node_iter(s.top()));
        auto decl_node_ptr = std::shared_ptr<syntax_var_declaration>(decl_node);
        node->local_declarations.push_back(decl_node_ptr);
        s.pop();
      }
    }

    if (n->children[2]->children_num ==  2) {
      // flatten statement-list
      auto list_ptr = n->children[2];
      std::stack<SyntaxTreeNode *> s;
      while (list_ptr->children_num == 2) {
        s.push(list_ptr->children[1]);
        list_ptr = list_ptr->children[0];
      }

      while (!s.empty()) {
        auto stmt_node =
          static_cast<syntax_statement *>(
              transform_node_iter(s.top()));
        auto stmt_node_ptr = std::shared_ptr<syntax_statement>(stmt_node);
        node->statement_list.push_back(stmt_node_ptr);
        s.pop();
      }
    }
    return node;
  } else if (_STR_EQ(n->name, "statement")) {
    return transform_node_iter(n->children[0]);
  } else if (_STR_EQ(n->name, "expression-stmt")) {
    auto node = new syntax_expresion_stmt();
    if (n->children_num == 2) {
      auto expr_node =
        static_cast<syntax_expression *>(
            transform_node_iter(n->children[0]));

      auto expr_node_ptr = std::shared_ptr<syntax_expression>(expr_node);
      node->expression = expr_node_ptr;
    }
    return node;
  } else if (_STR_EQ(n->name, "selection-stmt")) {
    auto node = new syntax_selection_stmt();

    auto expr_node =
      static_cast<syntax_expression *>(
          transform_node_iter(n->children[2]));
    auto expr_node_ptr = std::shared_ptr<syntax_expression>(expr_node);
    node->expression = expr_node_ptr;

    auto if_stmt_node =
      static_cast<syntax_statement *>(
          transform_node_iter(n->children[4]));
    auto if_stmt_node_ptr = std::shared_ptr<syntax_statement>(if_stmt_node);
    node->if_statement = if_stmt_node_ptr;

    // check whether this selection statement contains
    // else structure
    if (n->children_num == 7) {
      auto else_stmt_node =
        static_cast<syntax_statement *>(
            transform_node_iter(n->children[6]));
      auto else_stmt_node_ptr = std::shared_ptr<syntax_statement>(else_stmt_node);
      node->else_statement = else_stmt_node_ptr;
    }

    return node;
  } else if (_STR_EQ(n->name, "iteration-stmt")) {
    auto node = new syntax_iteration_stmt();

    auto expr_node =
      static_cast<syntax_expression *>(
          transform_node_iter(n->children[2]));
    auto expr_node_ptr = std::shared_ptr<syntax_expression>(expr_node);
    node->expression = expr_node_ptr;

    auto stmt_node =
      static_cast<syntax_statement *>(
          transform_node_iter(n->children[4]));
    auto stmt_node_ptr = std::shared_ptr<syntax_statement>(stmt_node);
    node->statement = stmt_node_ptr;

    return node;
  } else if (_STR_EQ(n->name, "return-stmt")) {
    auto node = new syntax_return_stmt();
    if (n->children_num == 3) {
      auto expr_node =
        static_cast<syntax_expression *>(
            transform_node_iter(n->children[1]));
      node->expression =
        std::shared_ptr<syntax_expression>(expr_node);
    }
    return node;
  } else if (_STR_EQ(n->name, "expression")) {
    // simple-expression
    if (n->children_num == 1) {
      return transform_node_iter(n->children[0]);
    }
    auto node = new syntax_assign_expression();

    auto var_node =
      static_cast<syntax_var *>(
          transform_node_iter(n->children[0]));
    node->var = std::shared_ptr<syntax_var>(var_node);

    auto expr_node =
      static_cast<syntax_expression *>(
          transform_node_iter(n->children[2]));
    node->expression =
      std::shared_ptr<syntax_expression>(expr_node);

    return node;
  } else if (_STR_EQ(n->name, "var")) {
    auto node = new syntax_var();
    node->id = n->children[0]->name;
    if (n->children_num == 4) {
      auto expr_node =
        static_cast<syntax_expression *>(
            transform_node_iter(n->children[2]));
      node->expression =
        std::shared_ptr<syntax_expression>(expr_node);
    }
    return node;
  } else if (_STR_EQ(n->name, "simple-expression")) {
    auto node = new syntax_simple_expression();
    auto expr_node_1 =
      static_cast<syntax_additive_expression *>(
          transform_node_iter(n->children[0]));
    node->additive_expression_l =
      std::shared_ptr<syntax_additive_expression>(expr_node_1);

    if (n->children_num == 3) {
      auto op_name = n->children[1]->children[0]->name;
      if (_STR_EQ(op_name, "<="))
        node->op = OP_LE;
      else if (_STR_EQ(op_name, "<"))
        node->op = OP_LT;
      else if (_STR_EQ(op_name, ">"))
        node->op = OP_GT;
      else if (_STR_EQ(op_name, ">="))
        node->op = OP_GE;
      else if (_STR_EQ(op_name, "=="))
        node->op = OP_EQ;
      else if (_STR_EQ(op_name, "!="))
        node->op = OP_NEQ;

      auto expr_node_2 =
        static_cast<syntax_additive_expression *>(
            transform_node_iter(n->children[2]));
      node->additive_expression_r =
        std::shared_ptr<syntax_additive_expression>(expr_node_2);
    }
    return node;
  } else if (_STR_EQ(n->name, "additive-expression")) {
    auto node = new syntax_additive_expression();
    if (n->children_num == 3) {
      auto add_expr_node =
        static_cast<syntax_additive_expression *>(
            transform_node_iter(n->children[0]));
      node->additive_expression =
        std::shared_ptr<syntax_additive_expression>(add_expr_node);

      auto op_name = n->children[1]->children[0]->name;
      if (_STR_EQ(op_name, "+"))
        node->op = OP_PLUS;
      else if (_STR_EQ(op_name, "-"))
        node->op = OP_MINUS;

      auto term_node =
        static_cast<syntax_term *>(
            transform_node_iter(n->children[2]));
      node->term = std::shared_ptr<syntax_term>(term_node);
    } else {
      auto term_node =
        static_cast<syntax_term *>(
            transform_node_iter(n->children[0]));
      node->term = std::shared_ptr<syntax_term>(term_node);
    }
    return node;
  } else if (_STR_EQ(n->name, "term")) {
    auto node = new syntax_term();
    if (n->children_num == 3) {
      auto term_node =
        static_cast<syntax_term *>(
            transform_node_iter(n->children[0]));
      node->term =
        std::shared_ptr<syntax_term>(term_node);

      auto op_name = n->children[1]->children[0]->name;
      if (_STR_EQ(op_name, "*"))
        node->op = OP_MUL;
      else if (_STR_EQ(op_name, "/"))
        node->op = OP_DIV;

      auto factor_node =
        static_cast<syntax_factor *>(
            transform_node_iter(n->children[2]));
      node->factor = std::shared_ptr<syntax_factor>(factor_node);
    } else {
      auto factor_node =
        static_cast<syntax_factor *>(
            transform_node_iter(n->children[0]));
      node->factor = std::shared_ptr<syntax_factor>(factor_node);
    }
    return node;
  } else if (_STR_EQ(n->name, "factor")) {
    int i = 0;
    if (n->children_num == 3)
      i = 1;
    auto name = n->children[i]->name;
    if (_STR_EQ(name, "expression") ||
        _STR_EQ(name, "var") ||
        _STR_EQ(name, "call"))
      return transform_node_iter(n->children[i]);
    else {
      auto num_node = new syntax_num();
      num_node->value = std::stoi(n->children[i]->name);
      return num_node;
    }
  } else if (_STR_EQ(n->name, "call")) {
    auto node = new syntax_call();
    node->id = n->children[0]->name;
    // flatten args
    if (_STR_EQ(n->children[2]->children[0]->name, "arg-list")) {
      auto list_ptr = n->children[2]->children[0];
      auto s = std::stack<SyntaxTreeNode *>();
      while (list_ptr->children_num == 3) {
        s.push(list_ptr->children[2]);
        list_ptr = list_ptr->children[0];
      }
      s.push(list_ptr->children[0]);

      while (!s.empty()) {
        auto expr_node =
          static_cast<syntax_expression *>(
              transform_node_iter(s.top()));
        auto expr_node_ptr =
          std::shared_ptr<syntax_expression>(expr_node);
        node->args.push_back(expr_node_ptr);
        s.pop();
      }
    }
    return node;
  } else {
    std::cerr << "[syntax_tree]: transform failure!" << std::endl;
    std::abort();
  }
}

void syntax_program::accept(syntax_tree_visitor &visitor) { visitor.visit(*this); }
void syntax_num::accept(syntax_tree_visitor &visitor) { visitor.visit(*this); }
void syntax_var_declaration::accept(syntax_tree_visitor &visitor) { visitor.visit(*this); }
void syntax_fun_declaration::accept(syntax_tree_visitor &visitor) { visitor.visit(*this); }
void syntax_param::accept(syntax_tree_visitor &visitor) { visitor.visit(*this); }
void syntax_compound_stmt::accept(syntax_tree_visitor &visitor) { visitor.visit(*this); }
void syntax_expresion_stmt::accept(syntax_tree_visitor &visitor) { visitor.visit(*this); }
void syntax_selection_stmt::accept(syntax_tree_visitor &visitor) { visitor.visit(*this); }
void syntax_iteration_stmt::accept(syntax_tree_visitor &visitor) { visitor.visit(*this); }
void syntax_return_stmt::accept(syntax_tree_visitor &visitor) { visitor.visit(*this); }
void syntax_assign_expression::accept(syntax_tree_visitor &visitor) { visitor.visit(*this); }
void syntax_simple_expression::accept(syntax_tree_visitor &visitor) { visitor.visit(*this); }
void syntax_additive_expression::accept(syntax_tree_visitor &visitor) { visitor.visit(*this); }
void syntax_var::accept(syntax_tree_visitor &visitor) { visitor.visit(*this); }
void syntax_term::accept(syntax_tree_visitor &visitor) { visitor.visit(*this); }
void syntax_call::accept(syntax_tree_visitor &visitor) { visitor.visit(*this); }

void syntax_factor::accept(syntax_tree_visitor &visitor) {
  auto expr =
    dynamic_cast<syntax_expression *>(this);
  if (expr) {
    expr->accept(visitor);
    return;
  }

  auto var =
    dynamic_cast<syntax_var *>(this);
  if (var) {
    var->accept(visitor);
    return;
  }

  auto call =
    dynamic_cast<syntax_call *>(this);
  if (call) {
    call->accept(visitor);
    return;
  }

  auto num =
    dynamic_cast<syntax_num *>(this);
  if (num) {
    num->accept(visitor);
    return;
  }

  _SYNTAX_TREE_NODE_ERROR_
}

void syntax_declaration::accept(syntax_tree_visitor&visitor) {
  auto var_decl =
    dynamic_cast<syntax_var_declaration *>(this);
  if (var_decl) {
    var_decl->accept(visitor);
    return;
  }
  auto fun_decl =
    dynamic_cast<syntax_fun_declaration *>(this);
  if (fun_decl) {
    fun_decl->accept(visitor);
    return;
  }
  _SYNTAX_TREE_NODE_ERROR_
}

void syntax_statement::accept(syntax_tree_visitor &visitor) {
  auto comp_stmt =
    dynamic_cast<syntax_compound_stmt *>(this);
  if (comp_stmt) {
    comp_stmt->accept(visitor);
    return;
  }

  auto expr_stmt =
    dynamic_cast<syntax_expresion_stmt *>(this);
  if (expr_stmt) {
    expr_stmt->accept(visitor);
    return;
  }

  auto sele_stmt =
    dynamic_cast<syntax_selection_stmt *>(this);
  if (sele_stmt) {
    sele_stmt->accept(visitor);
    return;
  }

  auto iter_stmt =
    dynamic_cast<syntax_iteration_stmt *>(this);
  if (iter_stmt) {
    iter_stmt->accept(visitor);
    return;
  }

  auto ret_stmt =
    dynamic_cast<syntax_return_stmt *>(this);
  if (ret_stmt) {
    ret_stmt->accept(visitor);
    return;
  }
  _SYNTAX_TREE_NODE_ERROR_
}

void syntax_expression::accept(syntax_tree_visitor &visitor) {
  auto simple_expr =
    dynamic_cast<syntax_simple_expression *>(this);
  if (simple_expr) {
    simple_expr->accept(visitor);
    return;
  }

  auto assign_expr =
    dynamic_cast<syntax_assign_expression *>(this);
  if (assign_expr) {
    assign_expr->accept(visitor);
    return;
  }
  _SYNTAX_TREE_NODE_ERROR_
}

#define _DEBUG_PRINT_N_(N) {\
  std::cout << std::string(N, '-');\
}

void syntax_tree_printer::visit(syntax_program &node) {
  _DEBUG_PRINT_N_(depth);
  std::cout << "program" << std::endl;
  add_depth();
  for (auto decl: node.declarations) {
    decl->accept(*this);
  }
  remove_depth();
}

void syntax_tree_printer::visit(syntax_num &node) {
  _DEBUG_PRINT_N_(depth);
  std::cout << "num: " << node.value <<  std::endl;
}

void syntax_tree_printer::visit(syntax_var_declaration &node) {
  _DEBUG_PRINT_N_(depth);
  std::cout << "var-declaration: " << node.id;
  if (node.num != nullptr) {
    std::cout << "[]" << std::endl;
    add_depth();
    node.num->accept(*this);
    remove_depth();
    return;
  }
  std::cout << std::endl;
}

void syntax_tree_printer::visit(syntax_fun_declaration &node) {
  _DEBUG_PRINT_N_(depth);
  std::cout << "fun-declaration: " << node.id << std::endl;
  add_depth();
  for (auto param: node.params) {
    param->accept(*this);
  }

  node.compound_stmt->accept(*this);
  remove_depth();
}

void syntax_tree_printer::visit(syntax_param &node) {
  _DEBUG_PRINT_N_(depth);
  std::cout << "param: " << node.id;
  if (node.isarray)
    std::cout << "[]";
  std::cout << std::endl;
}

void syntax_tree_printer::visit(syntax_compound_stmt &node) {
  _DEBUG_PRINT_N_(depth);
  std::cout << "compound-stmt" << std::endl;
  add_depth();
  for (auto decl: node.local_declarations) {
    decl->accept(*this);
  }

  for (auto stmt: node.statement_list) {
    stmt->accept(*this);
  }
  remove_depth();
}

void syntax_tree_printer::visit(syntax_expresion_stmt &node) {
  _DEBUG_PRINT_N_(depth);
  std::cout << "expression-stmt" << std::endl;
  add_depth();
  if (node.expression != nullptr)
    node.expression->accept(*this);
  remove_depth();
}

void syntax_tree_printer::visit(syntax_selection_stmt &node) {
  _DEBUG_PRINT_N_(depth);
  std::cout << "selection-stmt" << std::endl;
  add_depth();
  node.expression->accept(*this);
  node.if_statement->accept(*this);
  if (node.else_statement != nullptr)
  node.else_statement->accept(*this);
  remove_depth();
}

void syntax_tree_printer::visit(syntax_iteration_stmt &node) {
  _DEBUG_PRINT_N_(depth);
  std::cout << "iteration-stmt" << std::endl;
  add_depth();
  node.expression->accept(*this);
  node.statement->accept(*this);
  remove_depth();
}

void syntax_tree_printer::visit(syntax_return_stmt &node) {
  _DEBUG_PRINT_N_(depth);
  std::cout << "return-stmt";
  if (node.expression == nullptr) {
    std::cout << ": void" << std::endl;
  } else {
    std::cout << std::endl;
    add_depth();
    node.expression->accept(*this);
    remove_depth();
  }
}

void syntax_tree_printer::visit(syntax_assign_expression &node) {
  _DEBUG_PRINT_N_(depth);
  std::cout << "assign-expression" << std::endl;
  add_depth();
  node.var->accept(*this);
  node.expression->accept(*this);
  remove_depth();
}

void syntax_tree_printer::visit(syntax_simple_expression &node) {
  _DEBUG_PRINT_N_(depth);
  std::cout << "simple-expression";
  if (node.additive_expression_r == nullptr) {
    std::cout << std::endl;
  } else {
    std::cout << ": ";
    if (node.op == OP_LT) {
      std::cout << "<";
    } else if (node.op == OP_LE) {
      std::cout << "<=";
    } else if (node.op == OP_GE) {
      std::cout << ">=";
    } else if (node.op == OP_GT) {
      std::cout << ">";
    } else if (node.op == OP_EQ) {
      std::cout << "==";
    } else if (node.op == OP_NEQ) {
      std::cout << "!=";
    } else {
      std::abort();
    }
    std::cout << std::endl;
  }
  add_depth();
  node.additive_expression_l->accept(*this);
  if (node.additive_expression_r != nullptr)
    node.additive_expression_r->accept(*this);
  remove_depth();
}

void syntax_tree_printer::visit(syntax_additive_expression &node) {
  _DEBUG_PRINT_N_(depth);
  std::cout << "additive-expression";
  if (node.additive_expression == nullptr) {
    std::cout << std::endl;
  } else {
    std::cout << ": ";
    if (node.op == OP_PLUS) {
      std::cout << "+";
    } else if (node.op == OP_MINUS) {
      std::cout << "-";
    } else {
      std::abort();
    }
    std::cout << std::endl;
  }
  add_depth();
  if (node.additive_expression != nullptr)
    node.additive_expression->accept(*this);
  node.term->accept(*this);
  remove_depth();
}

void syntax_tree_printer::visit(syntax_var &node) {
  _DEBUG_PRINT_N_(depth);
  std::cout << "var: " << node.id;
  if (node.expression != nullptr) {
    std::cout << "[]" << std::endl;
    add_depth();
    node.expression->accept(*this);
    remove_depth();
    return;
  }
  std::cout << std::endl;
}

void syntax_tree_printer::visit(syntax_term &node) {
  _DEBUG_PRINT_N_(depth);
  std::cout << "term";
  if (node.term == nullptr) {
    std::cout << std::endl;
  } else {
    std::cout << ": ";
    if (node.op == OP_MUL) {
      std::cout << "*";
    } else if (node.op == OP_DIV) {
      std::cout << "/";
    } else {
      std::abort();
    }
    std::cout << std::endl;
  }
  add_depth();
  if (node.term != nullptr)
    node.term->accept(*this);

  node.factor->accept(*this);
  remove_depth();
}

void syntax_tree_printer::visit(syntax_call &node) {
  _DEBUG_PRINT_N_(depth);
  std::cout << "call: " << node.id << "()" << std::endl;
  add_depth();
  for (auto arg: node.args) {
    arg->accept(*this);
  }
  remove_depth();
}
