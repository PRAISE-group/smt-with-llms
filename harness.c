
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
extern int foo1_cb(int,int);
extern int foo_cb(int,int);
void main(){
int x;
int y;

scanf("%d %d " , &x, &y);
if ((x < y))
if (!((x + y == 8)))
if (((foo1_cb(y, x) == 8)) || ((foo1_cb(x, y) == 7)))
if (((foo_cb(x, y) == 8)) || ((foo_cb(x, y) == 7)))
assert(0);
}