//
//  NSArray+MGUtils.h
//  CatAcademy
//
//  Created by Gio on 25/06/2013.
//  Copyright (c) 2013 Memrise. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (MGUtils)

- (NSArray *)subarrayWithDesiredLength:(NSUInteger)desiredLength;
- (NSArray *)subarrayWithDesiredLength:(NSUInteger)desiredLength fromLocation:(NSUInteger)location;

@end