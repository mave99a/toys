//
//  MHViewController.m
//  Heart
//
//  Created by Haitao Li on 4/8/13.
//  Copyright (c) 2013 Haitao Li. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import "MHViewController.h"

@interface MHViewController () {
    UILabel * _label;
}

@end

@implementation MHViewController

- (void)dealloc
{
    [_label release];
    [super dealloc];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    CGRect frame = self.view.bounds;
    UIFont * font = [UIFont fontWithName:@"FontAwesome" size:MIN(frame.size.width, frame.size.height)];
    _label = [[UILabel alloc] initWithFrame:frame];
    _label.font = font;
    _label.text = @"";
    _label.textColor = [UIColor redColor];
    _label.backgroundColor = [UIColor clearColor];
    _label.autoresizingMask = UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin | UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;
    self.view.backgroundColor = [UIColor blackColor];
    [self.view addSubview:_label];

    [self startAnimation];
}

- (void)startAnimation
{
    _label.transform = CGAffineTransformIdentity;
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.3];
    [UIView setAnimationRepeatAutoreverses:YES];
    [UIView setAnimationRepeatCount:HUGE_VALF];
    _label.transform = CGAffineTransformMakeScale(0.8, 0.8);
    [UIView commitAnimations];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
