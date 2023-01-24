 #include<stdio.h>
#include<string.h>
int main()
{
   int i,j,k,len,count=0;;
   char s[20];
   printf("Enter an expression: ");
   gets(s);
   len=strlen(s);
   for(i=0;i<len;i++)
   {

       if(s[i]=='-')
       {
           if(count>0)printf("Sub R0 %c\n",s[i+1]);
           else{
           printf("Mov R0 %c\n", s[i-1]);
           printf("Sub R0 %c\n", s[i+1]);
           }
            for(j=i-1;j<=i+1;j++)
             s[j]='0';
             count++;
       }

       else if(s[i]=='+')
       {
           if(count>0)printf("Add R0 %c\n",s[i+1]);

           else{
           printf("Mov R0 %c\n", s[i-1]);
           printf("Add R0 %c\n" ,s[i+1]);
           }
            for(j=i-1;j<=i+1;j++)
             s[j]='0';
             count++;
       }
    }
      printf("Mov %c R0\n", s[0]);

       return 0;
}
