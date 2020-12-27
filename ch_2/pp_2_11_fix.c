#include <stdio.h>
#include "utils.h"

void reverse_array(int a[], int cnt) {
    int first, last;
    for (first = 0, last = cnt - 1; first <= last; first++, last--) {
        if (first != last) {
            inplace_swap(&a[first], &a[last]);
        }
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

    int ints11[11] = {1,2,3,4,5,6,7,8,9,10,11};
    printf("\n\narray contents before inplace swap:\n\t");
    for (int i = 0; i < 11; i++){
        printf("%i ", ints11[i]);
    }

    reverse_array(ints11, 11);
    printf("\narray contents after inplace swap:\n\t");
    for (int i = 0; i < 11; i++){
        printf("%i ", ints11[i]);
    }

    return 0;
}