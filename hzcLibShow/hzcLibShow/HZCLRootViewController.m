//
//  HZCLRootViewController.m
//  hzcLibShow
//
//  Created by Jiaping Liang on 13-3-21.
//  Copyright (c) 2013年 Jiaping Liang. All rights reserved.
//

#import "HZCLRootViewController.h"

@interface HZCLRootViewController ()

@end

@implementation HZCLRootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//For ios 5 totate to landscape,in ios 6 it was deprecated.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
{
    //return (toInterfaceOrientation == self.preferredInterfaceOrientationForPresentation);
    return (toInterfaceOrientation != UIDeviceOrientationPortraitUpsideDown);
}

- (BOOL)shouldAutorotate
{
    return YES;
}

- (NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskLandscape;
}

@end
