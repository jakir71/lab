#include <stdio.h>
#include<string.h>
int main()
{
    char str[100];
    int n,i;
    printf("Enter the statement:\n");
    scanf("%[^\n]%*c", str);
    n= strlen(str);
    for(i=0; i<=n; i++)
    {
        if(str[i]=='='&&str[i+1]=='='||
                str[i]=='!'&&str[i+1]=='='||
                str[i]=='>'&&str[i+1]=='='||
                str[i]=='<'&&str[i+1]=='=')
        {
            printf("%c%c is a Relational operator\n",str[i],str[i+1]);
        }
        else if(str[i]=='<'|| str[i]=='>')
        {
            printf("%c is a Relational operator\n",str[i]);
        }
    }
    return 0;
}
