//
//  NSString+LettersManipulation.h
//  CatAcademy
//
//  Created by Giovanni Lodi on 2/27/13.
//  Copyright (c) 2013 Memrise. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (MGLettersManipulation)

- (NSArray *)arrayOfCharacters;
- (NSArray *)arrayOfCharactersRemoveDuplicates:(BOOL)removeDuplicates;
- (NSArray *)arrayOfCharacters:(NSUInteger)numberOfCharacters removeDulicates:(BOOL)removeDuplicates;

@end
