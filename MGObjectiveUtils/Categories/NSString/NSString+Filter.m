//
//  NSString+Filter.m
//  CatAcademy
//
//  Created by Giovanni Lodi on 3/19/13.
//  Copyright (c) 2013 Memrise. All rights reserved.
//

#import "NSString+Filter.h"

@implementation NSString (Filter)

- (NSString *)stringByRemovingOccurrencesOfString:(NSString *)filter
{
    return [self stringByReplacingOccurrencesOfString:filter withString:@""];
}

- (NSString *)stringByFilteringPunctuation
{
    NSString *filtered = self;
    filtered = [filtered stringByRemovingOccurrencesOfString:@"?"];
    filtered = [filtered stringByRemovingOccurrencesOfString:@"¿"];
    filtered = [filtered stringByRemovingOccurrencesOfString:@"!"];
    filtered = [filtered stringByRemovingOccurrencesOfString:@"¡"];
    filtered = [filtered stringByRemovingOccurrencesOfString:@","];
    filtered = [filtered stringByRemovingOccurrencesOfString:@"."];
    filtered = [filtered stringByRemovingOccurrencesOfString:@":"];
    
    return filtered;
}

@end
