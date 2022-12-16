%{
	#include<stdio.h>
	#include<string.h>
	#include<stdlib.h>
	#include<math.h>
	#include<stdarg.h>
	#include "pialParser.tab.h"
%}

alpha [a-zA-Z][a-zA-Z0-9]*
digit [0-9]
keyWord					-iff|-else iff|otherwise|-loop|--ret|:int|:float|:float8b|:string|:string1b|:void|-untill|_main_|--break|--next|System.out.println|system.in.input
singleLineComment		[ ]*[#][#][a-zA-Z0-9@$%^&*(){}_+-,.:\|?>< ]*




%%

":int"                                                  {return INT;} 
":float"                                                {return FLOAT;}
":float8b"                                              {return DOUBLE;} 
":string"                                               {return STRING;} 
":string1b"                                             {return CHAR;}
":void"                                                 {return VOID;} 

      
"-iff"                                                  {return IF;}
"-otherwise"                                            {return ELSE;}
"-else iff"                                             {return ELIF;}
    
 
"-loop"                                                 {return LOOP;}    
"-untill"                                               {return WHILE;}
"--break"                                               {return BREAK;}
"--next"                                                {return CONTINUE;}
"equal="                                                {return EQUALEQUAL ;}
"not="                                                  {return NOTEQUAL ;}
"plus+"                                                 {return INCREMENT ;}
"minus-"                                                {return DECREMENT ;}
"lthen"                                                 {return GREATER_THEN ;}
"gthen"                                                 {return LESS_THEN ;}
":="                                                    {return ASSING ;}
"plus="                                                 {return PLUS_EQUAL ;}
"minus="                                                {return MINUS_EQUAL ;}
"multi="                                                {return MULTI_EQUAL ;}
"div="                                                  {return DIV_EQUAL ;}
"+"                                                     {return PLUS ;}
"-"                                                     {return MINUS ;}
"*"                                                     {return MULTI ;}
"/"                                                     {return DIV ;}
"%"                                                     {return MOD ;}
"("                                                     {return FIRST_OPEN ;}
")"                                                     {return FIRST_END ;}
"-->"                                                   {return SECOND_OPEN ;}
"<--"                                                   {return SECOND_END ;}
";;"                                                    {return SEMICOLON ;}
"fn-sqrt"                                               {return SQRT;}
"fn-sin"                                                {return SIN;}
"fn-cos"                                                {return COS;}
"fn-tan"                                                {return TAN;}
"fn-log"                                                {return LOG;}
"fn-pow"                                                {return POW;}
"_main_"                                                {return MAIN;}
"--ret"                                                 {return RETURN;}
"System.out.println"                                    {return PRINTF;}
"System.in.input"                                       {return SCANF;}


{singleLineComment}		                                {return COMMENT;}


{digit}+	                                            { yylval.number = atoi(yytext);	     return NUM; }
{alpha}	                                                { yylval.string = strdup(yytext);	 return VAR; }
[ ]*	    			                                {}
[,:]     												{ return *yytext;	}
[\n]*					                                {}
[\t]*					                                {}
.						                                {printf("%s --> invalid\n",yytext);}


%%