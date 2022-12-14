#include<stdio.h>
int main()
{
    int bt[20],p[20],wt[20],tat[20],pr[20],i,j,n,pos,temp;
    float avwt,avtat;
    printf("Enter Total Number of Process:");
    scanf("%d",&n);
    printf("\nEnter Burst Time and Priority\n");
    for(i=0; i<n; i++)
    {
        printf("\nP[%d]\n",i+1);
        printf("Burst Time:");
        scanf("%d",&bt[i]);
        printf("Priority:");
        scanf("%d",&pr[i]);
        p[i]=i+1;           //contains process number
    }
    //sorting burst time, priority and process number in ascending order using selection sort
    for(i=0; i<n; i++)
    {
        pos=i;
        for(j=i+1; j<n; j++)
        {
            if(pr[j]<pr[pos])
                pos=j;
        }

        temp=pr[i];
        pr[i]=pr[pos];
        pr[pos]=temp;

        temp=bt[i];
        bt[i]=bt[pos];
        bt[pos]=temp;

        temp=p[i];
        p[i]=p[pos];
        p[pos]=temp;
    }

    wt[0]=0; //waiting time for first process is zero
    //calculate waiting time
    for(i=1; i<n; i++)
    {
        /*wt[i]=0;
        for(j=0; j<i; j++)
            wt[i]+=bt[j];*/
        wt[i] = wt[i-1] + bt[i-1];
    }
    printf("\nProcess\t    Burst Time    \tWaiting Time\tTurnaround Time");
    for(i=0; i<n; i++)
    {
        tat[i]=bt[i]+wt[i];
        avtat+=tat[i];
        avwt+=wt[i];
        printf("\nP[%d]\t\t  %d\t\t    %d\t\t\t%d",p[i],bt[i],wt[i],tat[i]);
    }
    avwt/=i;
    avtat/=i;
    printf("\n\nAverage Waiting Time=%f",avwt);
     printf("\nAverage Turnaround Time=%f\n",avtat);
    return 0;
}
