#include <stdio.h>
#include <pthread.h>
#include <unistd.h>

void *thread(void *data) {
    for (;; sleep(1)) {
        printf("feed me input\n");
    }

    return NULL;
}

int main(void) {
    pthread_t pthread;
    pthread_create(&pthread, NULL, thread, NULL);    

    char str[10000];

    while (fgets(str, 10000, stdin) != NULL) {
        printf("you entered: %s", str);
    }

    pthread_cancel(pthread);

    return 0;
}
