#include <stdio.h>
#include <string.h>
int main()
{
    int a,b,i,j,k,len,c;
    printf("Enter Statement:\n");
    char s[500];
    gets(s);
    len=strlen(s);
    for(i=0; i<len; i++)
    {
        c=0;
        if(s[i]=='\"')
        {
            for(j=i+1;; j++)
            {
                if(s[j]=='\"')
                {
                    c=1;
                    break;
                }
            }
        }

        if(c==1)
        {
            for(k=i+1; k<j; k++)
                printf("%c",s[k]);

            printf("  is literral\n");
            i=j;
        }
        c=0;
    }
    return 0;
}
