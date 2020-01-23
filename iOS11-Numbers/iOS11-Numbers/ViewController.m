//
//  ViewController.m
//  iOS11-Numbers
//
//  Created by Percy Ngan on 1/23/20.
//  Copyright © 2020 Lamdba School. All rights reserved.
//

#import "ViewController.h"
#import "LSIPerson.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];

	// NsNumber

//	NSArray *array = [[NSArray alloc] initWithObjects:1, 2, 3, nil]; // Error: Implicit conversion of 'int' to 'id _Nonnull' is disallowed with ARC
// Objc: Arrays must hold objects not primitives (float, int, double, char)

	// c-string literal = "abc"
	// Objc String Literal = @"ABC"
	// Number Literal = @1
	// Array Literal = @[]

	NSNumber *one = @1; //[NSNumber numberWithInt:1];
	NSNumber *two = @2; //[NSNumber numberWithInt:2];
	NSNumber *three = @3; //[NSNumber numberWithInt:3];

	//	NSArray *array = [[NSArray alloc] initWithObjects:one, two, three, nil];

	//	NSArray *array = [[NSArray alloc] initWithObjects:one, two, three, nil];

	// Swift: [one, two, three]
	//NSArray *array = @[one, two, three];

	NSArray *array = @[@1, @2, @3];

		double sum = [self calculateSum:@[@3.14, @400, @-45, @1000.1]];
		printf("sum: %f\n", sum);

	// NSNumber *result = one * two;

		// Mutabilty

	// NSString = readonly "James"
	// NSMutableString = readwrite "James" -> "Jim"

	// NSArray, NSDictionary, NSSet

	// let = constant
	// let food = ["Tacos", "Apple"]
	// var = variable

	NSMutableString *james = [@"James" mutableCopy];
	LSIPerson *actor = [[LSIPerson alloc] initWithName:james];

	NSLog(@"Actor: %@", actor.name);
	[james setString: @"Jim"];

	NSLog(@"Actor: %@", actor.name);



	}

	- (double)calculateSum:(NSArray *)array {
		// TODO: Calculate the sum of the numbers in array

		// doubleValue
		double total = 0;

		for (NSNumber *number in array) {
//			total + number.doubleValue;
			total += number.doubleValue;
		}

		return total;

	}


@end
