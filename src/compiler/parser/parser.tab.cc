// A Bison parser, made by GNU Bison 3.4.2.

// Skeleton implementation for Bison LALR(1) parsers in C++

// Copyright (C) 2002-2015, 2018-2019 Free Software Foundation, Inc.

// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.

// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.

// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.

// As a special exception, you may create a larger work that contains
// part or all of the Bison parser skeleton and distribute that work
// under terms of your choice, so long as that work isn't itself a
// parser generator using the skeleton or a modified version thereof
// as a parser skeleton.  Alternatively, if you modify or redistribute
// the parser skeleton itself, you may (at your option) remove this
// special exception, which will cause the skeleton and the resulting
// Bison output files to be licensed under the GNU General Public
// License without this special exception.

// This special exception was added by the Free Software Foundation in
// version 2.2 of Bison.

// Undocumented macros, especially those whose name start with YY_,
// are private implementation details.  Do not rely on them.





#include "parser.tab.hh"


// Unqualified %code blocks.
#line 34 "parser.yy"

    #include <iostream>
    #include <cstdlib>
    #include <fstream>
    #include <memory>
    #include "driver.hpp"
    #undef yylex
    #define yylex scanner.yylex
    enum BLAWN_STATE
    {
        EXIST_IF = 0,
        NO_IF = 1,
        GLOBAL = 2,
        NOT_GLOBAL = 3
    };
    BLAWN_STATE blawn_state = NO_IF;
    BLAWN_STATE is_global = NOT_GLOBAL;
    std::string join(std::vector<std::string> text)
    {
        std::string type_identifier;
        for(auto& t:text){type_identifier+=" " + t;}
        return type_identifier;
    }    

#line 70 "parser.tab.cc"


#ifndef YY_
# if defined YYENABLE_NLS && YYENABLE_NLS
#  if ENABLE_NLS
#   include <libintl.h> // FIXME: INFRINGES ON USER NAME SPACE.
#   define YY_(msgid) dgettext ("bison-runtime", msgid)
#  endif
# endif
# ifndef YY_
#  define YY_(msgid) msgid
# endif
#endif

// Whether we are compiled with exception support.
#ifndef YY_EXCEPTIONS
# if defined __GNUC__ && !defined __EXCEPTIONS
#  define YY_EXCEPTIONS 0
# else
#  define YY_EXCEPTIONS 1
# endif
#endif

#define YYRHSLOC(Rhs, K) ((Rhs)[K].location)
/* YYLLOC_DEFAULT -- Set CURRENT to span from RHS[1] to RHS[N].
   If N is 0, then set CURRENT to the empty location which ends
   the previous symbol: RHS[0] (always defined).  */

# ifndef YYLLOC_DEFAULT
#  define YYLLOC_DEFAULT(Current, Rhs, N)                               \
    do                                                                  \
      if (N)                                                            \
        {                                                               \
          (Current).begin  = YYRHSLOC (Rhs, 1).begin;                   \
          (Current).end    = YYRHSLOC (Rhs, N).end;                     \
        }                                                               \
      else                                                              \
        {                                                               \
          (Current).begin = (Current).end = YYRHSLOC (Rhs, 0).end;      \
        }                                                               \
    while (false)
# endif


// Enable debugging if requested.
#if YYDEBUG

// A pseudo ostream that takes yydebug_ into account.
# define YYCDEBUG if (yydebug_) (*yycdebug_)

# define YY_SYMBOL_PRINT(Title, Symbol)         \
  do {                                          \
    if (yydebug_)                               \
    {                                           \
      *yycdebug_ << Title << ' ';               \
      yy_print_ (*yycdebug_, Symbol);           \
      *yycdebug_ << '\n';                       \
    }                                           \
  } while (false)

# define YY_REDUCE_PRINT(Rule)          \
  do {                                  \
    if (yydebug_)                       \
      yy_reduce_print_ (Rule);          \
  } while (false)

# define YY_STACK_PRINT()               \
  do {                                  \
    if (yydebug_)                       \
      yystack_print_ ();                \
  } while (false)

#else // !YYDEBUG

# define YYCDEBUG if (false) std::cerr
# define YY_SYMBOL_PRINT(Title, Symbol)  YYUSE (Symbol)
# define YY_REDUCE_PRINT(Rule)           static_cast<void> (0)
# define YY_STACK_PRINT()                static_cast<void> (0)

#endif // !YYDEBUG

#define yyerrok         (yyerrstatus_ = 0)
#define yyclearin       (yyla.clear ())

#define YYACCEPT        goto yyacceptlab
#define YYABORT         goto yyabortlab
#define YYERROR         goto yyerrorlab
#define YYRECOVERING()  (!!yyerrstatus_)

#line 5 "parser.yy"
namespace Blawn {
#line 162 "parser.tab.cc"


  /// Build a parser object.
  Parser::Parser (Scanner  &scanner_yyarg, Driver  &driver_yyarg)
    :
#if YYDEBUG
      yydebug_ (false),
      yycdebug_ (&std::cerr),
#endif
      scanner (scanner_yyarg),
      driver (driver_yyarg)
  {}

  Parser::~Parser ()
  {}

  Parser::syntax_error::~syntax_error () YY_NOEXCEPT YY_NOTHROW
  {}

  /*---------------.
  | Symbol types.  |
  `---------------*/

  // basic_symbol.
#if 201103L <= YY_CPLUSPLUS
  template <typename Base>
  Parser::basic_symbol<Base>::basic_symbol (basic_symbol&& that)
    : Base (std::move (that))
    , value ()
    , location (std::move (that.location))
  {
    switch (this->type_get ())
    {
      case 49: // FLOAT_LITERAL
        value.move< double > (std::move (that.value));
        break;

      case 48: // INT_LITERAL
        value.move< long long > (std::move (that.value));
        break;

      case 86: // access
        value.move< std::shared_ptr<AccessNode> > (std::move (that.value));
        break;

      case 52: // block
      case 83: // else_body
        value.move< std::shared_ptr<BlockNode> > (std::move (that.value));
        break;

      case 66: // method_definition
        value.move< std::shared_ptr<FunctionNode> > (std::move (that.value));
        break;

      case 54: // line
      case 56: // line_content
      case 57: // definition
      case 58: // function_definition
      case 60: // class_definition
      case 62: // c_type_definition
      case 71: // C_returns
      case 72: // return_value
      case 75: // globals_definition
      case 78: // c_function_declaration
      case 84: // expression
      case 85: // list
      case 87: // assign_variable
      case 88: // monomial
      case 89: // call
      case 90: // variable
        value.move< std::shared_ptr<Node> > (std::move (that.value));
        break;

      case 3: // FUNCTION_DEFINITION
      case 4: // METHOD_DEFINITION
      case 5: // CLASS_DEFINITION
      case 6: // C_TYPE_DEFINITION
      case 7: // C_FUNCTION_DECLARATION
      case 9: // C_FUNCTION
      case 10: // MEMBER_IDENTIFIER
      case 11: // IDENTIFIER
      case 26: // DOT_IDENTIFIER
      case 47: // STRING_LITERAL
      case 59: // function_start
      case 61: // class_start
      case 63: // c_type_start
      case 65: // method_start
        value.move< std::string > (std::move (that.value));
        break;

      case 64: // methods
        value.move< std::vector<std::shared_ptr<FunctionNode>> > (std::move (that.value));
        break;

      case 53: // lines
      case 67: // members_definition
      case 68: // C_members_definition
      case 70: // C_arguments
      case 77: // globals_variables
      case 79: // expressions
      case 82: // for_start
        value.move< std::vector<std::shared_ptr<Node>> > (std::move (that.value));
        break;

      case 69: // C_type_identifier
      case 73: // arguments
      case 74: // definition_arguments
        value.move< std::vector<std::string> > (std::move (that.value));
        break;

      default:
        break;
    }

  }
#endif

  template <typename Base>
  Parser::basic_symbol<Base>::basic_symbol (const basic_symbol& that)
    : Base (that)
    , value ()
    , location (that.location)
  {
    switch (this->type_get ())
    {
      case 49: // FLOAT_LITERAL
        value.copy< double > (YY_MOVE (that.value));
        break;

      case 48: // INT_LITERAL
        value.copy< long long > (YY_MOVE (that.value));
        break;

      case 86: // access
        value.copy< std::shared_ptr<AccessNode> > (YY_MOVE (that.value));
        break;

      case 52: // block
      case 83: // else_body
        value.copy< std::shared_ptr<BlockNode> > (YY_MOVE (that.value));
        break;

      case 66: // method_definition
        value.copy< std::shared_ptr<FunctionNode> > (YY_MOVE (that.value));
        break;

      case 54: // line
      case 56: // line_content
      case 57: // definition
      case 58: // function_definition
      case 60: // class_definition
      case 62: // c_type_definition
      case 71: // C_returns
      case 72: // return_value
      case 75: // globals_definition
      case 78: // c_function_declaration
      case 84: // expression
      case 85: // list
      case 87: // assign_variable
      case 88: // monomial
      case 89: // call
      case 90: // variable
        value.copy< std::shared_ptr<Node> > (YY_MOVE (that.value));
        break;

      case 3: // FUNCTION_DEFINITION
      case 4: // METHOD_DEFINITION
      case 5: // CLASS_DEFINITION
      case 6: // C_TYPE_DEFINITION
      case 7: // C_FUNCTION_DECLARATION
      case 9: // C_FUNCTION
      case 10: // MEMBER_IDENTIFIER
      case 11: // IDENTIFIER
      case 26: // DOT_IDENTIFIER
      case 47: // STRING_LITERAL
      case 59: // function_start
      case 61: // class_start
      case 63: // c_type_start
      case 65: // method_start
        value.copy< std::string > (YY_MOVE (that.value));
        break;

      case 64: // methods
        value.copy< std::vector<std::shared_ptr<FunctionNode>> > (YY_MOVE (that.value));
        break;

      case 53: // lines
      case 67: // members_definition
      case 68: // C_members_definition
      case 70: // C_arguments
      case 77: // globals_variables
      case 79: // expressions
      case 82: // for_start
        value.copy< std::vector<std::shared_ptr<Node>> > (YY_MOVE (that.value));
        break;

      case 69: // C_type_identifier
      case 73: // arguments
      case 74: // definition_arguments
        value.copy< std::vector<std::string> > (YY_MOVE (that.value));
        break;

      default:
        break;
    }

  }



  template <typename Base>
  bool
  Parser::basic_symbol<Base>::empty () const YY_NOEXCEPT
  {
    return Base::type_get () == empty_symbol;
  }

