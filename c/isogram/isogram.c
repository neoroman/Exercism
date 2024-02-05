#include "isogram.h"

bool is_isogram(const char phrase[]) {
    int length = 0;
    char partStr[30];

    if (phrase == NULL) {
        return false;
    }

    for (int i = 0; phrase[i] != '\0'; i ++) {
        length ++;
        if (phrase[i] != '-') {
            char aChar = phrase[i];
            strcat(partStr, &aChar);
        }
    }
    printf("Part of string => %s\n", partStr);

    for (int j = 0; j < length; j ++) {
        if (phrase[j] != '\0' && phrase[j] != '-') {
            char *result = strchr(partStr, phrase[j]);
            printf("Result(%s), part of string(%s), find(%c)\n", result, partStr, phrase[length]);
            if (result != NULL) {
                return false;
            }
        }
    }

    return true;
}
