//
//  LSIPerson.h
//  iOS11-Numbers
//
//  Created by Percy Ngan on 1/23/20.
//  Copyright © 2020 Lamdba School. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LSIPerson : NSObject

- (instancetype)initWithName:(NSString *)name;

@property (nonatomic, copy) NSString *name; // Always use copy with NSString *

@end
