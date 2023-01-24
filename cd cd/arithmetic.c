#include <stdio.h>
#include<string.h>
int main()
{
    char str[100];
    int n,i;
    scanf("%[^\n]%*c", str);
    n= strlen(str);
    for(i=0; i<=n; i++)
    {
        if(str[i]=='+'||str[i]=='-'||str[i]=='*'||str[i]=='/'||str[i]=='%' || str[i]=='^')
        {
            printf("%c is an operator\n",str[i]);
        }
    }
    return 0;
}
