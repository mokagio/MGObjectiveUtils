//
//  NSDate+MGShorthands.m
//  MGObjectiveUtilsPlayground
//
//  Created by Gio on 15/07/2013.
//  Copyright (c) 2013 mokagio. All rights reserved.
//

#import "NSDate+MGShorthands.h"

@implementation NSDate (MGShorthands)

+ (NSDate *)now
{
    return [NSDate date];
}

- (NSDate *)dateForTheEndOfTheDay
{
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *endOfTheDayComponents = [calendar components:NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit
                                                          fromDate:self];
    endOfTheDayComponents.hour = 23;
    endOfTheDayComponents.minute = 59;
    endOfTheDayComponents.second = 59;
    return [calendar dateFromComponents:endOfTheDayComponents];
}

- (NSDate *)dateForTheStartOfTheDay
{
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *startOfTheDayComponents = [calendar components:NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit
                                                            fromDate:self];
    startOfTheDayComponents.hour = 0;
    startOfTheDayComponents.minute = 0;
    startOfTheDayComponents.second = 0;
    return [calendar dateFromComponents:startOfTheDayComponents];
}

@end
