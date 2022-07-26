#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int argc, char **argv) {
    char *home = getenv("HOME");
    if (home == NULL) {
        perror("getenv");
        exit(1);
    }

    int home_length = strlen(home);
    char *str = malloc(home_length + 8);

    sprintf(str, "%s/.diary", home);

    FILE *f = fopen(str, "r");
    if (f == NULL) {
        // fprintf(stderr, "File '%s' couldn't be opened\n", str);
        perror(str);
        exit(1);
    }

    int c;
    while ((c = fgetc(f)) != EOF) {
        fputc(c, stdout);
    }

    chmod(str, s.st_mode | 0b100);
    chmod(str, 0740);
    chmod(str, 0x740);

    fclose(f);
}