  template <typename Base>
  void
  Parser::basic_symbol<Base>::move (basic_symbol& s)
  {
    super_type::move (s);
    switch (this->type_get ())
    {
      case 49: // FLOAT_LITERAL
        value.move< double > (YY_MOVE (s.value));
        break;

      case 48: // INT_LITERAL
        value.move< long long > (YY_MOVE (s.value));
        break;

      case 86: // access
        value.move< std::shared_ptr<AccessNode> > (YY_MOVE (s.value));
        break;

      case 52: // block
      case 83: // else_body
        value.move< std::shared_ptr<BlockNode> > (YY_MOVE (s.value));
        break;

      case 66: // method_definition
        value.move< std::shared_ptr<FunctionNode> > (YY_MOVE (s.value));
        break;

      case 54: // line
      case 56: // line_content
      case 57: // definition
      case 58: // function_definition
      case 60: // class_definition
      case 62: // c_type_definition
      case 71: // C_returns
      case 72: // return_value
      case 75: // globals_definition
      case 78: // c_function_declaration
      case 84: // expression
      case 85: // list
      case 87: // assign_variable
      case 88: // monomial
      case 89: // call
      case 90: // variable
        value.move< std::shared_ptr<Node> > (YY_MOVE (s.value));
        break;

      case 3: // FUNCTION_DEFINITION
      case 4: // METHOD_DEFINITION
      case 5: // CLASS_DEFINITION
      case 6: // C_TYPE_DEFINITION
      case 7: // C_FUNCTION_DECLARATION
      case 9: // C_FUNCTION
      case 10: // MEMBER_IDENTIFIER
      case 11: // IDENTIFIER
      case 26: // DOT_IDENTIFIER
      case 47: // STRING_LITERAL
      case 59: // function_start
      case 61: // class_start
      case 63: // c_type_start
      case 65: // method_start
        value.move< std::string > (YY_MOVE (s.value));
        break;

      case 64: // methods
        value.move< std::vector<std::shared_ptr<FunctionNode>> > (YY_MOVE (s.value));
        break;

      case 53: // lines
      case 67: // members_definition
      case 68: // C_members_definition
      case 70: // C_arguments
      case 77: // globals_variables
      case 79: // expressions
      case 82: // for_start
        value.move< std::vector<std::shared_ptr<Node>> > (YY_MOVE (s.value));
        break;

      case 69: // C_type_identifier
      case 73: // arguments
      case 74: // definition_arguments
        value.move< std::vector<std::string> > (YY_MOVE (s.value));
        break;

      default:
        break;
    }

    location = YY_MOVE (s.location);
  }

  // by_type.
  Parser::by_type::by_type ()
    : type (empty_symbol)
  {}

#if 201103L <= YY_CPLUSPLUS
  Parser::by_type::by_type (by_type&& that)
    : type (that.type)
  {
    that.clear ();
  }
#endif

  Parser::by_type::by_type (const by_type& that)
    : type (that.type)
  {}

  Parser::by_type::by_type (token_type t)
    : type (yytranslate_ (t))
  {}

  void
  Parser::by_type::clear ()
  {
    type = empty_symbol;
  }

  void
  Parser::by_type::move (by_type& that)
  {
    type = that.type;
    that.clear ();
  }

  int
  Parser::by_type::type_get () const YY_NOEXCEPT
  {
    return type;
  }


  // by_state.
  Parser::by_state::by_state () YY_NOEXCEPT
    : state (empty_state)
  {}

  Parser::by_state::by_state (const by_state& that) YY_NOEXCEPT
    : state (that.state)
  {}

  void
  Parser::by_state::clear () YY_NOEXCEPT
  {
    state = empty_state;
  }

  void
  Parser::by_state::move (by_state& that)
  {
    state = that.state;
    that.clear ();
  }

  Parser::by_state::by_state (state_type s) YY_NOEXCEPT
    : state (s)
  {}

  Parser::symbol_number_type
  Parser::by_state::type_get () const YY_NOEXCEPT
  {
    if (state == empty_state)
      return empty_symbol;
    else
      return yystos_[state];
  }

  Parser::stack_symbol_type::stack_symbol_type ()
  {}

  Parser::stack_symbol_type::stack_symbol_type (YY_RVREF (stack_symbol_type) that)
    : super_type (YY_MOVE (that.state), YY_MOVE (that.location))
  {
    switch (that.type_get ())
    {
      case 49: // FLOAT_LITERAL
        value.YY_MOVE_OR_COPY< double > (YY_MOVE (that.value));
        break;

      case 48: // INT_LITERAL
        value.YY_MOVE_OR_COPY< long long > (YY_MOVE (that.value));
        break;

      case 86: // access
        value.YY_MOVE_OR_COPY< std::shared_ptr<AccessNode> > (YY_MOVE (that.value));
        break;

      case 52: // block
      case 83: // else_body
        value.YY_MOVE_OR_COPY< std::shared_ptr<BlockNode> > (YY_MOVE (that.value));
        break;

      case 66: // method_definition
        value.YY_MOVE_OR_COPY< std::shared_ptr<FunctionNode> > (YY_MOVE (that.value));
        break;

      case 54: // line
      case 56: // line_content
      case 57: // definition
      case 58: // function_definition
      case 60: // class_definition
      case 62: // c_type_definition
      case 71: // C_returns
      case 72: // return_value
      case 75: // globals_definition
      case 78: // c_function_declaration
      case 84: // expression
      case 85: // list
      case 87: // assign_variable
      case 88: // monomial
      case 89: // call
      case 90: // variable
        value.YY_MOVE_OR_COPY< std::shared_ptr<Node> > (YY_MOVE (that.value));
        break;

      case 3: // FUNCTION_DEFINITION
      case 4: // METHOD_DEFINITION
      case 5: // CLASS_DEFINITION
      case 6: // C_TYPE_DEFINITION
      case 7: // C_FUNCTION_DECLARATION
      case 9: // C_FUNCTION
      case 10: // MEMBER_IDENTIFIER
      case 11: // IDENTIFIER
      case 26: // DOT_IDENTIFIER
      case 47: // STRING_LITERAL
      case 59: // function_start
      case 61: // class_start
      case 63: // c_type_start
      case 65: // method_start
        value.YY_MOVE_OR_COPY< std::string > (YY_MOVE (that.value));
        break;

      case 64: // methods
        value.YY_MOVE_OR_COPY< std::vector<std::shared_ptr<FunctionNode>> > (YY_MOVE (that.value));
        break;

      case 53: // lines
      case 67: // members_definition
      case 68: // C_members_definition
      case 70: // C_arguments
      case 77: // globals_variables
      case 79: // expressions
      case 82: // for_start
        value.YY_MOVE_OR_COPY< std::vector<std::shared_ptr<Node>> > (YY_MOVE (that.value));
        break;

      case 69: // C_type_identifier
      case 73: // arguments
      case 74: // definition_arguments
        value.YY_MOVE_OR_COPY< std::vector<std::string> > (YY_MOVE (that.value));
        break;

      default:
        break;
    }

#if 201103L <= YY_CPLUSPLUS
    // that is emptied.
    that.state = empty_state;
#endif
  }

  Parser::stack_symbol_type::stack_symbol_type (state_type s, YY_MOVE_REF (symbol_type) that)
    : super_type (s, YY_MOVE (that.location))
  {
    switch (that.type_get ())
    {
      case 49: // FLOAT_LITERAL
        value.move< double > (YY_MOVE (that.value));
        break;

      case 48: // INT_LITERAL
        value.move< long long > (YY_MOVE (that.value));
        break;

      case 86: // access
        value.move< std::shared_ptr<AccessNode> > (YY_MOVE (that.value));
        break;

      case 52: // block
      case 83: // else_body
        value.move< std::shared_ptr<BlockNode> > (YY_MOVE (that.value));
        break;

      case 66: // method_definition
        value.move< std::shared_ptr<FunctionNode> > (YY_MOVE (that.value));
        break;

      case 54: // line
      case 56: // line_content
      case 57: // definition
      case 58: // function_definition
      case 60: // class_definition
      case 62: // c_type_definition
      case 71: // C_returns
      case 72: // return_value
      case 75: // globals_definition
      case 78: // c_function_declaration
      case 84: // expression
      case 85: // list
      case 87: // assign_variable
      case 88: // monomial
      case 89: // call
      case 90: // variable
        value.move< std::shared_ptr<Node> > (YY_MOVE (that.value));
        break;

      case 3: // FUNCTION_DEFINITION
      case 4: // METHOD_DEFINITION
      case 5: // CLASS_DEFINITION
      case 6: // C_TYPE_DEFINITION
      case 7: // C_FUNCTION_DECLARATION
      case 9: // C_FUNCTION
      case 10: // MEMBER_IDENTIFIER
      case 11: // IDENTIFIER
      case 26: // DOT_IDENTIFIER
      case 47: // STRING_LITERAL
      case 59: // function_start
      case 61: // class_start
      case 63: // c_type_start
      case 65: // method_start
        value.move< std::string > (YY_MOVE (that.value));
        break;

      case 64: // methods
        value.move< std::vector<std::shared_ptr<FunctionNode>> > (YY_MOVE (that.value));
        break;

      case 53: // lines
      case 67: // members_definition
      case 68: // C_members_definition
      case 70: // C_arguments
      case 77: // globals_variables
      case 79: // expressions
      case 82: // for_start
        value.move< std::vector<std::shared_ptr<Node>> > (YY_MOVE (that.value));
        break;

      case 69: // C_type_identifier
      case 73: // arguments
      case 74: // definition_arguments
        value.move< std::vector<std::string> > (YY_MOVE (that.value));
        break;

      default:
        break;
    }

    // that is emptied.
    that.type = empty_symbol;
  }

#if YY_CPLUSPLUS < 201103L
  Parser::stack_symbol_type&
  Parser::stack_symbol_type::operator= (stack_symbol_type& that)
  {
    state = that.state;
    switch (that.type_get ())
    {
      case 49: // FLOAT_LITERAL
        value.move< double > (that.value);
        break;

      case 48: // INT_LITERAL
        value.move< long long > (that.value);
        break;

      case 86: // access
        value.move< std::shared_ptr<AccessNode> > (that.value);
        break;

      case 52: // block
      case 83: // else_body
        value.move< std::shared_ptr<BlockNode> > (that.value);
        break;

      case 66: // method_definition
        value.move< std::shared_ptr<FunctionNode> > (that.value);
        break;

      case 54: // line
      case 56: // line_content
      case 57: // definition
      case 58: // function_definition
      case 60: // class_definition
      case 62: // c_type_definition
      case 71: // C_returns
      case 72: // return_value
      case 75: // globals_definition
      case 78: // c_function_declaration
      case 84: // expression
      case 85: // list
      case 87: // assign_variable
      case 88: // monomial
      case 89: // call
      case 90: // variable
        value.move< std::shared_ptr<Node> > (that.value);
        break;

      case 3: // FUNCTION_DEFINITION
      case 4: // METHOD_DEFINITION
      case 5: // CLASS_DEFINITION
      case 6: // C_TYPE_DEFINITION
      case 7: // C_FUNCTION_DECLARATION
      case 9: // C_FUNCTION
      case 10: // MEMBER_IDENTIFIER
      case 11: // IDENTIFIER
      case 26: // DOT_IDENTIFIER
      case 47: // STRING_LITERAL
      case 59: // function_start
      case 61: // class_start
      case 63: // c_type_start
      case 65: // method_start
        value.move< std::string > (that.value);
        break;

      case 64: // methods
        value.move< std::vector<std::shared_ptr<FunctionNode>> > (that.value);
        break;

      case 53: // lines
      case 67: // members_definition
      case 68: // C_members_definition
      case 70: // C_arguments
      case 77: // globals_variables
      case 79: // expressions
      case 82: // for_start
        value.move< std::vector<std::shared_ptr<Node>> > (that.value);
        break;

      case 69: // C_type_identifier
      case 73: // arguments
      case 74: // definition_arguments
        value.move< std::vector<std::string> > (that.value);
        break;

      default:
        break;
    }

    location = that.location;
    // that is emptied.
    that.state = empty_state;
    return *this;
  }
#endif

