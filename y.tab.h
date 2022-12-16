
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
     VOID = 265,
     IF = 266,
     ELSE = 267,
     ELIF = 268,
     LOOP = 269,
     WHILE = 270,
     BREAK = 271,
     CONTINUE = 272,
     EQUALEQUAL = 273,
     NOTEQUAL = 274,
     INCREMENT = 275,
     DECREMENT = 276,
     GREATER_THEN = 277,
     LESS_THEN = 278,
     ASSING = 279,
     PLUS_EQUAL = 280,
     MINUS_EQUAL = 281,
     MULTI_EQUAL = 282,
     DIV_EQUAL = 283,
     PLUS = 284,
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
     COMMENT = 304
   };
#endif
/* Tokens.  */
#define VAR 258
#define NUM 259
#define INT 260
#define FLOAT 261
#define DOUBLE 262
#define STRING 263
#define CHAR 264
#define VOID 265
#define IF 266
#define ELSE 267
#define ELIF 268
#define LOOP 269
#define WHILE 270
#define BREAK 271
#define CONTINUE 272
#define EQUALEQUAL 273
#define NOTEQUAL 274
#define INCREMENT 275
#define DECREMENT 276
#define GREATER_THEN 277
#define LESS_THEN 278
#define ASSING 279
#define PLUS_EQUAL 280
#define MINUS_EQUAL 281
#define MULTI_EQUAL 282
#define DIV_EQUAL 283
#define PLUS 284
#define MINUS 285
#define MULTI 286
#define DIV 287
#define FIRST_OPEN 288
#define FIRST_END 289
#define SECOND_OPEN 290
#define SECOND_END 291
#define SEMICOLON 292
#define SQRT 293
#define SIN 294
#define COS 295
#define TAN 296
#define LOG 297
#define POW 298
#define MAIN 299
#define RETURN 300
#define PRINTF 301
#define SCANF 302
#define SWITCH 303
#define COMMENT 304




#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef union YYSTYPE
{

/* Line 1676 of yacc.c  */
#line 28 "pialParser.y"

	 int number;
     char *string;



/* Line 1676 of yacc.c  */
#line 157 "y.tab.h"
} YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
#endif

extern YYSTYPE yylval;


