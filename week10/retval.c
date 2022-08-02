#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>

void *thread_function(void *data) {
    int *c = malloc(sizeof *c);
    *c = 10;
    return c;
}

int main(void) {
    pthread_t p;
    // Pass "Hello\n" to the thread
    pthread_create(&p, NULL, thread_function, (void *)"Hello\n");


    int *c;
    pthread_join(p, &c);

    printf("%d\n", *c);

    return 0;
}
