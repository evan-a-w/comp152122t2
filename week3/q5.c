#include <stdio.h>

int main(void) {
    int i;
    int numbers[10] = {0};

    i = 0;
    while (i < 10) {
        scanf("%d", &numbers[i]);
        i++;
    }
}

int main(void) {
    int i = 0;
    int numbers[10] = {0};
    
loop:
    if (i == 10) {
        goto end;
    }
    scanf("%d", &numbers[i]);
    i++;
    goto loop;
end:
}
