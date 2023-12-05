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
    int gm,gd=DETECT,radius;
    int x,y;
    printf("Enter x and y positions for circle\n");
    scanf("%d%d",&x,&y);
    printf("Enter radius of circle\n");
    scanf("%d",&radius);
    initgraph(&gd, &gm, (char*)"");
    circle(x,y,radius);
    boundaryfill(x,y,4,15);
    delay(5000);
    closegraph();
    return 0;
}