  template <typename Base>
  void
  Parser::yy_destroy_ (const char* yymsg, basic_symbol<Base>& yysym) const
  {
    if (yymsg)
      YY_SYMBOL_PRINT (yymsg, yysym);
  }

#if YYDEBUG
  template <typename Base>
  void
  Parser::yy_print_ (std::ostream& yyo,
                                     const basic_symbol<Base>& yysym) const
  {
    std::ostream& yyoutput = yyo;
    YYUSE (yyoutput);
    symbol_number_type yytype = yysym.type_get ();
#if defined __GNUC__ && ! defined __clang__ && ! defined __ICC && __GNUC__ * 100 + __GNUC_MINOR__ <= 408
    // Avoid a (spurious) G++ 4.8 warning about "array subscript is
    // below array bounds".
    if (yysym.empty ())
      std::abort ();
#endif
    yyo << (yytype < yyntokens_ ? "token" : "nterm")
        << ' ' << yytname_[yytype] << " ("
        << yysym.location << ": ";
    YYUSE (yytype);
    yyo << ')';
  }
#endif

  void
  Parser::yypush_ (const char* m, YY_MOVE_REF (stack_symbol_type) sym)
  {
    if (m)
      YY_SYMBOL_PRINT (m, sym);
    yystack_.push (YY_MOVE (sym));
  }

  void
  Parser::yypush_ (const char* m, state_type s, YY_MOVE_REF (symbol_type) sym)
  {
#if 201103L <= YY_CPLUSPLUS
    yypush_ (m, stack_symbol_type (s, std::move (sym)));
#else
    stack_symbol_type ss (s, sym);
    yypush_ (m, ss);
#endif
  }

  void
  Parser::yypop_ (int n)
  {
    yystack_.pop (n);
  }

#if YYDEBUG
  std::ostream&
  Parser::debug_stream () const
  {
    return *yycdebug_;
  }

  void
  Parser::set_debug_stream (std::ostream& o)
  {
    yycdebug_ = &o;
  }


  Parser::debug_level_type
  Parser::debug_level () const
  {
    return yydebug_;
  }

  void
  Parser::set_debug_level (debug_level_type l)
  {
    yydebug_ = l;
  }
#endif // YYDEBUG

  Parser::state_type
  Parser::yy_lr_goto_state_ (state_type yystate, int yysym)
  {
    int yyr = yypgoto_[yysym - yyntokens_] + yystate;
    if (0 <= yyr && yyr <= yylast_ && yycheck_[yyr] == yystate)
      return yytable_[yyr];
    else
      return yydefgoto_[yysym - yyntokens_];
  }

  bool
  Parser::yy_pact_value_is_default_ (int yyvalue)
  {
    return yyvalue == yypact_ninf_;
  }

  bool
  Parser::yy_table_value_is_error_ (int yyvalue)
  {
    return yyvalue == yytable_ninf_;
  }

  int
  Parser::operator() ()
  {
    return parse ();
  }

