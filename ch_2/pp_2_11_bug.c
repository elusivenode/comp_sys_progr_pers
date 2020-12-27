#include <stdio.h>
#include "utils.h"

void reverse_array(int a[], int cnt) {
    int first, last;
    for (first = 0, last = cnt - 1; first <= last; first++, last--) {
        inplace_swap(&a[first], &a[last]);
    }
}

int main () {
    int ints4[4] = {1,2,3,4};
    printf("array contents before inplace swap:\n\t");
    for (int i = 0; i < 4; i++){
        printf("%i ", ints4[i]);
    }

    reverse_array(ints4, 4);
    printf("\narray contents after inplace swap:\n\t");
    for (int i = 0; i < 4; i++){
        printf("%i ", ints4[i]);
    }

    int ints5[5] = {1,2,3,4,5};
    printf("\n\narray contents before inplace swap:\n\t");
    for (int i = 0; i < 5; i++){
        printf("%i ", ints5[i]);
    }

    reverse_array(ints5, 5);
    printf("\narray contents after inplace swap:\n\t");
    for (int i = 0; i < 5; i++){
        printf("%i ", ints5[i]);
    }

    return 0;
}