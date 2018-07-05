//
//  AppDelegate.m
//  IOS_DesignMode_Demo
//
//  Created by Mac on 2018/7/5.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import "AppDelegate.h"
#import "DMRDirector.h"
#import "DMRDirectorBuilder.h"
#import "DMRPrototypeClient.h"

@interface AppDelegate ()
// 建造者模式
- (void)testBuilderMode;
// 原型模式
- (void)testPrototypeMode;
@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
//    [self testBuilderMode];
    [self testPrototypeMode];
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

#pragma mark - Private
- (void)testBuilderMode {
    NSLog(@"Start...");
    DMRDirector *director = [DMRDirector new];
    DMRProduct *product = nil;
    product = [director constructProduct:[DMRBuilder new]];
    NSLog(@"%@", product);
    NSLog(@"End...");
    
    
    NSLog(@"Start...");
    DMRDirectorBuilder *directorBuilder = [DMRDirectorBuilder new];
    product = [directorBuilder buildProduct];
    NSLog(@"%@", product);
    NSLog(@"End...");
}

- (void)testPrototypeMode {
    [[DMRPrototypeClient new] testPrototype];
}
@end
