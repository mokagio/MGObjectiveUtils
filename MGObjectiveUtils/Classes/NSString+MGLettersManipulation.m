//
//  NSString+MGLettersManipulation.m
//  CatAcademy
//
//  Created by Giovanni Lodi on 2/27/13.
//  Copyright (c) 2013 Memrise. All rights reserved.
//

#import "NSString+MGLettersManipulation.h"

@implementation NSString (MGLettersManipulation)

- (NSArray *)arrayOfCharacters
{
    return [self arrayOfCharactersRemoveDuplicates:NO];
}

- (NSArray *)arrayOfCharactersRemoveDuplicates:(BOOL)removeDuplicates
{
    NSMutableArray *result = [NSMutableArray arrayWithCapacity:self.length];
    // could almost use NSScanner here...
    for (NSUInteger i = 0; i < self.length; i++) {
        [result addObject:[NSString stringWithFormat:@"%C",
                           [self characterAtIndex:i]]];
    }
    return (
            removeDuplicates ?
            [[NSOrderedSet orderedSetWithArray:result] allObjects] :
            result.copy
            );
}

- (NSArray *)arrayOfCharacters:(NSUInteger)numberOfCharacters removeDulicates:(BOOL)removeDuplicates
{
    NSMutableArray *mute = [self arrayOfCharactersRemoveDuplicates:removeDuplicates].mutableCopy;
    
    // no harm in making this into a category on NSArray/NSMutableArray...
    // http://stackoverflow.com/questions/56648/whats-the-best-way-to-shuffle-an-nsmutablearray
    for (NSUInteger i = 0; i < mute.count; ++i)
    {
        int nElements = mute.count - i;
        int n = arc4random_uniform(nElements) + i;
        [mute exchangeObjectAtIndex:i withObjectAtIndex:n];
    }
    
    return [mute subarrayWithRange:NSMakeRange(0, MIN(mute.count, numberOfCharacters))].copy;
}

@end