  int
  Parser::parse ()
  {
    // State.
    int yyn;
    /// Length of the RHS of the rule being reduced.
    int yylen = 0;

    // Error handling.
    int yynerrs_ = 0;
    int yyerrstatus_ = 0;

    /// The lookahead symbol.
    symbol_type yyla;

    /// The locations where the error started and ended.
    stack_symbol_type yyerror_range[3];

    /// The return value of parse ().
    int yyresult;

#if YY_EXCEPTIONS
    try
#endif // YY_EXCEPTIONS
      {
    YYCDEBUG << "Starting parse\n";


    /* Initialize the stack.  The initial state will be set in
       yynewstate, since the latter expects the semantical and the
       location values to have been already stored, initialize these
       stacks with a primary value.  */
    yystack_.clear ();
    yypush_ (YY_NULLPTR, 0, YY_MOVE (yyla));

  /*-----------------------------------------------.
  | yynewstate -- push a new symbol on the stack.  |
  `-----------------------------------------------*/
  yynewstate:
    YYCDEBUG << "Entering state " << yystack_[0].state << '\n';

    // Accept?
    if (yystack_[0].state == yyfinal_)
      YYACCEPT;

    goto yybackup;


  /*-----------.
  | yybackup.  |
  `-----------*/
  yybackup:
    // Try to take a decision without lookahead.
    yyn = yypact_[yystack_[0].state];
    if (yy_pact_value_is_default_ (yyn))
      goto yydefault;

    // Read a lookahead token.
    if (yyla.empty ())
      {
        YYCDEBUG << "Reading a token: ";
#if YY_EXCEPTIONS
        try
#endif // YY_EXCEPTIONS
          {
            yyla.type = yytranslate_ (yylex (&yyla.value, &yyla.location));
          }
#if YY_EXCEPTIONS
        catch (const syntax_error& yyexc)
          {
            YYCDEBUG << "Caught exception: " << yyexc.what() << '\n';
            error (yyexc);
            goto yyerrlab1;
          }
#endif // YY_EXCEPTIONS
      }
    YY_SYMBOL_PRINT ("Next token is", yyla);

    /* If the proper action on seeing token YYLA.TYPE is to reduce or
       to detect an error, take that action.  */
    yyn += yyla.type_get ();
    if (yyn < 0 || yylast_ < yyn || yycheck_[yyn] != yyla.type_get ())
      goto yydefault;

    // Reduce or error.
    yyn = yytable_[yyn];
    if (yyn <= 0)
      {
        if (yy_table_value_is_error_ (yyn))
          goto yyerrlab;
        yyn = -yyn;
        goto yyreduce;
      }

    // Count tokens shifted since error; after three, turn off error status.
    if (yyerrstatus_)
      --yyerrstatus_;

    // Shift the lookahead token.
    yypush_ ("Shifting", yyn, YY_MOVE (yyla));
    goto yynewstate;


  /*-----------------------------------------------------------.
  | yydefault -- do the default action for the current state.  |
  `-----------------------------------------------------------*/
  yydefault:
    yyn = yydefact_[yystack_[0].state];
    if (yyn == 0)
      goto yyerrlab;
    goto yyreduce;


  /*-----------------------------.
  | yyreduce -- do a reduction.  |
  `-----------------------------*/
  yyreduce:
    yylen = yyr2_[yyn];
    {
      stack_symbol_type yylhs;
      yylhs.state = yy_lr_goto_state_ (yystack_[yylen].state, yyr1_[yyn]);
      /* Variants are always initialized to an empty instance of the
         correct type. The default '$$ = $1' action is NOT applied
         when using variants.  */
      switch (yyr1_[yyn])
    {
      case 49: // FLOAT_LITERAL
        yylhs.value.emplace< double > ();
        break;

      case 48: // INT_LITERAL
        yylhs.value.emplace< long long > ();
        break;

      case 86: // access
        yylhs.value.emplace< std::shared_ptr<AccessNode> > ();
        break;

      case 52: // block
      case 83: // else_body
        yylhs.value.emplace< std::shared_ptr<BlockNode> > ();
        break;

      case 66: // method_definition
        yylhs.value.emplace< std::shared_ptr<FunctionNode> > ();
        break;

      case 54: // line
      case 56: // line_content
      case 57: // definition
      case 58: // function_definition
      case 60: // class_definition
      case 62: // c_type_definition
      case 71: // C_returns
      case 72: // return_value
      case 75: // globals_definition
      case 78: // c_function_declaration
      case 84: // expression
      case 85: // list
      case 87: // assign_variable
      case 88: // monomial
      case 89: // call
      case 90: // variable
        yylhs.value.emplace< std::shared_ptr<Node> > ();
        break;

      case 3: // FUNCTION_DEFINITION
      case 4: // METHOD_DEFINITION
      case 5: // CLASS_DEFINITION
      case 6: // C_TYPE_DEFINITION
      case 7: // C_FUNCTION_DECLARATION
      case 9: // C_FUNCTION
      case 10: // MEMBER_IDENTIFIER
      case 11: // IDENTIFIER
      case 26: // DOT_IDENTIFIER
      case 47: // STRING_LITERAL
      case 59: // function_start
      case 61: // class_start
      case 63: // c_type_start
      case 65: // method_start
        yylhs.value.emplace< std::string > ();
        break;

      case 64: // methods
        yylhs.value.emplace< std::vector<std::shared_ptr<FunctionNode>> > ();
        break;

      case 53: // lines
      case 67: // members_definition
      case 68: // C_members_definition
      case 70: // C_arguments
      case 77: // globals_variables
      case 79: // expressions
      case 82: // for_start
        yylhs.value.emplace< std::vector<std::shared_ptr<Node>> > ();
        break;

      case 69: // C_type_identifier
      case 73: // arguments
      case 74: // definition_arguments
        yylhs.value.emplace< std::vector<std::string> > ();
        break;

      default:
        break;
    }


      // Default location.
      {
        stack_type::slice range (yystack_, yylen);
        YYLLOC_DEFAULT (yylhs.location, range, yylen);
        yyerror_range[1].location = yylhs.location;
      }

      // Perform the reduction.
      YY_REDUCE_PRINT (yyn);
#if YY_EXCEPTIONS
      try
#endif // YY_EXCEPTIONS
        {
          switch (yyn)
            {
  case 2:
#line 144 "parser.yy"
    {
        driver.ast_generator->break_out_of_namespace();
        driver.ast_generator->generate(std::move(yystack_[0].value.as < std::shared_ptr<BlockNode> > ()));
    }
#line 1167 "parser.tab.cc"
    break;

  case 3:
#line 150 "parser.yy"
    {
        // $$ = std::move($1);
        // $$.push_back(driver.ast_generator->create_block_end(std::move($1)));
        yylhs.value.as < std::shared_ptr<BlockNode> > () = driver.ast_generator->create_block(std::move(yystack_[0].value.as < std::vector<std::shared_ptr<Node>> > ()));
    }
#line 1177 "parser.tab.cc"
    break;

  case 4:
#line 157 "parser.yy"
    {
        yylhs.value.as < std::vector<std::shared_ptr<Node>> > ().push_back(std::move(yystack_[0].value.as < std::shared_ptr<Node> > ()));
    }
#line 1185 "parser.tab.cc"
    break;

  case 5:
#line 161 "parser.yy"
    {
        yylhs.value.as < std::vector<std::shared_ptr<Node>> > () = std::move(yystack_[1].value.as < std::vector<std::shared_ptr<Node>> > ());
        yylhs.value.as < std::vector<std::shared_ptr<Node>> > ().push_back(yystack_[0].value.as < std::shared_ptr<Node> > ());
    }
#line 1194 "parser.tab.cc"
    break;

  case 6:
#line 167 "parser.yy"
    {
        yylhs.value.as < std::shared_ptr<Node> > () = std::move(yystack_[1].value.as < std::shared_ptr<Node> > ());
    }
#line 1202 "parser.tab.cc"
    break;

  case 7:
#line 171 "parser.yy"
    {
        yylhs.value.as < std::shared_ptr<Node> > () = std::move(yystack_[1].value.as < std::shared_ptr<Node> > ());
    }
#line 1210 "parser.tab.cc"
    break;

  case 8:
#line 175 "parser.yy"
    {
        yylhs.value.as < std::shared_ptr<Node> > () = yystack_[0].value.as < std::shared_ptr<Node> > ();
    }
#line 1218 "parser.tab.cc"
    break;

  case 9:
#line 179 "parser.yy"
    {
        yylhs.value.as < std::shared_ptr<Node> > () = driver.ast_generator->no_value_node;
    }
#line 1226 "parser.tab.cc"
    break;

  case 11:
#line 186 "parser.yy"
    {
        yylhs.value.as < std::shared_ptr<Node> > () = std::move(yystack_[0].value.as < std::shared_ptr<Node> > ());
    }
#line 1234 "parser.tab.cc"
    break;

  case 12:
#line 191 "parser.yy"
    {
        yylhs.value.as < std::shared_ptr<Node> > () = std::move(yystack_[0].value.as < std::shared_ptr<Node> > ());
    }
#line 1242 "parser.tab.cc"
    break;

  case 13:
#line 195 "parser.yy"
    {
        yylhs.value.as < std::shared_ptr<Node> > () = std::move(yystack_[0].value.as < std::shared_ptr<Node> > ());
    }
#line 1250 "parser.tab.cc"
    break;

  case 14:
#line 199 "parser.yy"
    {
        yylhs.value.as < std::shared_ptr<Node> > () = std::move(yystack_[0].value.as < std::shared_ptr<Node> > ());
    }
#line 1258 "parser.tab.cc"
    break;

  case 15:
#line 203 "parser.yy"
    {
        yylhs.value.as < std::shared_ptr<Node> > () = std::move(yystack_[0].value.as < std::shared_ptr<Node> > ());
    }
#line 1266 "parser.tab.cc"
    break;

  case 16:
#line 207 "parser.yy"
    {
        yylhs.value.as < std::shared_ptr<Node> > () = std::move(yystack_[0].value.as < std::shared_ptr<Node> > ());
    }
#line 1274 "parser.tab.cc"
    break;

  case 17:
#line 212 "parser.yy"
    {
        yylhs.value.as < std::shared_ptr<Node> > () = driver.ast_generator->add_function(yystack_[5].value.as < std::string > (), yystack_[4].value.as < std::vector<std::string> > (), std::optional<std::shared_ptr<BlockNode>>(yystack_[2].value.as < std::shared_ptr<BlockNode> > ()), yystack_[1].value.as < std::shared_ptr<Node> > ());
        driver.ast_generator->break_out_of_namespace();
    }
#line 1283 "parser.tab.cc"
    break;

  case 18:
#line 217 "parser.yy"
    {
        yylhs.value.as < std::shared_ptr<Node> > () = driver.ast_generator->add_function(yystack_[4].value.as < std::string > (), yystack_[3].value.as < std::vector<std::string> > (), std::nullopt, yystack_[1].value.as < std::shared_ptr<Node> > ());
        driver.ast_generator->break_out_of_namespace();
    }
#line 1292 "parser.tab.cc"
    break;

  case 19:
#line 223 "parser.yy"
    {
        yylhs.value.as < std::string > () = yystack_[0].value.as < std::string > ();
        driver.ast_generator->into_namespace(yystack_[0].value.as < std::string > ());
    }
#line 1301 "parser.tab.cc"
    break;

  case 20:
#line 229 "parser.yy"
    { 
        yylhs.value.as < std::shared_ptr<Node> > () = std::move(driver.ast_generator->create_class(yystack_[4].value.as < std::string > (),yystack_[3].value.as < std::vector<std::string> > (),yystack_[1].value.as < std::vector<std::shared_ptr<Node>> > (),yystack_[0].value.as < std::vector<std::shared_ptr<FunctionNode>> > ()));
        driver.ast_generator->break_out_of_namespace();
    }
#line 1310 "parser.tab.cc"
    break;

  case 21:
#line 234 "parser.yy"
    {
        yylhs.value.as < std::shared_ptr<Node> > () = std::move(driver.ast_generator->create_class(yystack_[3].value.as < std::string > (),yystack_[2].value.as < std::vector<std::string> > (),yystack_[0].value.as < std::vector<std::shared_ptr<Node>> > (),{}));
        driver.ast_generator->break_out_of_namespace();
    }
#line 1319 "parser.tab.cc"
    break;

  case 22:
#line 239 "parser.yy"
    {
        yylhs.value.as < std::shared_ptr<Node> > () = std::move(driver.ast_generator->create_class(yystack_[3].value.as < std::string > (),yystack_[2].value.as < std::vector<std::string> > (),{},yystack_[0].value.as < std::vector<std::shared_ptr<FunctionNode>> > ()));
        driver.ast_generator->break_out_of_namespace();
    }
#line 1328 "parser.tab.cc"
    break;

  case 23:
#line 245 "parser.yy"
    {
        yylhs.value.as < std::string > () = yystack_[0].value.as < std::string > ();
        driver.ast_generator->into_namespace(yystack_[0].value.as < std::string > ());
    }
#line 1337 "parser.tab.cc"
    break;

  case 24:
#line 251 "parser.yy"
    {
        yylhs.value.as < std::shared_ptr<Node> > () = std::move(driver.ast_generator->create_C_type(yystack_[2].value.as < std::string > (),yystack_[0].value.as < std::vector<std::shared_ptr<Node>> > ()));
        driver.ast_generator->break_out_of_namespace();
    }
#line 1346 "parser.tab.cc"
    break;

  case 25:
#line 257 "parser.yy"
    {
        yylhs.value.as < std::string > () = yystack_[0].value.as < std::string > ();
        driver.ast_generator->into_namespace(yystack_[0].value.as < std::string > ());
    }
#line 1355 "parser.tab.cc"
    break;

  case 26:
#line 263 "parser.yy"
    {
        yylhs.value.as < std::vector<std::shared_ptr<FunctionNode>> > ().push_back(yystack_[1].value.as < std::shared_ptr<FunctionNode> > ());
    }
#line 1363 "parser.tab.cc"
    break;

  case 27:
#line 267 "parser.yy"
    {
        yylhs.value.as < std::vector<std::shared_ptr<FunctionNode>> > () = std::move(yystack_[2].value.as < std::vector<std::shared_ptr<FunctionNode>> > ());
        yylhs.value.as < std::vector<std::shared_ptr<FunctionNode>> > ().push_back(yystack_[1].value.as < std::shared_ptr<FunctionNode> > ());
    }
#line 1372 "parser.tab.cc"
    break;

  case 28:
#line 273 "parser.yy"
    {
        yylhs.value.as < std::string > () = yystack_[0].value.as < std::string > ();
        driver.ast_generator->into_namespace(yystack_[0].value.as < std::string > ());
    }
#line 1381 "parser.tab.cc"
    break;

  case 29:
#line 279 "parser.yy"
    {
        auto args = std::move(yystack_[3].value.as < std::vector<std::string> > ());
        args.insert(args.begin(),"self");
        yylhs.value.as < std::shared_ptr<FunctionNode> > () = driver.ast_generator->add_function(yystack_[4].value.as < std::string > (),std::move(args),std::move(yystack_[1].value.as < std::shared_ptr<BlockNode> > ()),std::move(yystack_[0].value.as < std::shared_ptr<Node> > ()));
        driver.ast_generator->break_out_of_namespace();
    }
#line 1392 "parser.tab.cc"
    break;

  case 30:
#line 286 "parser.yy"
    {
        auto args = std::move(yystack_[2].value.as < std::vector<std::string> > ());
        args.insert(args.begin(),"self");
        yylhs.value.as < std::shared_ptr<FunctionNode> > () = driver.ast_generator->add_function(yystack_[3].value.as < std::string > (),std::move(args),std::nullopt,std::move(yystack_[0].value.as < std::shared_ptr<Node> > ()));
        driver.ast_generator->break_out_of_namespace();
    }
#line 1403 "parser.tab.cc"
    break;

  case 31:
#line 294 "parser.yy"
    {
        yylhs.value.as < std::vector<std::shared_ptr<Node>> > ().push_back(driver.ast_generator->create_assign(yystack_[3].value.as < std::string > (),std::move(yystack_[1].value.as < std::shared_ptr<Node> > ()),false));
    }
#line 1411 "parser.tab.cc"
    break;

  case 32:
#line 298 "parser.yy"
    {
        yylhs.value.as < std::vector<std::shared_ptr<Node>> > () = std::move(yystack_[4].value.as < std::vector<std::shared_ptr<Node>> > ());
        yylhs.value.as < std::vector<std::shared_ptr<Node>> > ().push_back(driver.ast_generator->create_assign(yystack_[3].value.as < std::string > (),std::move(yystack_[1].value.as < std::shared_ptr<Node> > ()),false));
    }
#line 1420 "parser.tab.cc"
    break;

  case 33:
#line 304 "parser.yy"
    {
        std::string type_identifier = join(yystack_[1].value.as < std::vector<std::string> > ());
        auto assign_value = driver.ast_generator->create_C_member(type_identifier);
        yylhs.value.as < std::vector<std::shared_ptr<Node>> > ().push_back(driver.ast_generator->create_assign(yystack_[3].value.as < std::string > (),std::move(assign_value),false));
    }
#line 1430 "parser.tab.cc"
    break;

  case 34:
#line 310 "parser.yy"
    {
        std::string type_identifier = join(yystack_[1].value.as < std::vector<std::string> > ());
        auto assign_value = driver.ast_generator->create_C_member(type_identifier);
        yylhs.value.as < std::vector<std::shared_ptr<Node>> > () = std::move(yystack_[4].value.as < std::vector<std::shared_ptr<Node>> > ());
        yylhs.value.as < std::vector<std::shared_ptr<Node>> > ().push_back(driver.ast_generator->create_assign(yystack_[3].value.as < std::string > (),std::move(assign_value),false));
    }
#line 1441 "parser.tab.cc"
    break;

  case 35:
#line 318 "parser.yy"
    {
        yylhs.value.as < std::vector<std::string> > ().push_back(yystack_[0].value.as < std::string > ());
    }
#line 1449 "parser.tab.cc"
    break;

  case 36:
#line 322 "parser.yy"
    {
        yylhs.value.as < std::vector<std::string> > () = std::move(yystack_[1].value.as < std::vector<std::string> > ());
        yylhs.value.as < std::vector<std::string> > ().push_back(yystack_[0].value.as < std::string > ());
    }
#line 1458 "parser.tab.cc"
    break;

  case 37:
#line 328 "parser.yy"
    {
        std::string type_identifier = join(yystack_[0].value.as < std::vector<std::string> > ());
        auto assign_value = driver.ast_generator->create_C_member(type_identifier);
        yylhs.value.as < std::vector<std::shared_ptr<Node>> > ().push_back(assign_value);
    }
#line 1468 "parser.tab.cc"
    break;

  case 38:
#line 334 "parser.yy"
    {
        yylhs.value.as < std::vector<std::shared_ptr<Node>> > () = std::move(yystack_[2].value.as < std::vector<std::shared_ptr<Node>> > ());
        std::string type_identifier = join(yystack_[0].value.as < std::vector<std::string> > ());
        auto assign_value = driver.ast_generator->create_C_member(type_identifier);
        yylhs.value.as < std::vector<std::shared_ptr<Node>> > ().push_back(assign_value);
    }
#line 1479 "parser.tab.cc"
    break;

  case 39:
#line 342 "parser.yy"
    {
        std::string type_identifier = join(yystack_[0].value.as < std::vector<std::string> > ());
        yylhs.value.as < std::shared_ptr<Node> > () = driver.ast_generator->create_C_member(type_identifier);
    }
#line 1488 "parser.tab.cc"
    break;

  case 40:
#line 348 "parser.yy"
    {
        yylhs.value.as < std::shared_ptr<Node> > () = yystack_[0].value.as < std::shared_ptr<Node> > ();
    }
#line 1496 "parser.tab.cc"
    break;

  case 41:
#line 352 "parser.yy"
    {
        yylhs.value.as < std::shared_ptr<Node> > () = nullptr;
    }
#line 1504 "parser.tab.cc"
    break;

  case 42:
#line 357 "parser.yy"
    {
        yylhs.value.as < std::vector<std::string> > () = std::move(yystack_[1].value.as < std::vector<std::string> > ());
    }
#line 1512 "parser.tab.cc"
    break;

  case 43:
#line 361 "parser.yy"
    {
        yylhs.value.as < std::vector<std::string> > () = {};
    }
#line 1520 "parser.tab.cc"
    break;

  case 44:
#line 366 "parser.yy"
    {
        yylhs.value.as < std::vector<std::string> > ().push_back(yystack_[0].value.as < std::string > ());
        driver.ast_generator->add_argument(yystack_[0].value.as < std::string > ());
    }
#line 1529 "parser.tab.cc"
    break;

  case 45:
#line 371 "parser.yy"
    {
        yylhs.value.as < std::vector<std::string> > () = std::move(yystack_[2].value.as < std::vector<std::string> > ());
        yylhs.value.as < std::vector<std::string> > ().push_back(yystack_[0].value.as < std::string > ());
        driver.ast_generator->add_argument(yystack_[0].value.as < std::string > ());
    }
#line 1539 "parser.tab.cc"
    break;

  case 46:
#line 378 "parser.yy"
    {
        is_global = NOT_GLOBAL;
        yylhs.value.as < std::shared_ptr<Node> > () = driver.ast_generator->no_value_node;
    }
#line 1548 "parser.tab.cc"
    break;

  case 47:
#line 384 "parser.yy"
    {
        is_global = GLOBAL;
    }
#line 1556 "parser.tab.cc"
    break;

  case 48:
#line 389 "parser.yy"
    {
        yylhs.value.as < std::vector<std::shared_ptr<Node>> > ().push_back(std::move(yystack_[0].value.as < std::shared_ptr<Node> > ()));
    }
#line 1564 "parser.tab.cc"
    break;

  case 49:
#line 393 "parser.yy"
    {
        yylhs.value.as < std::vector<std::shared_ptr<Node>> > () = std::move(yystack_[2].value.as < std::vector<std::shared_ptr<Node>> > ());
        yylhs.value.as < std::vector<std::shared_ptr<Node>> > ().push_back(std::move(yystack_[0].value.as < std::shared_ptr<Node> > ()));
    }
#line 1573 "parser.tab.cc"
    break;

  case 50:
#line 399 "parser.yy"
    {
        yylhs.value.as < std::shared_ptr<Node> > () = driver.ast_generator->declare_C_function(yystack_[7].value.as < std::string > (),yystack_[4].value.as < std::vector<std::shared_ptr<Node>> > (),yystack_[1].value.as < std::shared_ptr<Node> > ());
    }
#line 1581 "parser.tab.cc"
    break;

  case 51:
#line 403 "parser.yy"
    {
        yylhs.value.as < std::shared_ptr<Node> > () = driver.ast_generator->declare_C_function(yystack_[6].value.as < std::string > (),{},yystack_[1].value.as < std::shared_ptr<Node> > ());
    }
#line 1589 "parser.tab.cc"
    break;

  case 52:
#line 408 "parser.yy"
    {
        yylhs.value.as < std::vector<std::shared_ptr<Node>> > ().push_back(std::move(yystack_[0].value.as < std::shared_ptr<Node> > ()));
    }
#line 1597 "parser.tab.cc"
    break;

  case 53:
#line 412 "parser.yy"
    {
        yylhs.value.as < std::vector<std::shared_ptr<Node>> > () = std::move(yystack_[2].value.as < std::vector<std::shared_ptr<Node>> > ());
        yylhs.value.as < std::vector<std::shared_ptr<Node>> > ().push_back(std::move(yystack_[0].value.as < std::shared_ptr<Node> > ()));
    }
#line 1606 "parser.tab.cc"
    break;

  case 54:
#line 418 "parser.yy"
    {
        driver.ast_generator->into_namespace();
    }
#line 1614 "parser.tab.cc"
    break;

  case 55:
#line 423 "parser.yy"
    {
        driver.ast_generator->into_namespace();
    }
#line 1622 "parser.tab.cc"
    break;

  case 56:
#line 428 "parser.yy"
    {
        driver.ast_generator->into_namespace();
        yylhs.value.as < std::vector<std::shared_ptr<Node>> > ().push_back(yystack_[4].value.as < std::shared_ptr<Node> > ());
        yylhs.value.as < std::vector<std::shared_ptr<Node>> > ().push_back(yystack_[2].value.as < std::shared_ptr<Node> > ());
        yylhs.value.as < std::vector<std::shared_ptr<Node>> > ().push_back(yystack_[0].value.as < std::shared_ptr<Node> > ());
    }
#line 1633 "parser.tab.cc"
    break;

  case 57:
#line 437 "parser.yy"
    {
        yylhs.value.as < std::shared_ptr<BlockNode> > () = yystack_[1].value.as < std::shared_ptr<BlockNode> > ();
    }
#line 1641 "parser.tab.cc"
    break;

  case 58:
#line 442 "parser.yy"
    {
        yylhs.value.as < std::shared_ptr<Node> > () = driver.ast_generator->create_if(yystack_[5].value.as < std::shared_ptr<Node> > (),yystack_[1].value.as < std::shared_ptr<BlockNode> > (),{});
        driver.ast_generator->break_out_of_namespace();
    }
#line 1650 "parser.tab.cc"
    break;

  case 59:
#line 447 "parser.yy"
    {
        yylhs.value.as < std::shared_ptr<Node> > () = driver.ast_generator->create_if(yystack_[6].value.as < std::shared_ptr<Node> > (),yystack_[2].value.as < std::shared_ptr<BlockNode> > (),yystack_[0].value.as < std::shared_ptr<BlockNode> > ());
        driver.ast_generator->break_out_of_namespace();
    }
#line 1659 "parser.tab.cc"
    break;

  case 60:
#line 452 "parser.yy"
    {
        yylhs.value.as < std::shared_ptr<Node> > () = driver.ast_generator->create_for(yystack_[5].value.as < std::vector<std::shared_ptr<Node>> > ()[0],yystack_[5].value.as < std::vector<std::shared_ptr<Node>> > ()[1],yystack_[5].value.as < std::vector<std::shared_ptr<Node>> > ()[2],yystack_[1].value.as < std::shared_ptr<BlockNode> > ());
        driver.ast_generator->break_out_of_namespace();
    }
#line 1668 "parser.tab.cc"
    break;

  case 61:
#line 457 "parser.yy"
    {
        yylhs.value.as < std::shared_ptr<Node> > () = yystack_[0].value.as < std::shared_ptr<Node> > ();
    }
#line 1676 "parser.tab.cc"
    break;

  case 62:
#line 461 "parser.yy"
    {
        yylhs.value.as < std::shared_ptr<Node> > () = driver.ast_generator->create_store(yystack_[2].value.as < std::shared_ptr<Node> > (),yystack_[0].value.as < std::shared_ptr<Node> > ());
    }
#line 1684 "parser.tab.cc"
    break;

  case 63:
#line 465 "parser.yy"
    {
        yylhs.value.as < std::shared_ptr<Node> > () = driver.ast_generator->attach_operator(std::move(yystack_[2].value.as < std::shared_ptr<Node> > ()),std::move(yystack_[0].value.as < std::shared_ptr<Node> > ()),"+");
    }
#line 1692 "parser.tab.cc"
    break;

  case 64:
#line 469 "parser.yy"
    {
        yylhs.value.as < std::shared_ptr<Node> > () = driver.ast_generator->attach_operator(std::move(yystack_[2].value.as < std::shared_ptr<Node> > ()),std::move(yystack_[0].value.as < std::shared_ptr<Node> > ()),"-");
    }
#line 1700 "parser.tab.cc"
    break;

  case 65:
#line 473 "parser.yy"
    {
        yylhs.value.as < std::shared_ptr<Node> > () = driver.ast_generator->attach_operator(std::move(yystack_[2].value.as < std::shared_ptr<Node> > ()),std::move(yystack_[0].value.as < std::shared_ptr<Node> > ()),"*");
    }
#line 1708 "parser.tab.cc"
    break;

  case 66:
#line 477 "parser.yy"
    {
        yylhs.value.as < std::shared_ptr<Node> > () = driver.ast_generator->attach_operator(std::move(yystack_[2].value.as < std::shared_ptr<Node> > ()),std::move(yystack_[0].value.as < std::shared_ptr<Node> > ()),"/");
    }
#line 1716 "parser.tab.cc"
    break;

  case 67:
#line 481 "parser.yy"
    {
        yylhs.value.as < std::shared_ptr<Node> > () = driver.ast_generator->attach_operator(std::move(yystack_[2].value.as < std::shared_ptr<Node> > ()),std::move(yystack_[0].value.as < std::shared_ptr<Node> > ()),"and");
    }
#line 1724 "parser.tab.cc"
    break;

  case 68:
#line 485 "parser.yy"
    {
        yylhs.value.as < std::shared_ptr<Node> > () = driver.ast_generator->attach_operator(std::move(yystack_[2].value.as < std::shared_ptr<Node> > ()),std::move(yystack_[0].value.as < std::shared_ptr<Node> > ()),"or");
    }
#line 1732 "parser.tab.cc"
    break;

  case 69:
#line 489 "parser.yy"
    {
        yylhs.value.as < std::shared_ptr<Node> > () = driver.ast_generator->attach_operator(std::move(yystack_[2].value.as < std::shared_ptr<Node> > ()),std::move(yystack_[0].value.as < std::shared_ptr<Node> > ()),">=");
    }
#line 1740 "parser.tab.cc"
    break;

  case 70:
#line 493 "parser.yy"
    {
        yylhs.value.as < std::shared_ptr<Node> > () = driver.ast_generator->attach_operator(std::move(yystack_[2].value.as < std::shared_ptr<Node> > ()),std::move(yystack_[0].value.as < std::shared_ptr<Node> > ()),"<=");
    }
#line 1748 "parser.tab.cc"
    break;

  case 71:
#line 497 "parser.yy"
    {
        yylhs.value.as < std::shared_ptr<Node> > () = driver.ast_generator->attach_operator(std::move(yystack_[2].value.as < std::shared_ptr<Node> > ()),std::move(yystack_[0].value.as < std::shared_ptr<Node> > ()),">");
    }
#line 1756 "parser.tab.cc"
    break;

  case 72:
#line 501 "parser.yy"
    {
        yylhs.value.as < std::shared_ptr<Node> > () = driver.ast_generator->attach_operator(std::move(yystack_[2].value.as < std::shared_ptr<Node> > ()),std::move(yystack_[0].value.as < std::shared_ptr<Node> > ()),"<");
    }
#line 1764 "parser.tab.cc"
    break;

  case 73:
#line 505 "parser.yy"
    {
        yylhs.value.as < std::shared_ptr<Node> > () = driver.ast_generator->attach_operator(std::move(yystack_[2].value.as < std::shared_ptr<Node> > ()),std::move(yystack_[0].value.as < std::shared_ptr<Node> > ()),"!=");
    }
#line 1772 "parser.tab.cc"
    break;

  case 74:
#line 509 "parser.yy"
    {
        yylhs.value.as < std::shared_ptr<Node> > () = driver.ast_generator->attach_operator(std::move(yystack_[2].value.as < std::shared_ptr<Node> > ()),std::move(yystack_[0].value.as < std::shared_ptr<Node> > ()),"==");
    }
#line 1780 "parser.tab.cc"
    break;

  case 75:
#line 513 "parser.yy"
    {
        yylhs.value.as < std::shared_ptr<Node> > () = std::move(yystack_[0].value.as < std::shared_ptr<Node> > ());
    }
#line 1788 "parser.tab.cc"
    break;

  case 76:
#line 517 "parser.yy"
    {
        yylhs.value.as < std::shared_ptr<Node> > () = std::move(yystack_[0].value.as < std::shared_ptr<Node> > ());
    }
#line 1796 "parser.tab.cc"
    break;

  case 77:
#line 521 "parser.yy"
    {
        yylhs.value.as < std::shared_ptr<Node> > () = std::move(yystack_[0].value.as < std::shared_ptr<AccessNode> > ());
    }
#line 1804 "parser.tab.cc"
    break;

  case 78:
#line 526 "parser.yy"
    {
        yylhs.value.as < std::shared_ptr<Node> > () = driver.ast_generator->create_list(std::move(yystack_[1].value.as < std::vector<std::shared_ptr<Node>> > ()));
    }
#line 1812 "parser.tab.cc"
    break;

  case 79:
#line 530 "parser.yy"
    {
        yylhs.value.as < std::shared_ptr<Node> > () = driver.ast_generator->create_list();
    }
#line 1820 "parser.tab.cc"
    break;

  case 80:
#line 535 "parser.yy"
    {
        yylhs.value.as < std::shared_ptr<AccessNode> > () = driver.ast_generator->create_access(yystack_[1].value.as < std::shared_ptr<Node> > (),yystack_[0].value.as < std::string > ());
    }
#line 1828 "parser.tab.cc"
    break;

  case 81:
#line 540 "parser.yy"
    {
        if (is_global == NOT_GLOBAL)
        {yylhs.value.as < std::shared_ptr<Node> > () = driver.ast_generator->create_assign(yystack_[2].value.as < std::string > (),std::move(yystack_[0].value.as < std::shared_ptr<Node> > ()),false);}
        if (is_global == GLOBAL)
        {yylhs.value.as < std::shared_ptr<Node> > () = driver.ast_generator->create_assign(yystack_[2].value.as < std::string > (),std::move(yystack_[0].value.as < std::shared_ptr<Node> > ()),true);}
    }
#line 1839 "parser.tab.cc"
    break;

  case 82:
#line 547 "parser.yy"
    {
        yylhs.value.as < std::shared_ptr<Node> > () = driver.ast_generator->create_assign(yystack_[2].value.as < std::shared_ptr<AccessNode> > (),std::move(yystack_[0].value.as < std::shared_ptr<Node> > ()));
    }
#line 1847 "parser.tab.cc"
    break;

  case 83:
#line 552 "parser.yy"
    {
        yylhs.value.as < std::shared_ptr<Node> > () = yystack_[0].value.as < std::shared_ptr<Node> > ();
    }
#line 1855 "parser.tab.cc"
    break;

  case 84:
#line 556 "parser.yy"
    {
        yylhs.value.as < std::shared_ptr<Node> > () = driver.ast_generator->create_string(yystack_[0].value.as < std::string > ());
    }
#line 1863 "parser.tab.cc"
    break;

  case 85:
#line 560 "parser.yy"
    {
        yylhs.value.as < std::shared_ptr<Node> > () = driver.ast_generator->create_float(yystack_[0].value.as < double > ());
    }
#line 1871 "parser.tab.cc"
    break;

  case 86:
#line 564 "parser.yy"
    { 
        yylhs.value.as < std::shared_ptr<Node> > () = driver.ast_generator->create_integer(yystack_[0].value.as < long long > ());
    }
#line 1879 "parser.tab.cc"
    break;

  case 87:
#line 568 "parser.yy"
    {
        yylhs.value.as < std::shared_ptr<Node> > () = std::move(yystack_[0].value.as < std::shared_ptr<Node> > ());
    }
#line 1887 "parser.tab.cc"
    break;

  case 88:
#line 573 "parser.yy"
    {
        yylhs.value.as < std::shared_ptr<Node> > () = driver.ast_generator->create_call(yystack_[3].value.as < std::string > (),yystack_[1].value.as < std::vector<std::shared_ptr<Node>> > ());
    }
#line 1895 "parser.tab.cc"
    break;

  case 89:
#line 577 "parser.yy"
    {
        yylhs.value.as < std::shared_ptr<Node> > () = driver.ast_generator->create_call(yystack_[2].value.as < std::string > (),{});
    }
#line 1903 "parser.tab.cc"
    break;

  case 90:
#line 581 "parser.yy"
    {
        yylhs.value.as < std::shared_ptr<Node> > () = driver.ast_generator->create_call(yystack_[3].value.as < std::shared_ptr<AccessNode> > (),yystack_[1].value.as < std::vector<std::shared_ptr<Node>> > ());
    }
#line 1911 "parser.tab.cc"
    break;

  case 91:
#line 585 "parser.yy"
    {
        yylhs.value.as < std::shared_ptr<Node> > () = driver.ast_generator->create_call(yystack_[2].value.as < std::shared_ptr<AccessNode> > (),{});
    }
#line 1919 "parser.tab.cc"
    break;

  case 92:
#line 590 "parser.yy"
    {
        yylhs.value.as < std::shared_ptr<Node> > () = driver.ast_generator->get_named_value(yystack_[0].value.as < std::string > ());
    }
#line 1927 "parser.tab.cc"
    break;


#line 1931 "parser.tab.cc"

            default:
              break;
            }
        }
#if YY_EXCEPTIONS
      catch (const syntax_error& yyexc)
        {
          YYCDEBUG << "Caught exception: " << yyexc.what() << '\n';
          error (yyexc);
          YYERROR;
        }
#endif // YY_EXCEPTIONS
      YY_SYMBOL_PRINT ("-> $$ =", yylhs);
      yypop_ (yylen);
      yylen = 0;
      YY_STACK_PRINT ();

      // Shift the result of the reduction.
      yypush_ (YY_NULLPTR, YY_MOVE (yylhs));
    }
    goto yynewstate;


  /*--------------------------------------.
  | yyerrlab -- here on detecting error.  |
  `--------------------------------------*/
  yyerrlab:
    // If not already recovering from an error, report this error.
    if (!yyerrstatus_)
      {
        ++yynerrs_;
        error (yyla.location, yysyntax_error_ (yystack_[0].state, yyla));
      }


    yyerror_range[1].location = yyla.location;
    if (yyerrstatus_ == 3)
      {
        /* If just tried and failed to reuse lookahead token after an
           error, discard it.  */

        // Return failure if at end of input.
        if (yyla.type_get () == yyeof_)
          YYABORT;
        else if (!yyla.empty ())
          {
            yy_destroy_ ("Error: discarding", yyla);
            yyla.clear ();
          }
      }

    // Else will try to reuse lookahead token after shifting the error token.
    goto yyerrlab1;


  /*---------------------------------------------------.
  | yyerrorlab -- error raised explicitly by YYERROR.  |
  `---------------------------------------------------*/
  yyerrorlab:
    /* Pacify compilers when the user code never invokes YYERROR and
       the label yyerrorlab therefore never appears in user code.  */
    if (false)
      YYERROR;

    /* Do not reclaim the symbols of the rule whose action triggered
       this YYERROR.  */
    yypop_ (yylen);
    yylen = 0;
    goto yyerrlab1;


  /*-------------------------------------------------------------.
  | yyerrlab1 -- common code for both syntax error and YYERROR.  |
  `-------------------------------------------------------------*/
  yyerrlab1:
    yyerrstatus_ = 3;   // Each real token shifted decrements this.
    {
      stack_symbol_type error_token;
      for (;;)
        {
          yyn = yypact_[yystack_[0].state];
          if (!yy_pact_value_is_default_ (yyn))
            {
              yyn += yyterror_;
              if (0 <= yyn && yyn <= yylast_ && yycheck_[yyn] == yyterror_)
                {
                  yyn = yytable_[yyn];
                  if (0 < yyn)
                    break;
                }
            }

          // Pop the current state because it cannot handle the error token.
          if (yystack_.size () == 1)
            YYABORT;

          yyerror_range[1].location = yystack_[0].location;
          yy_destroy_ ("Error: popping", yystack_[0]);
          yypop_ ();
          YY_STACK_PRINT ();
        }

      yyerror_range[2].location = yyla.location;
      YYLLOC_DEFAULT (error_token.location, yyerror_range, 2);

      // Shift the error token.
      error_token.state = yyn;
      yypush_ ("Shifting", YY_MOVE (error_token));
    }
    goto yynewstate;


  /*-------------------------------------.
  | yyacceptlab -- YYACCEPT comes here.  |
  `-------------------------------------*/
  yyacceptlab:
    yyresult = 0;
    goto yyreturn;


  /*-----------------------------------.
  | yyabortlab -- YYABORT comes here.  |
  `-----------------------------------*/
  yyabortlab:
    yyresult = 1;
    goto yyreturn;


  /*-----------------------------------------------------.
  | yyreturn -- parsing is finished, return the result.  |
  `-----------------------------------------------------*/
  yyreturn:
    if (!yyla.empty ())
      yy_destroy_ ("Cleanup: discarding lookahead", yyla);

    /* Do not reclaim the symbols of the rule whose action triggered
       this YYABORT or YYACCEPT.  */
    yypop_ (yylen);
    while (1 < yystack_.size ())
      {
        yy_destroy_ ("Cleanup: popping", yystack_[0]);
        yypop_ ();
      }

    return yyresult;
  }
#if YY_EXCEPTIONS
    catch (...)
      {
        YYCDEBUG << "Exception caught: cleaning lookahead and stack\n";
        // Do not try to display the values of the reclaimed symbols,
        // as their printers might throw an exception.
        if (!yyla.empty ())
          yy_destroy_ (YY_NULLPTR, yyla);

        while (1 < yystack_.size ())
          {
            yy_destroy_ (YY_NULLPTR, yystack_[0]);
            yypop_ ();
          }
        throw;
      }
#endif // YY_EXCEPTIONS
  }

