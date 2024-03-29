%{
	#include<stdio.h>
	#include<stdlib.h>
	#include<math.h>
	#include<string.h>
	#include<stdarg.h>
	#include "ACTION.h"
	 
	int yylex();
	extern FILE *yyin,*yyout;
    void yyerror(char *s);  
	 
%}

%union 
{
	 int number;
     char *string;
}

%token <string> VAR
%type <number> expression  
%token <number> NUM
%token INT FLOAT DOUBLE STRING CHAR PLUS VOID IF ELSE ELIF LOOP WHILE BREAK CONTINUE EQUALEQUAL 
	   NOTEQUAL INCREMENT DECREMENT GREATER_THEN LESS_THEN ASSING PLUS_EQUAL MINUS_EQUAL MULTI_EQUAL 
	   DIV_EQUAL MINUS MULTI DIV FIRST_OPEN FIRST_END SECOND_OPEN SECOND_END SEMICOLON SQRT
	   SIN COS TAN LOG POW MAIN RETURN PRINTF SCANF SWITCH COMMENT MOD


 
%nonassoc SEMICOLON
%nonassoc ELSE
%nonassoc ELIF
%nonassoc IF
%nonassoc LOOP
%nonassoc WHILE
%nonassoc BREAK
%nonassoc CONTINUE
%nonassoc RETURN
%nonassoc PRINTF
%nonassoc SCANF 
%nonassoc COMMENT
%nonassoc SQRT
%nonassoc SIN
%nonassoc COS
%nonassoc TAN
%nonassoc LOG
%nonassoc POW 
%nonassoc MAIN
%nonassoc SWITCH 
%nonassoc VAR
%nonassoc NUM
%nonassoc INT
%nonassoc FLOAT
%nonassoc DOUBLE
%nonassoc STRING
%nonassoc CHAR
%nonassoc VOID 

%right ASSING PLUS_EQUAL MINUS_EQUAL MULTI_EQUAL DIV_EQUAL
%left EQUALEQUAL NOTEQUAL

%left LESS_THEN GREATER_THEN
%left PLUS MINUS
%left MULTI DIV MOD
%right INCREMENT DECREMENT
%left FIRST_OPEN FIRST_END SECOND_OPEN SECOND_END


%% 

program: TYPE MAIN SECOND_OPEN body SECOND_END | ;
body:  body statement |
	   ;


statement: declaration SEMICOLON   {}
		|  SEMICOLON 
		| expression SEMICOLON 	   {}
		
		;
declaration: TYPE id1  ;


TYPE: INT | FLOAT | DOUBLE | STRING | CHAR | VOID ;

id1 : id1 ',' VAR ASSING NUM	 {
				if(alreadyDeclared($3))
				{
					printf("\n(%s) Variable  DEclared Before \n",$3);
				}
				else
				{   
					assingToVariable ($3,$5);
					printf("\nValue of the Variable (%s)= %d\n",$3,$5);
				}
		}
	| id1 ',' VAR 	{	
                        if(alreadyDeclared($3))
						{
							printf("\nERROR:Multiple Declaration Of (%s) \n", $3 );
						}
						else
						{
							printf("(%s) Variable Declared\n",$3);
							newVariable($3, 0);
							
						}
			}
	| VAR ASSING NUM	 {
				if(alreadyDeclared($1))
				{
					printf("\n(%s) Variable  DEclared Before \n",$1);
				}
				else
				{ 
					assingToVariable ($1,$3);
					printf("\nValue of the Variable (%s)= %d\n",$1,$3);
				}
		}
 
	| VAR 	{			if(alreadyDeclared($1))
						{
							printf("\nERROR:Multiple Declaration Of (%s) \n", $1 );
						}
						else
						{
							printf("(%s) Variable Declared\n",$1);
							newVariable($1, 0);
							//++;
						}
			} 
;

 

expression: NUM	{ $$ = $1; 	}

			| VAR 	{	 
						struct node* temp = head;
						while(temp != NULL)
						{
							if(strcmp(temp->data.str,$1) == 0)
							{
								$$ = temp->data.n;
								break;
							}
							temp = temp->next;
						}
					}
			| VAR ASSING VAR 	{	
									 
									struct node* temp = head;
									while(temp != NULL)
									{
										if(strcmp(temp->data.str,$3) == 0)
										{
											assingToVariable ($1,temp->data.n);
											break;
										}
										temp = temp->next;
									}
								}					
			
			| expression PLUS expression	{ $$ = $1 + $3; }
		 
			| expression MINUS expression	{ $$ = $1 - $3; }

			| expression MULTI expression	{ $$ = $1 * $3; }

			

			| expression DIV expression	{ if($3){
												$$ = $1 / $3;
											}
											else{
												$$ = 0;
												printf("\ndivision by zero\t");
											} 	
										}
			| expression PLUS_EQUAL expression	{ $$ = $1 += $3; }
			| expression MINUS_EQUAL expression	{ $$ = $1 -= $3; }
			| expression MULTI_EQUAL expression	{ $$ = $1 *= $3; }
			| expression DIV_EQUAL expression	{ $$ = $1 /= $3; }
			
			| expression MOD expression	{ if($3){
												$$ = $1 % $3;
											}
											else{
												$$ = 0;
												printf("\nMOD by zero\t");
											} 	
										}
			| expression EQUALEQUAL expression	{ $$ = $1 == $3; }
			| expression LESS_THEN expression	{ $$ = $1 < $3; }
			
			| expression GREATER_THEN expression	{ $$ = $1 > $3; }
			| expression NOTEQUAL expression	{ $$ = $1 != $3; }
			| expression INCREMENT 	{ $$ = $1++; }
			| expression DECREMENT 	{ $$ = $1--; }
			
			| FIRST_OPEN expression FIRST_END		{ $$ = $2;	}
			| SIN expression 			{printf("Value of Sin(%d) is %lf\n",$2,sin($2*3.1416/180)); $$=sin($2*3.1416/180);}

			| COS expression 			{printf("Value of Cos(%d) is %lf\n",$2,cos($2*3.1416/180)); $$=cos($2*3.1416/180);}

			| TAN expression 			{printf("Value of Tan(%d) is %lf\n",$2,tan($2*3.1416/180)); $$=tan($2*3.1416/180);}
			| LOG expression 			{printf("Value of ln(%d) is %lf\n",$2,(log($2))); $$=(log($2));}
			| SQRT expression 			{printf("Value of sqrt(%d) is %lf\n",$2,sqrt($2)); $$=sqrt($2);}	
			| POW FIRST_OPEN NUM ',' NUM FIRST_END			{printf("Value of pow(%d,%d) is %lf\n",$3,$5,pow($3,$5)); $$=pow($3,$5);}
		 
;



%%

void yyerror(char *s){
	printf( "%s\n", s);
}

int yywrap()
{
	return 1;
}

int main()
{
	freopen("input2.txt","r",stdin);
	freopen("output.txt","w",stdout);
	yyparse();

	fclose(yyin);
 	fclose(yyout);
    
	return 0;
}

