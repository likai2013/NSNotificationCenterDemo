//
//  AppDelegate.m
//  NSNotificationCenterDemo
//
//  Created by xingyun on 13-12-3.
//  Copyright (c) 2013年 xingyun. All rights reserved.
//

#import "AppDelegate.h"
#import "MyButton.h"
#import "LYViewController.h"

@implementation AppDelegate

/**
 *  通知的简单用法,改变视图的颜色
 *
 *  @param application   更改应用的主题
 *  @param launchOptions
 *
 *  @return blackColor
 */

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    
    _viewController = [[UIViewController alloc]init];
    _viewController.view.backgroundColor = [UIColor whiteColor];
    
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:_viewController];
    self.window.rootViewController = nav;
    _viewController.title = @"第一个视图";
    
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(changeViewBackground:) name:@"changeViewBackgroundColor" object:nil];
    
    MyButton *button = [[MyButton alloc]initWithFrame:CGRectMake(20, 90, 200, 30)];
    [_viewController.view addSubview:button];
    [button addTarget:self action:@selector(pushNextView) forControlEvents:UIControlEventTouchUpInside];
    
    [self.window makeKeyAndVisible];
    return YES;
}

-(void)changeViewBackground:(NSNotification *)obj
{
    NSString *color = [obj object];
    
    if ([color isEqualToString:@"blackColor"]) {
        _viewController.view.backgroundColor = [UIColor blackColor];
    }
}

-(void)pushNextView
{
    LYViewController *view = [[LYViewController alloc]init];
    
    view.view.backgroundColor = _viewController.view.backgroundColor;
    
    [_viewController.navigationController pushViewController:view animated:YES];
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
