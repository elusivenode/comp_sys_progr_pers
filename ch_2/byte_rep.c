#include <stdio.h>

typedef unsigned char *byte_pointer;

void show_bytes(byte_pointer start, size_t len) {
    int i;
    for (i = 0; i < len; i++)
        printf(" %.2x", start[i]);
    printf("\n");
}

void show_int(int x) {
    show_bytes((byte_pointer) &x, sizeof(int));
}

void show_float(float x) {
    show_bytes((byte_pointer) &x, sizeof(float));
}

void show_pointer(void *x) {
    show_bytes((byte_pointer) &x, sizeof(void *));
}

void test_show_bytes(int val) {
    int ival = val;
    float fval = (float) ival;
    int *pval = &ival;
    show_int(ival);
    show_float(fval);
    show_pointer(pval);
}

int main(int argc, char *argv[]) {
    printf("Running for value 12345: \n");
    test_show_bytes(12345);
    printf("\n");

    printf("Running for value 1: \n");
    test_show_bytes(1);
    printf("\n");

    printf("Running for value 2: \n");
    test_show_bytes(2);
    printf("\n");

    printf("Running for value 4: \n");
    test_show_bytes(4);
    printf("\n");

    printf("Running for value 8: \n");
    test_show_bytes(8);
    printf("\n");

    printf("Running for value 16: \n");
    test_show_bytes(16);
    printf("\n");

    printf("Running for value 32: \n");
    test_show_bytes(32);
    printf("\n");

    printf("Running for value 64: \n");
    test_show_bytes(64);
    printf("\n");

    printf("Running for value 128: \n");
    test_show_bytes(128);
    printf("\n");

    printf("Running for value 256: \n");
    test_show_bytes(256);
    printf("\n");
}