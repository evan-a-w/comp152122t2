#include <stdint.h>

typedef uint32_t Word;

Word reverseBits(Word w) {
    Word res = 0;
    for (Word i = 0; i < 32; i++) {
        // use an and to get the ith bit
        Word current_bit = (w & (1u << i)) >> i;
        Word result_index = 31 - i;
        // Set the result index to the current bit
        res = res | (current_bit << result_index);
    }

    return res;
}
