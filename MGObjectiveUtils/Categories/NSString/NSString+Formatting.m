//
//  NSString+Formatting.m
//  CatAcademy
//
//  Created by Gio on 14/06/2013.
//  Copyright (c) 2013 Memrise. All rights reserved.
//

#import "NSString+Formatting.h"

@implementation NSString (Formatting)

+ (NSString *)formattedTimeFromTimeInterval:(NSTimeInterval)timeIterval
{
    NSInteger timeLeft = (NSInteger)timeIterval;
    NSInteger seconds = timeLeft % 60;
    NSInteger minutes = (timeLeft / 60) % 60;
    NSInteger hours = (timeLeft / 3600);
    return [NSString stringWithFormat:@"%02i:%02i:%02i", hours, minutes, seconds];
}

+ (NSString *)formattedTimeFromTimeIntervalWithLetters:(NSTimeInterval)timeIterval
{
    NSInteger timeLeft = (NSInteger)timeIterval;
    NSInteger seconds = timeLeft % 60;
    NSInteger minutes = (timeLeft / 60) % 60;
    NSInteger hours = (timeLeft / 3600);

    return [NSString stringWithFormat:@"%02ih %02im %02is", hours, minutes, seconds];
}

@end
