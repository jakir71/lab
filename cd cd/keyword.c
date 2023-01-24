
#include <stdio.h>
#include <string.h>
#include<ctype.h>
int delimeter_check(char c)
{
    int i;
    char delimeter[]={' ', ',', ';', '(', ')', '{', '}', '[', ']', '"', '\'' , '+', '-', '*', '/','%','='} ;
    for(i=0;i<17;i++)
        if(c==delimeter[i])
       {
          return 1;
       }
       return 0;
}

int main()
{
    char s[500],temp[8];
    char keyword[][10]={"auto", "break", "case", "char", "const", "continue", "default", "do",
                      "double "," else ","enum","extern", "float", "for", "goto", "if", "int",
                      "long", "register", "return "," short ","signed","sizeof","static",
                      "struct", "switch", "typedef", "union", "unsigned ","void",
                        "volatile","while"};

    int i,j,k,len,check=0,t;
    printf("Give the input statement:\n");
    gets(s);
    len=strlen(s);

    for (i = 0; i < len;i++)
    {

       if(!isdigit(s[i]))
       {
           j=i;
           t=0;
           check=0;
         while(t<8)
         {

             if( delimeter_check(s[j]) )
             {
                 check=1; temp[t]='\0'; break;
             }

             temp[t]=s[j];
             t++;
             j++;
         }

           if(check==1)
             {
                     for(k=0;k<32;k++)
                     if(strcmp(keyword[k],temp)==0)
                     {
                         puts(keyword[k]);break;
                     }
             }
         }
         i=j;
       }
return 0;
}



