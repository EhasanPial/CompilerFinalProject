
/* A Bison parser, made by GNU Bison 2.4.1.  */

/* Skeleton interface for Bison's Yacc-like parsers in C
   
      Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005, 2006
   Free Software Foundation, Inc.
   
   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.
   
   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
   
   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.
   
   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */


/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     VAR = 258,
     NUM = 259,
     INT = 260,
     FLOAT = 261,
     DOUBLE = 262,
     STRING = 263,
     CHAR = 264,
     PLUS = 265,
     VOID = 266,
     IF = 267,
     ELSE = 268,
     ELIF = 269,
     LOOP = 270,
     WHILE = 271,
     BREAK = 272,
     CONTINUE = 273,
     EQUALEQUAL = 274,
     NOTEQUAL = 275,
     INCREMENT = 276,
     DECREMENT = 277,
     GREATER_THEN = 278,
     LESS_THEN = 279,
     ASSING = 280,
     PLUS_EQUAL = 281,
     MINUS_EQUAL = 282,
     MULTI_EQUAL = 283,
     DIV_EQUAL = 284,
     MINUS = 285,
     MULTI = 286,
     DIV = 287,
     FIRST_OPEN = 288,
     FIRST_END = 289,
     SECOND_OPEN = 290,
     SECOND_END = 291,
     SEMICOLON = 292,
     SQRT = 293,
     SIN = 294,
     COS = 295,
     TAN = 296,
     LOG = 297,
     POW = 298,
     MAIN = 299,
     RETURN = 300,
     PRINTF = 301,
     SCANF = 302,
     SWITCH = 303,
     COMMENT = 304,
     MOD = 305
   };
#endif



#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef union YYSTYPE
{

/* Line 1676 of yacc.c  */
#line 16 "pialParser.y"

	 int number;
     char *string;



/* Line 1676 of yacc.c  */
#line 109 "pialParser.tab.h"
} YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
#endif

extern YYSTYPE yylval;