  void
  Parser::error (const syntax_error& yyexc)
  {
    error (yyexc.location, yyexc.what ());
  }

  // Generate an error message.
  std::string
  Parser::yysyntax_error_ (state_type, const symbol_type&) const
  {
    return YY_("syntax error");
  }


  const signed char Parser::yypact_ninf_ = -124;

  const signed char Parser::yytable_ninf_ = -50;

  const short
  Parser::yypact_[] =
  {
      90,  -124,  -124,  -124,   -29,     7,   107,  -124,   151,  -124,
     -19,  -124,  -124,  -124,    29,  -124,    90,  -124,  -124,     4,
    -124,  -124,    20,  -124,    20,  -124,    24,  -124,    25,  -124,
     151,    35,   288,  -124,    14,  -124,  -124,  -124,  -124,    42,
     151,     0,  -124,    -7,   288,   250,    48,  -124,  -124,  -124,
    -124,    -1,    52,    53,    93,    69,   188,    81,   151,   151,
     151,   151,   151,   151,   151,   151,   151,   151,   151,   151,
     151,  -124,   151,   131,    -5,   288,  -124,   -12,   151,  -124,
     151,  -124,  -124,  -124,    59,    77,    11,   101,   105,    71,
      97,    75,   288,   219,   219,    83,    83,    83,    83,    83,
      83,    51,    51,   108,   108,   288,  -124,    60,  -124,    86,
     125,   -16,  -124,   288,   270,   132,  -124,   151,   139,   102,
    -124,   137,   146,    20,   106,    12,   140,   141,   151,   112,
      90,  -124,   140,  -124,   140,   114,   151,  -124,   288,   115,
    -124,   151,   119,   123,  -124,   160,   146,    -4,   140,   128,
     288,   129,    90,   144,   125,   143,   125,   140,   288,  -124,
     202,  -124,    77,   151,  -124,    -2,   134,   145,  -124,  -124,
     147,  -124,   139,  -124,   236,  -124,   148,   149,   153,  -124,
    -124,  -124,  -124,  -124,   150,  -124,   154,   183,    90,   155,
    -124
  };

