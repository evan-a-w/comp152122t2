#include <stdio.h>
#include <pthread.h>

int global_total = 0;
pthread_mutex_t lock = PTHREAD_MUTEX_INITIALIZER;

void *add_5000_to_counter(void *data) {
    for (int i = 0; i < 5000; i++) {
        // sleep for 1 nanosecond
        nanosleep (&(struct timespec){.tv_nsec = 1}, NULL);
        
        // Enforce that this only runs for one thread at once
        // increment the global total by 1

        // ask for lock here
        pthread_mutex_lock(&lock);
        global_total++;
        // release lock here
        pthread_mutex_unlock(&lock);
    }

    return NULL;
}

int main(void) {
    pthread_t thread1;
    pthread_create(&thread1, NULL, add_5000_to_counter, NULL);

    pthread_t thread2;
    pthread_create(&thread2, NULL, add_5000_to_counter, NULL);

    pthread_join(thread1, NULL);
    pthread_join(thread2, NULL);

    // if program works correctly, should print 10000
    printf("Final total: %d\n", global_total);
}
