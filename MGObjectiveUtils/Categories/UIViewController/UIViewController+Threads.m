//
//  UIViewController+Threads.m
//  CatAcademy
//
//  Created by Giovanni Lodi on 3/26/13.
//  Copyright (c) 2013 Memrise. All rights reserved.
//

#import "UIViewController+Threads.h"

@implementation UIViewController (Threads)

- (void)dispatchBlockOnMainThread:(void (^)())block
{
    NSAssert(block, @"No block given!");
    dispatch_async(dispatch_get_main_queue(), ^{
        block();
    });
}

@end