  const unsigned char
  Parser::yydefact_[] =
  {
       0,    19,    23,    25,     0,    92,     0,    54,     0,    47,
       0,    84,    86,    85,     0,     2,     3,     4,     9,     0,
       8,    12,     0,    13,     0,    14,     0,    15,     0,    16,
       0,     0,    11,    76,    77,    61,    75,    83,    87,     0,
       0,     0,    79,     0,    52,     0,     0,     1,     5,     7,
       6,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,    80,     0,     0,     0,    81,    89,     0,     0,    78,
       0,    10,    44,    43,     0,     0,     0,     0,    24,     0,
       0,     0,    62,    67,    68,    74,    73,    69,    70,    71,
      72,    63,    64,    65,    66,    82,    91,     0,    35,     0,
      37,     0,    88,    53,     0,     0,    42,    41,     0,     0,
      28,     0,    22,     0,     0,    21,     0,     0,     0,     0,
       0,    90,     0,    36,     0,     0,     0,    45,    40,     0,
      18,     0,     0,     0,    26,     0,    20,     0,     0,     0,
       0,    61,     0,     0,    39,     0,    38,     0,    56,    17,
       0,    27,     0,     0,    33,     0,     0,     0,    60,    51,
       0,    31,     0,    30,     0,    34,     0,    61,    58,    50,
      29,    32,    46,    55,     0,    59,     0,     0,     0,     0,
      57
  };

