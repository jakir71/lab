#include<stdio.h>
int main()
{
    int at[10],bt[10],rt[10],endTime,i,smallest;
    int remain=0,n,time,avwt=0,avtat=0;
    printf("Enter no of Processes : ");
    scanf("%d",&n);
    for(i=0; i<n; i++)
    {
        printf("Enter arrival time for Process P%d : ",i+1);
        scanf("%d",&at[i]);
        printf("Enter burst time for Process P%d : ",i+1);
        scanf("%d",&bt[i]);
        rt[i]=bt[i];
    }
    printf("\n\nProcess\t|Turnaround Time| Waiting Time\n\n");
    rt[9]=9999;
    for(time=0; remain!=n; time++)
    {
        smallest=9;
        for(i=0; i<n; i++)
        {
            if(at[i]<=time && rt[i]<rt[smallest] && rt[i]>0)
            {
                smallest=i;
            }
        }
        rt[smallest]--;
        if(rt[smallest]==0)
        {
            remain++;
            endTime=time+1;
            printf("\nP[%d]\t|\t%d\t|\t%d",smallest+1,endTime-at[smallest],endTime-bt[smallest]-at[smallest]);
            avwt+=endTime-bt[smallest]-at[smallest];
            avtat+=endTime-at[smallest];
        }
    }
    printf("\n\nAverage waiting time = %f\n",avwt*1.0/n);
    printf("Average Turnaround time = %f",avtat*1.0/n);
    return 0;
}
