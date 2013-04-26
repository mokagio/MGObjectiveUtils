//
//  MGResizableLabel.m
//  CatAcademy
//
//  Created by Giovanni Lodi on 2/21/13.
//  Copyright (c) 2013 Memrise. All rights reserved.
//

#import "MGResizableLabel.h"

CGFloat kAnInsainlyHighHeight = 10000000;

@implementation MGResizableLabel

- (void)resizeHeightToFitText
{
    CGRect previousFrame = self.frame;
    CGRect newFrame = [self bounds];
    CGFloat textWidth = newFrame.size.width - (self.insets.left + self.insets.right);
    
    CGSize newSize = [self.text sizeWithFont:self.font
                           constrainedToSize:CGSizeMake(textWidth, kAnInsainlyHighHeight)
                               lineBreakMode:self.lineBreakMode];
    
    newFrame.size.height = newSize.height + self.insets.top + self.insets.bottom;
    
    self.frame = CGRectMake(previousFrame.origin.x, previousFrame.origin.y, previousFrame.size.width, newFrame.size.height);
}

@end
