#ifndef ACTION
#define ACTION

typedef struct table {
			char *str;
	    	int n;
			}table;
	 
	void newVariable (char *s, int n);
	void assingToVariable (char *s, int n);
	int alreadyDeclared(char *key);
	int count = 1;
	struct node {
     	   table data;
    struct node *next;
    
	}node ;
	 
	struct node *head = NULL;
	struct node *tail = NULL ;

    
void newVariable(char *s, int n)
				{
				  struct node* newData = malloc(sizeof(node));
				  newData->data.str = s;
				  newData->data.n = n;
				  newData->next = NULL;

				  if (head == NULL)
				  {
				    head = newData;
				    tail = newData;
				  }
				  else
				  {
				    tail->next = newData;
				    tail = newData;
				  }
				}
void assingToVariable(char *s, int num)
			{
                struct node* temp = head;
				while(temp != NULL)
				{
					if(strcmp(temp->data.str,s)==0)
					{
						temp->data.n=num;
						break;
					}
					temp = temp->next;
				}
			}

int alreadyDeclared(char *key)
			{
                struct node* temp = head;
				while(temp != NULL)
				{
					if(strcmp(temp->data.str,key)==0)
					{
						return temp->data.n;
					}
					temp = temp->next;
				}
				return 0;
			}
#endif