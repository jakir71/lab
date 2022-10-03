#include<stdio.h>
int main()
{
    int i,n,qt,count=0,temp,time=0,bt[10],wt[10],tat[10],rem_bt[10];
    float avwt=0,avtat=0;
    printf("Enter number of processes : ");
    scanf("%d",&n);
    printf("Enter the burst time\n");
    for(i=0; i<n; i++)
    {
        printf("For process P%d : ",i+1);
        scanf("%d",&bt[i]);
        rem_bt[i]=bt[i];
    }
    printf("Enter the quantum time: ");
    scanf("%d",&qt);
    while(1)
    {
        for(i=0, count=0; i<n; i++)
        {
            temp=qt;
            if(rem_bt[i]==0)
            {
                count++;
                continue;
            }
            if(rem_bt[i]>qt)
                rem_bt[i]=rem_bt[i]-qt;
            else if(rem_bt[i]>=0)
            {
                temp=rem_bt[i];
                rem_bt[i]=0;
            }
            time=time+temp;
            tat[i]=time;
        }
        if(n==count)
            break;
    }
    printf("\nProcess\t   Burst Time\t Turnaround Time\tWaiting Time\n");
    for(i=0; i<n; i++)
    {
        wt[i]=tat[i]-bt[i];
        avwt+=wt[i];
        avtat+=tat[i];
        printf("  %d\t\t%d\t\t%d\t\t\t%d\n",i+1,bt[i],tat[i],wt[i]);
    }
    avwt/=n;
    avtat/=n;
    printf("\nAverage waiting time = %.2f\n",avwt);
    printf("Average turnaround time = %.2f\n",avtat);
    return 0;
}
