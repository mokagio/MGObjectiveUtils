//
//  UIViewController+Threads.h
//  CatAcademy
//
//  Created by Giovanni Lodi on 3/26/13.
//  Copyright (c) 2013 Memrise. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (Threads)

- (void)dispatchBlockOnMainThread:(void(^)())block;

@end
