//
//  MNAppDelegate.m
//  MNCalendarViewExample
//
//  Created by Min Kim on 7/26/13.
//  Copyright (c) 2013 min. All rights reserved.
//

#import "MNAppDelegate.h"
#import "MNViewController.h"

@implementation MNAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
  
  UITabBarController *controller = [[UITabBarController alloc] init];
  controller.viewControllers = @[
                                 [[MNViewController alloc] initWithCalendar:[[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar]],
                                 [[MNViewController alloc] initWithCalendar:[[NSCalendar alloc] initWithCalendarIdentifier:NSHebrewCalendar]],
                                 [[MNViewController alloc] initWithCalendar:[[NSCalendar alloc] initWithCalendarIdentifier:NSIslamicCalendar]],
                                 [[MNViewController alloc] initWithCalendar:[[NSCalendar alloc] initWithCalendarIdentifier:NSIndianCalendar]],
                                 [[MNViewController alloc] initWithCalendar:[[NSCalendar alloc] initWithCalendarIdentifier:NSPersianCalendar]]
                                 
                                 ];

  self.window.rootViewController = controller;

  [self.window makeKeyAndVisible];
  
  return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application {
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
}

- (void)applicationWillTerminate:(UIApplication *)application {
}

@end
