
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
     ID = 258,
     IF = 259,
     ELSE = 260,
     NUM = 261,
     PAREND = 262,
     PARENI = 263,
     PCOMA = 264,
     LLAVEI = 265,
     LLAVED = 266,
     MAYOR = 267,
     MENOR = 268,
     MAYOREQ = 269,
     MENOREQ = 270,
     IGUAL = 271,
     FOR = 272,
     WHILE = 273,
     DO = 274,
     FUNCTION = 275,
     SWITCH = 276,
     CASE = 277,
     BREAK = 278,
     DOSPUNTOS = 279,
     UMINUS = 280
   };
#endif
/* Tokens.  */
#define ID 258
#define IF 259
#define ELSE 260
#define NUM 261
#define PAREND 262
#define PARENI 263
#define PCOMA 264
#define LLAVEI 265
#define LLAVED 266
#define MAYOR 267
#define MENOR 268
#define MAYOREQ 269
#define MENOREQ 270
#define IGUAL 271
#define FOR 272
#define WHILE 273
#define DO 274
#define FUNCTION 275
#define SWITCH 276
#define CASE 277
#define BREAK 278
#define DOSPUNTOS 279
#define UMINUS 280




#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
#endif

extern YYSTYPE yylval;


