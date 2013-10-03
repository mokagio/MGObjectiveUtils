//
//  NSString+Formatting.h
//  CatAcademy
//
//  Created by Gio on 14/06/2013.
//  Copyright (c) 2013 Memrise. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Formatting)

+ (NSString *)formattedTimeFromTimeInterval:(NSTimeInterval)timeIterval;
+ (NSString *)formattedTimeFromTimeIntervalWithLetters:(NSTimeInterval)timeIterval;

@end
