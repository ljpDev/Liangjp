//
//  HZCLAppDelegate.m
//  hzcLibShow
//
//  Created by Jiaping Liang on 13-3-21.
//  Copyright (c) 2013年 Jiaping Liang. All rights reserved.
//

#import "HZCLAppDelegate.h"

#import "HZCLCustomNavController.h"
#import "HZCLViewController.h"

@implementation HZCLAppDelegate

- (void)dealloc
{
    [_window release];
    [_navRoot release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    
    [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"_rotation"];
    // Override point for customization after application launch.
    //Add navigation view
    self.navRoot = [[HZCLCustomNavController alloc] init];
    HZCLViewController *firstView;
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        firstView = [[[HZCLViewController alloc] initWithNibName:@"HZCLViewController_iPhone" bundle:nil] autorelease];
        firstView.title =@"Welcome to here";
    } else {
        firstView = [[[HZCLViewController alloc] initWithNibName:@"HZCLViewController_iPad" bundle:nil] autorelease];
    }
    [self.navRoot pushViewController:firstView animated:YES];
    [self.window addSubview:self.navRoot.view];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

- (NSUInteger)application:(UIApplication *)application supportedInterfaceOrientationsForWindow:(UIWindow *)window
{
    return UIInterfaceOrientationMaskPortrait;
}

@end
