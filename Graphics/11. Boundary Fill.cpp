#include<graphics.h>
#include<dos.h>

void boundaryfill(int x,int y,int f_color,int b_color)
{
    if(getpixel(x,y)!=b_color && getpixel(x,y)!=f_color)
    {
        putpixel(x,y,f_color);
        boundaryfill(x+1,y,f_color,b_color);
        boundaryfill(x,y+1,f_color,b_color);
        boundaryfill(x-1,y,f_color,b_color);
        boundaryfill(x,y-1,f_color,b_color);
    }
}

int main()
{
    int gd = DETECT, gm;
    initgraph(&gd, &gm, (char*)"");
    int h,k,r;
    printf("Enter the co-ordinate of Circle's Center (h,k):\n");
    scanf("%d%d",&h,&k);
    printf("Enter radius of circle\n");
    scanf("%d",&r);
    circle(h,k,r);
    boundaryfill(h,k,4,15);
    delay(5000);
    closegraph();
    return 0;
}
