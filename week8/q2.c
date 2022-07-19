#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#define MAX_LINE_LENGTH 60000

void search_file_pointer(char *str, char *sub_str, FILE *f) {
    int line_number = 0;

    while (fgets(str, MAX_LINE_LENGTH, f) != NULL) {
        line_number++;
        // search this line to see if it contains sub_str
        // sub_str = "abc", "bat meabc" => true
        // strstr(line, sub_str) returns NULL if it cant be found
        if (strstr(str, sub_str) != NULL) {
            printf("%d:%s", line_number, str);
        }
    }
}

int main(int argc, char **argv) {
    char str[MAX_LINE_LENGTH];
    char *sub_str = argv[1];
    // Searching stdin for lines that contain the first argument
    if (argc == 2) {
        search_file_pointer(str, sub_str, stdin); 
    } else if (argc > 2) {
        for (int argument = 2; argument < argc; argument++) {
            FILE *f = fopen(argv[argument], "r");

            if (f != NULL) { // opened successfully
                search_file_pointer(str, sub_str, f); 
                fclose(f);
            } else {
                perror(argv[argument]);
                exit(EXIT_FAILURE);
            }
        }
    } else {
        fprintf(stderr, "usage: %s sub_str file1 ...", argv[0]);
    }

    return EXIT_SUCCESS;
}
