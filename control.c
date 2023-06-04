#include <stdio.h>

#define orElse(a, b) ({typeof(a) _a = (a); _a ? _a : b; })

int main() {
    const char* names[] = {"John", NULL, "Jack", "Jill", NULL, "Bill"};
    for (int i = 0; i < sizeof(names) / sizeof(*names); ++i) {
        const char* optName = names[i];
        printf("Hello1 %s\n", (optName ? optName : "None"));
        printf("Hello2 %s\n", orElse(optName, "None"));
        printf("Hello3 %s\n", optName ?: "None"); // GCC elvis operator
    }
}
