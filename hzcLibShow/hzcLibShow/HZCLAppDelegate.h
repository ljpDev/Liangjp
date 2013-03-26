//
//  HZCLAppDelegate.h
//  hzcLibShow
//
//  Created by Jiaping Liang on 13-3-21.
//  Copyright (c) 2013年 Jiaping Liang. All rights reserved.
//

#import <UIKit/UIKit.h>

@class HZCLViewController;
@class HZCLCustomNavController;

@interface HZCLAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) HZCLCustomNavController *navRoot;

@end
