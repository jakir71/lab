#include <stdio.h>
#include <string.h>
int main()
{
    char s[500];
    int i,j,k,len;
    printf("Give the input statement:\n");
    gets(s);
    len=strlen(s);
    for (i = 0; i < len; i++)
    {
        if(s[i]=='/')
        {
            i++;
            if(s[i]=='/')
                while(i<len)
                {
                    i++;
                    printf("%c",s[i]);
                }
        }
    }
    return 0;
}
