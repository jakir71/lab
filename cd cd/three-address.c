#include <stdio.h>
#include <string.h>

int main()
{
    char s[20],ch;
    int i,j,k,len,r ,m,n,count=1;
    printf("Give the input statement:\n");
    gets(s);
    len=strlen(s);
       puts(s);
    for(i=0;i<len;i++)
    {
        if(s[i]=='*' || s[i]=='/')
        {
            if(count==1)
                printf("t%d = %c %c %c\n",count,s[i-1],s[i],s[i+1]);

            else  if(s[i-1]=='0' && s[i+1]=='0')
                 printf("t%d = t%d %c t%d\n",count,count-1,s[i],count-2);
               else if(s[i-1]=='0')
                     printf("t%d = t%d %c %c\n",count,count-1,s[i],s[i+1]);
                else if(s[i+1]=='0')
                     printf("t%d = t%d %c %c\n",count,count-1,s[i],s[i-1]);

                else printf("t%d = %c %c %c\n",count,s[i-1],s[i],s[i+1]);


            count++;
            for ( j = i - 1; j <= i + 1; j++)
                s[j] = '0';
                i=0;
        }
    }


     for(i=0;i<len;i++)
    {
        if(s[i]=='+' || s[i]=='-')
        {
            if(count==1)
                printf("t%d = %c %c %c\n",count,s[i-1],s[i],s[i+1]);

            else {
               if(s[i-1]=='0' && s[i+1]=='0')
                 printf("t%d = t%d %c t%d\n",count,count-2,s[i],count-1);
               else if(s[i-1]=='0')
                     printf("t%d = t%d %c %c\n",count,count-1,s[i],s[i+1]);
                else if(s[i+1]=='0')
                     printf("t%d = %c %c t%d\n",count,s[i-1],s[i],count-1);

                else printf("t%d = %c %c %c\n",count,s[i-1],s[i],s[i+1]);

            }
            count++;
            for ( j = i - 1; j <= i + 1; j++)
                s[j] = '0';
                i=0;
        }
    }
     printf("\n%c = t%d",s[0],count-1);
 return 0;
}
