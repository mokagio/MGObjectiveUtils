//  NSStringPlusLetterManipulationSpec.m
//
//  Created by Gio on 09/07/2013.
//  Copyright (c) 2013 Memrise. All rights reserved.
//

#import <Kiwi.h>
#import "NSString+MGLettersManipulation.h"

SPEC_BEGIN(NSStringPlusMGLettersManipulationSpec)

describe(@"NSString+LettersManipulation", ^{
    
    describe(@"arrayOfCharacters method", ^{
        
        it(@"should return an array of characters", ^{
            [[[@"abcde" arrayOfCharacters] should] equal:@[@"a", @"b", @"c", @"d", @"e"]];
        });
        
        it(@"shouldn't return nil on a nil string", ^{
            NSString *nilString = nil;
            [[nilString arrayOfCharacters] shouldBeNil];
        });
        
    });
    
    describe(@"arrayOfCharactersRemoveDuplicates: method", ^{
        
        it(@"should remove duplicated characters", ^{
            [[[@"aaaaabbbbc" arrayOfCharactersRemoveDuplicates:YES] should] equal:@[@"a", @"b", @"c"]];
        });
        
        it(@"should not remove duplicates if not asked for it", ^{
            [[[@"aabbc" arrayOfCharactersRemoveDuplicates:NO] should] equal:@[@"a", @"a", @"b", @"b", @"c"]];
        });
        
    });
    
    describe(@"arrayOfCharacters:removeDuplicates:", ^{
        
        context(@"removeDuplicates:YES", ^{
            it(@"should return the specified number of characters", ^{
                NSUInteger num = 3;
                NSString *string = @"aaaabbbbccccddddeeee";
                NSArray *array = [string arrayOfCharacters:num removeDulicates:YES];
                NSUInteger count = [array count];
                [[@(count) should] equal:@(num)];
            });
        });
        
        context(@"removeDuplicates:NO", ^{
            it(@"should return the specified number of characters", ^{
                NSUInteger num = 3;
                NSString *string = @"aaaabbbbccccddddeeee";
                NSArray *array = [string arrayOfCharacters:num removeDulicates:NO];
                NSUInteger count = [array count];
                [[@(count) should] equal:@(num)];
            });
        });
        
    });
});

SPEC_END
