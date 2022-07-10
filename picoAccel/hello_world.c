#include <stdio.h>
#include "pico/stdlib.h"

int main() {
	stdio_init_all();
        setup_default_uart();
	printf("Hello, world!\n");
	return 0;
}
