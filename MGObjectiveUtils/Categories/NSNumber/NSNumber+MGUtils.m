//
//  NSNumber+Utils.m
//  CatAcademy
//
//  Created by Giovanni Lodi on 2/14/13.
//  Copyright (c) 2013 Memrise. All rights reserved.
//

#import "NSNumber+MGUtils.h"

@implementation NSNumber (MGUtils)

- (NSNumber *)numberByUpdatingWithIntegerDelta:(NSInteger)delta
{
    NSInteger integerValue = [self integerValue];
    integerValue += delta;
    return [NSNumber numberWithInteger:integerValue];
}

@end
