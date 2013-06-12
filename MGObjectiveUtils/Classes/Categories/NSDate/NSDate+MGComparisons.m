//
//  NSDate+Comparisons.m
//
//  Created by mokagio on 13/06/2013.
//  Copyright (c) 2013 mokagio. All rights reserved.
//

#import "NSDate+Comparisons.h"

@implementation NSDate (Comparisons)

- (BOOL)isSameCalendarDayAs:(NSDate *)date
{
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *selfComponents = [calendar components:NSDayCalendarUnit fromDate:self];
    NSDateComponents *matchComponents = [calendar components:NSDayCalendarUnit fromDate:date];
    
    return selfComponents.day == matchComponents.day;
}

@end
