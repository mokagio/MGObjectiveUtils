//
//  NSDate+MGShorthands.h
//  MGObjectiveUtilsPlayground
//
//  Created by Gio on 15/07/2013.
//  Copyright (c) 2013 mokagio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (MGShorthands)

+ (NSDate *)now;
+ (NSDate *)yesterday;

- (NSDate *)dateForTheStartOfTheDay;
- (NSDate *)dateForTheEndOfTheDay;

@end
