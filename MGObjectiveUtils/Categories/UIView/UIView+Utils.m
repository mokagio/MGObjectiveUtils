//
//  UIView+Utils.m
//  CatAcademy
//
//  Created by Giovanni Lodi on 11/12/12.
//  Copyright (c) 2012 Memrise. All rights reserved.
//

#import "UIView+Utils.h"

@implementation UIView (Utils)

// See: http://stackoverflow.com/questions/2309569/how-to-get-uiviewcontroller-of-a-uiviews-superview-in-iphone-sdk
- (UIViewController*)viewController
{
    for (UIView* next = [self superview]; next; next = next.superview)
    {
        UIResponder* nextResponder = [next nextResponder];
        
        if ([nextResponder isKindOfClass:[UIViewController class]])
        {
            return (UIViewController*)nextResponder;
        }
    }
    
    return nil;
}

@end
