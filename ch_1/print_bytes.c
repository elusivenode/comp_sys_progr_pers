#include <stdio.h>

int main() {
  FILE *file = fopen("hello.c", "r");
  if (file == NULL) {
    perror("Failed to open file");
    return 1;
  }

  int ch;
  while ((ch = fgetc(file)) != EOF) {
    printf("%c: hex: %02x dec: %d \n", ch, (unsigned char)ch, ch);
  }

  fclose(file);
  return 0;
}

// cc -o print_bytes print_bytes.c && ./print_bytes