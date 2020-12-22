#include <stdio.h>

typedef unsigned char *byte_pointer;

void show_bytes(byte_pointer start, size_t len) {
    int i;
    for (i = 0; i < len; i++)
        printf(" %.2x", start[i]);
    printf("\n");
}

int main(int argc, char *argv[]) {
    int a = 0x12345678;
    byte_pointer ap = (byte_pointer) &a;
    printf("Running show_bytes(ap, 1): \n");
    show_bytes(ap, 1);
    printf("Running show_bytes(ap, 2): \n");
    show_bytes(ap, 2);
    printf("Running show_bytes(ap, 3): \n");
    show_bytes(ap, 3);
    printf("Running show_bytes(ap, 4): \n");
    show_bytes(ap, 4);
}