  const short
  Parser::yypgoto_[] =
  {
    -124,  -124,   -84,  -124,   170,  -124,  -124,  -124,  -124,  -124,
    -124,  -124,  -124,  -124,    67,  -124,  -110,  -124,  -124,   -61,
    -124,    40,   -93,   -21,  -124,  -124,  -124,  -124,  -124,   -33,
    -124,  -124,  -124,  -124,    -6,  -124,  -124,  -123,  -124,  -124,
    -124
  };

  const short
  Parser::yydefgoto_[] =
  {
      -1,    14,    15,    16,    17,    18,    19,    20,    21,    22,
      23,    24,    25,    26,   122,   123,   124,   125,    88,   154,
     111,   155,   119,    52,    84,    27,    28,   149,    29,    43,
      30,   184,    31,   185,    32,    33,    34,    35,    36,    37,
      38
  };

  const short
  Parser::yytable_[] =
  {
      44,   118,    45,    53,    49,   151,   108,   133,    77,   133,
      82,     5,   142,   110,   134,   120,   120,    39,    78,    40,
     112,   121,   145,    78,    56,   139,    72,    79,    46,    47,
     135,    83,    76,     6,    75,    44,   142,     7,    41,     8,
     107,   109,   164,   177,   175,    73,   153,    11,    12,    13,
      50,    51,    92,    93,    94,    95,    96,    97,    98,    99,
     100,   101,   102,   103,   104,   147,   105,    44,   167,   173,
      54,    55,   113,   156,   114,    69,    70,    71,   172,   180,
       1,    57,     2,     3,     4,   117,    74,   165,     5,   115,
      78,   116,   131,     1,    81,     2,     3,     4,    85,    86,
      89,     5,   143,    87,   189,    67,    68,    69,    70,    71,
       6,   138,    91,   126,     7,   127,     8,   128,     5,     9,
      10,   130,   150,     6,    11,    12,    13,     7,   129,     8,
     158,   132,     9,    10,    71,   160,   133,    11,    12,    13,
       6,    42,     5,   137,     7,     5,     8,   117,   140,   141,
     120,   108,   144,   148,    11,    12,    13,   174,   152,   157,
     150,   159,     5,   106,     6,   161,   176,     6,     7,   162,
       8,     7,   163,     8,   166,   -48,   168,   178,    11,    12,
      13,    11,    12,    13,     6,   187,    48,   190,     7,   169,
       8,   183,   146,   179,   182,   -49,   186,   170,    11,    12,
      13,    58,    59,    60,    61,    62,    63,    64,    65,    66,
      67,    68,    69,    70,    71,    58,    59,    60,    61,    62,
      63,    64,    65,    66,    67,    68,    69,    70,    71,   188,
       0,     0,     0,     0,    90,    61,    62,    63,    64,    65,
      66,    67,    68,    69,    70,    71,     0,     0,   171,    58,
      59,    60,    61,    62,    63,    64,    65,    66,    67,    68,
      69,    70,    71,    58,    59,    60,    61,    62,    63,    64,
      65,    66,    67,    68,    69,    70,    71,     0,     0,     0,
      80,     0,   181,    58,    59,    60,    61,    62,    63,    64,
      65,    66,    67,    68,    69,    70,    71,     0,     0,     0,
     136,    58,    59,    60,    61,    62,    63,    64,    65,    66,
      67,    68,    69,    70,    71
  };

