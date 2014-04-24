//
//  MGResizableLabel.m
//  CatAcademy
//
//  Created by Giovanni Lodi on 2/21/13.
//  Copyright (c) 2013 Memrise. All rights reserved.
//

#import "MGResizableLabel.h"

@implementation MGResizableLabel

- (void)resizeHeightToFitText
{
    CGRect previousFrame = self.frame;
    CGRect newFrame = [self bounds];
    CGFloat textWidth = newFrame.size.width - (self.insets.left + self.insets.right);
    
    CGRect frame = [self.text boundingRectWithSize:(CGSize){ textWidth, CGFLOAT_MAX }
                                           options:NSStringDrawingUsesLineFragmentOrigin
                                        attributes:@{ NSFontAttributeName: self.font }
                                           context:nil];
    
    newFrame.size.height = frame.size.height + self.insets.top + self.insets.bottom;
    
    self.frame = CGRectMake(previousFrame.origin.x, previousFrame.origin.y, previousFrame.size.width, newFrame.size.height);
}

@end
