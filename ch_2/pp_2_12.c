#include <stdio.h>

typedef unsigned char *byte_pointer;

void show_bytes(byte_pointer start, size_t len) {
    int i;
    for (i = 0; i < len; i++)
        printf(" %.2x", start[i]);
    printf("\n");
}

void least_sig(byte_pointer start, size_t len) {
    int i;
    for (i = 1; i < len; i++) {
        start[i] = 0x00;
    }
}

void complement_more_sig(byte_pointer start, size_t len) {
    int i;
    for (i = 1; i < len; i++) {
        start[i] = ~start[i];
    }
}

void least_sig_ones(byte_pointer start, size_t len) {
    start[0] = 0xFF;
}

int main() {
    int a = 4;
    float b = 8.0;
    double c = 10.0;
    long d = 2271560481;

    printf("size of int 4 is %ld\n", sizeof(a));
    printf("size of float 8.0 is %ld\n", sizeof(b));
    printf("size of double 10.0 is %ld\n", sizeof(c));
    printf("size of double 2271560841 is %ld\n", sizeof(d));

    show_bytes((byte_pointer) &a, sizeof(a));
    show_bytes((byte_pointer) &b, sizeof(b));
    show_bytes((byte_pointer) &c, sizeof(c));
    show_bytes((byte_pointer) &d, sizeof(d));

    least_sig((byte_pointer) &d, sizeof(d));
    show_bytes((byte_pointer) &d, sizeof(d));

    d = 2271560481;
    complement_more_sig((byte_pointer) &d, sizeof(d));
    show_bytes((byte_pointer) &d, sizeof(d));

    d = 2271560481;
    least_sig_ones((byte_pointer) &d, sizeof(d));
    show_bytes((byte_pointer) &d, sizeof(d));

    return 0;
}