  const short
  Parser::yycheck_[] =
  {
       6,    85,     8,    24,     0,   128,    11,    11,    41,    11,
      11,    11,   122,    74,    30,     4,     4,    46,    30,    12,
      32,    10,    10,    30,    30,   118,    12,    34,    47,     0,
      46,    32,    32,    33,    40,    41,   146,    37,    31,    39,
      73,    46,    46,   166,    46,    31,   130,    47,    48,    49,
      46,    31,    58,    59,    60,    61,    62,    63,    64,    65,
      66,    67,    68,    69,    70,   126,    72,    73,   152,   162,
      46,    46,    78,   134,    80,    24,    25,    26,   162,   172,
       3,    46,     5,     6,     7,     8,    44,   148,    11,    30,
      30,    32,    32,     3,    46,     5,     6,     7,    46,    46,
      31,    11,   123,    10,   188,    22,    23,    24,    25,    26,
      33,   117,    31,    12,    37,    10,    39,    46,    11,    42,
      43,    46,   128,    33,    47,    48,    49,    37,    31,    39,
     136,    45,    42,    43,    26,   141,    11,    47,    48,    49,
      33,    34,    11,    11,    37,    11,    39,     8,    46,    12,
       4,    11,    46,    12,    47,    48,    49,   163,    46,    45,
     166,    46,    11,    32,    33,    46,    32,    33,    37,    46,
      39,    37,    12,    39,    46,    46,    32,    32,    47,    48,
      49,    47,    48,    49,    33,    31,    16,    32,    37,    46,
      39,    38,   125,    46,    46,    46,    46,   157,    47,    48,
      49,    13,    14,    15,    16,    17,    18,    19,    20,    21,
      22,    23,    24,    25,    26,    13,    14,    15,    16,    17,
      18,    19,    20,    21,    22,    23,    24,    25,    26,    46,
      -1,    -1,    -1,    -1,    46,    16,    17,    18,    19,    20,
      21,    22,    23,    24,    25,    26,    -1,    -1,    46,    13,
      14,    15,    16,    17,    18,    19,    20,    21,    22,    23,
      24,    25,    26,    13,    14,    15,    16,    17,    18,    19,
      20,    21,    22,    23,    24,    25,    26,    -1,    -1,    -1,
      30,    -1,    46,    13,    14,    15,    16,    17,    18,    19,
      20,    21,    22,    23,    24,    25,    26,    -1,    -1,    -1,
      30,    13,    14,    15,    16,    17,    18,    19,    20,    21,
      22,    23,    24,    25,    26
  };

  const unsigned char
  Parser::yystos_[] =
  {
       0,     3,     5,     6,     7,    11,    33,    37,    39,    42,
      43,    47,    48,    49,    51,    52,    53,    54,    55,    56,
      57,    58,    59,    60,    61,    62,    63,    75,    76,    78,
      80,    82,    84,    85,    86,    87,    88,    89,    90,    46,
      12,    31,    34,    79,    84,    84,    47,     0,    54,     0,
      46,    31,    73,    73,    46,    46,    84,    46,    13,    14,
      15,    16,    17,    18,    19,    20,    21,    22,    23,    24,
      25,    26,    12,    31,    44,    84,    32,    79,    30,    34,
      30,    46,    11,    32,    74,    46,    46,    10,    68,    31,
      46,    31,    84,    84,    84,    84,    84,    84,    84,    84,
      84,    84,    84,    84,    84,    84,    32,    79,    11,    46,
      69,    70,    32,    84,    84,    30,    32,     8,    52,    72,
       4,    10,    64,    65,    66,    67,    12,    10,    46,    31,
      46,    32,    45,    11,    30,    46,    30,    11,    84,    72,
      46,    12,    66,    73,    46,    10,    64,    69,    12,    77,
      84,    87,    46,    52,    69,    71,    69,    45,    84,    46,
      84,    46,    46,    12,    46,    69,    46,    52,    32,    46,
      71,    46,    52,    72,    84,    46,    32,    87,    32,    46,
      72,    46,    46,    38,    81,    83,    46,    31,    46,    52,
      32
  };

  const unsigned char
  Parser::yyr1_[] =
  {
       0,    50,    51,    52,    53,    53,    54,    54,    54,    54,
      55,    56,    57,    57,    57,    57,    57,    58,    58,    59,
      60,    60,    60,    61,    62,    63,    64,    64,    65,    66,
      66,    67,    67,    68,    68,    69,    69,    70,    70,    71,
      72,    72,    73,    73,    74,    74,    75,    76,    77,    77,
      78,    78,    79,    79,    80,    81,    82,    83,    84,    84,
      84,    84,    84,    84,    84,    84,    84,    84,    84,    84,
      84,    84,    84,    84,    84,    84,    84,    84,    85,    85,
      86,    87,    87,    88,    88,    88,    88,    88,    89,    89,
      89,    89,    90
  };

  const unsigned char
  Parser::yyr2_[] =
  {
       0,     2,     1,     1,     1,     2,     2,     2,     1,     1,
       3,     1,     1,     1,     1,     1,     1,     6,     5,     1,
       5,     4,     4,     1,     3,     1,     2,     3,     1,     5,
       4,     4,     5,     4,     5,     1,     2,     1,     3,     1,
       2,     1,     3,     2,     1,     3,     8,     1,     1,     3,
       8,     7,     1,     3,     1,     1,     6,     6,     7,     8,
       6,     1,     3,     3,     3,     3,     3,     3,     3,     3,
       3,     3,     3,     3,     3,     1,     1,     1,     3,     2,
       2,     3,     3,     1,     1,     1,     1,     1,     4,     3,
       4,     3,     1
  };


#if YYDEBUG
  // YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
  // First, the terminals, then, starting at \a yyntokens_, nonterminals.
  const char*
  const Parser::yytname_[] =
  {
  "\"end of file\"", "error", "$undefined", "FUNCTION_DEFINITION",
  "METHOD_DEFINITION", "CLASS_DEFINITION", "C_TYPE_DEFINITION",
  "C_FUNCTION_DECLARATION", "RETURN", "C_FUNCTION", "MEMBER_IDENTIFIER",
  "IDENTIFIER", "EQUAL", "ARROW", "OP_AND", "OP_OR", "OP_EQUAL",
  "OP_NOT_EQUAL", "OP_MORE_EQUAL", "OP_LESS_EQUAL", "OP_MORE", "OP_LESS",
  "PLUS", "MINUS", "ASTERISK", "SLASH", "DOT_IDENTIFIER", "USE", "COLON",
  "SEMICOLON", "COMMA", "LEFT_PARENTHESIS", "RIGHT_PARENTHESIS",
  "LEFT_CURLY_BRACE", "RIGHT_CURLY_BRACE", "LEFT_BRACKET", "RIGHT_BRACKET",
  "IF", "ELSE", "FOR", "IN", "WHILE", "GLOBAL", "IMPORT",
  "C_FUNCTION_ARGUMENT", "C_FUNCTION_RETURN", "EOL", "STRING_LITERAL",
  "INT_LITERAL", "FLOAT_LITERAL", "$accept", "program", "block", "lines",
  "line", "import", "line_content", "definition", "function_definition",
  "function_start", "class_definition", "class_start", "c_type_definition",
  "c_type_start", "methods", "method_start", "method_definition",
  "members_definition", "C_members_definition", "C_type_identifier",
  "C_arguments", "C_returns", "return_value", "arguments",
  "definition_arguments", "globals_definition", "global_start",
  "globals_variables", "c_function_declaration", "expressions", "if_start",
  "else_start", "for_start", "else_body", "expression", "list", "access",
  "assign_variable", "monomial", "call", "variable", YY_NULLPTR
  };


  const unsigned short
  Parser::yyrline_[] =
  {
       0,   143,   143,   149,   156,   160,   166,   170,   174,   178,
     183,   185,   190,   194,   198,   202,   206,   211,   216,   222,
     228,   233,   238,   244,   250,   256,   262,   266,   272,   278,
     285,   293,   297,   303,   309,   317,   321,   327,   333,   341,
     347,   351,   356,   360,   365,   370,   377,   383,   388,   392,
     398,   402,   407,   411,   417,   422,   427,   436,   441,   446,
     451,   456,   460,   464,   468,   472,   476,   480,   484,   488,
     492,   496,   500,   504,   508,   512,   516,   520,   525,   529,
     534,   539,   546,   551,   555,   559,   563,   567,   572,   576,
     580,   584,   589
  };

  // Print the state stack on the debug stream.
  void
  Parser::yystack_print_ ()
  {
    *yycdebug_ << "Stack now";
    for (stack_type::const_iterator
           i = yystack_.begin (),
           i_end = yystack_.end ();
         i != i_end; ++i)
      *yycdebug_ << ' ' << i->state;
    *yycdebug_ << '\n';
  }

  // Report on the debug stream that the rule \a yyrule is going to be reduced.
  void
  Parser::yy_reduce_print_ (int yyrule)
  {
    unsigned yylno = yyrline_[yyrule];
    int yynrhs = yyr2_[yyrule];
    // Print the symbols being reduced, and their result.
    *yycdebug_ << "Reducing stack by rule " << yyrule - 1
               << " (line " << yylno << "):\n";
    // The symbols being reduced.
    for (int yyi = 0; yyi < yynrhs; yyi++)
      YY_SYMBOL_PRINT ("   $" << yyi + 1 << " =",
                       yystack_[(yynrhs) - (yyi + 1)]);
  }
#endif // YYDEBUG

  Parser::token_number_type
  Parser::yytranslate_ (int t)
  {
    // YYTRANSLATE[TOKEN-NUM] -- Symbol number corresponding to
    // TOKEN-NUM as returned by yylex.
    static
    const token_number_type
    translate_table[] =
    {
       0,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     1,     2,     3,     4,
       5,     6,     7,     8,     9,    10,    11,    12,    13,    14,
      15,    16,    17,    18,    19,    20,    21,    22,    23,    24,
      25,    26,    27,    28,    29,    30,    31,    32,    33,    34,
      35,    36,    37,    38,    39,    40,    41,    42,    43,    44,
      45,    46,    47,    48,    49
    };
    const unsigned user_token_number_max_ = 304;
    const token_number_type undef_token_ = 2;

    if (static_cast<int> (t) <= yyeof_)
      return yyeof_;
    else if (static_cast<unsigned> (t) <= user_token_number_max_)
      return translate_table[t];
    else
      return undef_token_;
  }

#line 5 "parser.yy"
} // Blawn
#line 2443 "parser.tab.cc"

#line 593 "parser.yy"


void Blawn::Parser::error( const location_type &l, const std::string &err_message )
{
    std::cerr << "Error: " << err_message << " at " << l << "\n";
    exit(1);
} 
