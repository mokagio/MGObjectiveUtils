//
//  NSArray+MGUtils.m
//  CatAcademy
//
//  Created by Gio on 25/06/2013.
//  Copyright (c) 2013 Memrise. All rights reserved.
//

#import "NSArray+MGUtils.h"

@implementation NSArray (MGUtils)

- (NSArray *)subarrayWithDesiredLength:(NSUInteger)desiredLength
{
    NSUInteger rangeLength = MIN(desiredLength, [self count]);
    NSRange range = NSMakeRange(0, rangeLength);
    return [self subarrayWithRange:range];
}

- (NSArray *)subarrayWithDesiredLength:(NSUInteger)desiredLength fromLocation:(NSUInteger)location
{
    NSUInteger rangeLocation = MIN([self count] - 1, location);
    NSUInteger rangeLenght = MIN(desiredLength, [self count] - rangeLocation);
    NSRange range = NSMakeRange(rangeLocation, rangeLenght);
    return [self subarrayWithRange:range];
}

@end