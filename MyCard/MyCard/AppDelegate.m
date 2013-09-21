//
//  AppDelegate.m
//  MyCard
//
//  Created by Mesiade on 13-9-21.
//  Copyright (c) 2013年 Mesiade. All rights reserved.
//

#import "AppDelegate.h"
#import "MainPage.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    
//    MainPage * mainPage = [[MainPage alloc]initWithNibName:nil bundle:nil];    
//    self.window.rootViewController = mainPage;

    NSMutableArray * controllers = [NSMutableArray array];
    NSArray * item = @[@"第一个",@"第二个",@"第三个",@"第四个"];
        
    for (int i = 0; i < [item count]; i++)
    {
        UIViewController * viewController = [[UIViewController alloc]initWithNibName:nil bundle:nil];
        
        UINavigationController * nav = [[UINavigationController alloc]initWithRootViewController:viewController];
        
        nav.title = [item objectAtIndex:i];
        
        nav.navigationBar.barStyle = UIBarStyleBlackTranslucent;
        
        [controllers addObject:nav];
    }
    
    
    UITabBarController * bar = [[UITabBarController alloc]init];
    bar.viewControllers = controllers;
    bar.customizableViewControllers = controllers;
    bar.tabBar.tintColor = [UIColor greenColor];
    bar.tabBar.backgroundColor = [UIColor blackColor];
    bar.tabBar.backgroundImage = [[UIImage alloc]init];
    [[UITabBar appearance] setShadowImage:[[UIImage alloc] init]];
    
    self.window.rootViewController = bar;
    
    
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
