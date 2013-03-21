//
//  HZCLAppDelegate.h
//  hzcLibShow
//
//  Created by Jiaping Liang on 13-3-21.
//  Copyright (c) 2013年 Jiaping Liang. All rights reserved.
//

#import <UIKit/UIKit.h>

@class HZCLViewController;
@class HZCLRootViewController;

@interface HZCLAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) HZCLViewController *viewController;

@property (strong, nonatomic) HZCLRootViewController *navRoot;

@end
