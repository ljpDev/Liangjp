//
//  HZCLViewController.m
//  hzcLibShow
//
//  Created by Jiaping Liang on 13-3-21.
//  Copyright (c) 2013年 Jiaping Liang. All rights reserved.
//

#import "HZCLViewController.h"

@interface HZCLViewController ()

@end

@implementation HZCLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

////For ios 5 totate to landscape,in ios 6 it was deprecated.
//- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
//{
//    //return (toInterfaceOrientation == self.preferredInterfaceOrientationForPresentation);
//    return (toInterfaceOrientation != UIDeviceOrientationPortraitUpsideDown);
//}
//
-(BOOL)shouldAutorotate
{
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"_rotation"];
}
//
//- (NSUInteger)supportedInterfaceOrientations
//{
//    return UIInterfaceOrientationMaskLandscape;
//}

//- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
//{
//    return UIInterfaceOrientationLandscapeRight;
//}

@end
