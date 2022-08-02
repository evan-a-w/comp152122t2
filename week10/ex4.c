#include <pthread.h>
#include <stdio.h>

void *thread_function(void *data) {
    // data is a string
    char *string = data;

    // print string infinitely
    while (1) {
        puts(string);
    }

    return NULL;
}

int main(void) {
    pthread_t p;
    // Pass "Hello\n" to the thread
    pthread_create(&p, NULL, thread_function, (void *)"Hello\n");

    // print string infinitely
    while (1) {
        puts("there\n");
    }

    pthread_join(p, NULL);

    return 0;
}
