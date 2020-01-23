//
//  LSIPerson.m
//  iOS11-Numbers
//
//  Created by Percy Ngan on 1/23/20.
//  Copyright © 2020 Lamdba School. All rights reserved.
//

#import "LSIPerson.h"

@implementation LSIPerson

- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (self) {
		_name = [name copy]; // Always copy a value if property has it
    }
    return self;
}

@end
