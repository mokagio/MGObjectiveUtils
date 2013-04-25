//
//  MGViewController.m
//  ObjectiveUtilsExamples
//
//  Created by Gio on 25/04/2013.
//  Copyright (c) 2013 mokagio. All rights reserved.
//

#import "MGViewController.h"
#import "MGInsetLabel.h"

@interface MGViewController ()

@end

@implementation MGViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    CGFloat width = self.view.frame.size.width;
    CGFloat height = 100;
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, width, height)];
    label.center = CGPointMake(self.view.center.x, 100);
    label.numberOfLines = 0;
    label.lineBreakMode = NSLineBreakByCharWrapping;
    [self.view addSubview:label];
    
    MGInsetLabel *insetLabel = [[MGInsetLabel alloc] initWithFrame:CGRectMake(0, 0, width, height)];
    insetLabel.insets = UIEdgeInsetsMake(10, 10, 10, 10);
    insetLabel.center = CGPointMake(self.view.center.x, 220);
    insetLabel.numberOfLines = 0;
    insetLabel.lineBreakMode = NSLineBreakByCharWrapping;
    [self.view addSubview:insetLabel];
    
    NSString *labelMessage = @"label without insets label without insets label without insets label without insets label without insets ";
    label.text = labelMessage;
    NSString *insetLabelMessage = @"label with insets label with insets label with insets label with insets label with insets ";
    insetLabel.text = insetLabelMessage;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
