
    #include <stdio.h>
    #include <stdlib.h>
    #include <assert.h>
    extern int foo1_cb(int,int);
extern int foo_cb(int,int);
void main(){
int x;
int y;

scanf("%d %d " , &x, &y);
printf("%d %d  %d", (x), (y), foo_cb(x, y)); 
}