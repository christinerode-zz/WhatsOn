//
//  AppDelegate.m
//  WhatsOnApp
//
//  Created by Christine Røde on 3/16/14.
//  Copyright (c) 2014 Christine Røde. All rights reserved.
//

#import "AppDelegate.h"
#import "MainViewController.h"
#import "DiscoverViewController.h"
#import "SettingsViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    NSMutableArray *viewControllers = [[NSMutableArray alloc] init];
    MainViewController *mainVc = [[MainViewController alloc] init];
    DiscoverViewController *discoverVc = [[DiscoverViewController alloc] init];
    SettingsViewController *settingsVc = [[SettingsViewController alloc] init];
    
    // Define NavControllers
    UINavigationController *showsNavigationController = [[UINavigationController alloc] initWithRootViewController:mainVc];
    [viewControllers addObject:showsNavigationController];
    [viewControllers addObject:discoverVc];
    [viewControllers addObject:settingsVc];
    
    // Set Style
    showsNavigationController.navigationBar.barTintColor = [UIColor colorWithRed:24/255.0 green:61/255.0 blue:69/255.0 alpha:1];
    [showsNavigationController.navigationBar setTranslucent:YES];
    [showsNavigationController.navigationBar setTitleTextAttributes:[NSDictionary dictionaryWithObject:[UIColor whiteColor] forKey:NSForegroundColorAttributeName]];
    [showsNavigationController.navigationBar setTintColor:[UIColor whiteColor]];

    
    // Define Tab Bar
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    [tabBarController setViewControllers:viewControllers];
    
    self.window.rootViewController = tabBarController;
    
    self.window.backgroundColor = [UIColor whiteColor];
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

@end
