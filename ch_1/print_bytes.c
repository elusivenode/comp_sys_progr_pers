#include <stdio.h>
#include <limits.h>
#include <libgen.h>
#include <stdlib.h>
#include <string.h>

int main(int argc, char **argv) {
  const char *path_from_root = "ch_1/hello.c";
  const char *path_from_bin = "../../ch_1/hello.c";

  FILE *file = fopen(path_from_root, "r");
  if (file == NULL && argc > 0) {
    char exe_path[PATH_MAX];
    if (realpath(argv[0], exe_path) != NULL) {
      char *dir_buf = strdup(exe_path);
      if (dir_buf != NULL) {
        char *dir = dirname(dir_buf);
        char full_path[PATH_MAX];
        int written = snprintf(full_path, sizeof(full_path), "%s/%s", dir, path_from_bin);
        if (written > 0 && written < (int) sizeof(full_path)) {
          file = fopen(full_path, "r");
        }
        free(dir_buf);
      }
    }
  }

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
