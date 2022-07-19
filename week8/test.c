#include <stdio.h>

int main(void) {
    // printf("%d\n", 1);
    // fprintf(stdout, "%d\n", 2);
    // fprintf(stderr, "%d\n", 3);
    // 

    // int i;
    // scanf("%d", &i);
    // printf("%d\n", i);

    // fscanf(stdin, "%d", &i);
    // printf("%d\n", i);

    // fgetc(stdin);

    char s[60000];
    FILE *f = fopen("test.txt", "r");
    // "w" for write
    // "a" for append - write to end of existing file

    if (f == NULL) {
        perror("test.txt");
    } else {
        fgets(s, 60000, f);
        printf("%s\n", s);
    }

    fclose(f);
}
