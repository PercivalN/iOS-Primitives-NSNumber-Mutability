//
//  main.m
//  iOS11-Pointers
//
//  Created by Percy Ngan on 1/23/20.
//  Copyright © 2020 Lamdba School. All rights reserved.
//

#import <Foundation/Foundation.h>

// Goal: Print Your Name
void pointerTest(void) {
    char *message = "Hello xxxxxxxxxxxxxxxxxxxx!"; // '\0' = null terminated

    printf("message pointer: %p\n", message);
    printf("message: %s\n", message);

    unsigned long length = strlen(message);
    printf("Please allocate a string of size: %zu\n", sizeof(char) * length + 1);
    char *ptr = malloc(sizeof(char) * length + 1);	// memory allocation
    ptr = strcpy(ptr, message);

    // Set your name!

    ptr[6] = 'P'; // START HERE
	ptr[7] = 'E';
	ptr[8] = 'R';
	ptr[9] = '\0';


    printf("message: %s\n", ptr);


    // Expected: message: Hello Paul!    // No x's!


    free(ptr);
}

int main(int argc, const char * argv[]) {
	@autoreleasepool {

		char letter = 't';
		char nullChar = '\0'; // NULL "Mac\0"
		printf("letter: %c\n", letter);  // print formatted
		printf("letter: %c\n", nullChar);

		int count = 2;
		printf("count: %i\n", count);

		// floating point numbers
		float float_pi = 3.1459265359; // rounding to 3.14592648
		double pi = 3.1459265359;	// more precise, but both are not exact (Don't use for currency)

		printf("float_pi: %f\n", float_pi);
		printf("pi: %f\n", pi);

		int value = 42;
		printf("value: %i\n", value);

		char *ptr = "Hello iOS11!"; // value at ptr 
		printf("ptr: %s\n", ptr);
		printf("&ptr: %p\n", &ptr); // address of pointer


	}
	return 0;
}

// git init
//
// 
