//
//  NSString+Filter.h
//  CatAcademy
//
//  Created by Giovanni Lodi on 3/19/13.
//  Copyright (c) 2013 Memrise. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Filter)

- (NSString *)stringByRemovingOccurrencesOfString:(NSString *)filter;
- (NSString *)stringByFilteringPunctuation;

@end
