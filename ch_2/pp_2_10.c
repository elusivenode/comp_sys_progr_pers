#include <stdio.h>

void inplace_swap(int *x, int *y) {
    *y = *x ^ *y;
    *x = *x ^ *y;
    *y = *x ^ *y;
}

int main() {
    int x = 0;
    int y = 1;
    printf("x is %i and y is %i before swapping.\n", x, y);
    inplace_swap(&x, &y);
    printf("x is %i and y is %i after swapping.\n", x, y);

    int x1 = 10;
    int y1 = 11;
    printf("\nx is %i and y is %i before swapping.\n", x1, y1);
    inplace_swap(&x1, &y1);
    printf("x is %i and y is %i after swapping.\n", x1, y1);

    int x2 = 100;
    int y2 = 27;
    printf("\nx is %i and y is %i before swapping.\n", x2, y2);
    inplace_swap(&x2, &y2);
    printf("x is %i and y is %i after swapping.\n", x2, y2);
}