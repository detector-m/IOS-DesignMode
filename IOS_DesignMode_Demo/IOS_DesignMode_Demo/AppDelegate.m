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
#import "DMRSingleton.h"
#import "DMRSingletonSecond.h"
#import "DMRClassAdapter.h"
#import "DMRObjectAdapter.h"

#import "DMRConsignor.h"
#import "DMRProxy.h"

#import "DMRFacade.h"

#import "DMRDecoratorTest.h"

#import "DMRCompositeTest.h"

#import "DMRBridgeClient.h"

#import "DMRObserverClient.h"

#import "DMRStrategyClient.h"

#import "DMRChainOfResponsibilityClient.h"

#import "DMRStateClient.h"

#import "DMRVisitorClient.h"

#import "DMRMediatorClient.h"

#import "DMRCommandClient.h"

#import "DMRIteratorClient.h"

#import "DMRTemplateMethodClient.h"

#import "DMRMementoClient.h"

#import "DMRInterpreterClient.h"

#import "DMRFlyweightClient.h"

#import "DMRSimpleFactoryClient.h"

#import "DMRFactoryMethodClient.h"

#import "DMRAbstractFactoryClient.h"

@interface AppDelegate ()
// 建造者模式
- (void)testBuilderMode;
// 原型模式
- (void)testPrototypeMode;
// 单例模式
- (void)testSingletonMode;
- (void)testSingletonSceondMode;
// 适配器模式
- (void)testClassAdapterMode;
- (void)testObjectAdapterMode;

// 代理模式
- (void)testProxyMode;
// 外观模式
- (void)testFacadeMode;
// 装饰模式
- (void)testDecoratorMode;
// 组合模式
- (void)testCompositeMode;
// 桥接模式
- (void)testBridgeMode;

// 观察者模式
- (void)testObserverMode;

// 策略模式
- (void)testStrategyMode;

// 责任链模式
- (void)testChainOfResponsibilityMode;

// 状态模式
- (void)testStateMode;

// 访问者模式
- (void)testVisitorMode;

// 中介者模式
- (void)testMediatorMode;

// 命令模式
- (void)testCommandMode;

// 迭代子模式
- (void)testIteratorMode;

// 模版方法模式
- (void)testTemplateMethodMode;

// 模版方法模式
- (void)testMementoMode;

// 解释器模式
- (void)testInterpreterMode;

// 享元模式
- (void)testFlyweightMode;

// 简单工厂模式
- (void)testSimpleFactoryMode;

// 工厂方法模式
- (void)testFactoryMethodMode;

// 抽象工厂模式
- (void)testAbstractFactoryMode;
@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
//    [self testBuilderMode];
    
//    [self testPrototypeMode];
    
//    [self testSingletonMode];
//    [self testSingletonSceondMode];
    
//    [self testClassAdapterMode];
//    [self testObjectAdapterMode];
    
//    [self testProxyMode];
    
//    [self testFacadeMode];
    
//    [self testDecoratorMode];
    
//    [self testCompositeMode];
    
//    [self testBridgeMode];
    
    
//    [self testObserverMode];
    
//    [self testStrategyMode];
    
//    [self testChainOfResponsibilityMode];
    
//    [self testStateMode];
    
//    [self testVisitorMode];
    
//    [self testMediatorMode];
    
//    [self testCommandMode];
    
//    [self testIteratorMode];
    
//    [self testTemplateMethodMode];
    
//    [self testMementoMode];
    
//    [self testInterpreterMode];
    
//    [self testFlyweightMode];
    
//    [self testSimpleFactoryMode];
    
//    [self testFactoryMethodMode];
    
    [self testAbstractFactoryMode];
    
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

- (void)testSingletonMode {
    DMRSingleton *singleton = [DMRSingleton sharedSingleton];
    
    // if open this there will get compile errors;
//    DMRSingleton *singleton2 = [singleton copy];
//    DMRSingleton *singleton3 = [[DMRSingleton alloc] init];
//    DMRSingleton *singleton4 = [DMRSingleton new];

    
    NSLog(@"test start...");
    
    NSAssert(singleton != nil, @"DMRSingleton  error");
    
    NSLog(@"test end...");
}

- (void)testSingletonSceondMode {
    DMRSingletonSecond *singleton = [DMRSingletonSecond sharedSingleton];
    DMRSingletonSecond *singleton2 = [singleton copy];
    DMRSingletonSecond *singleton3 = [[DMRSingletonSecond alloc] init];
    DMRSingletonSecond *singleton4 = [DMRSingletonSecond new];
    
    NSLog(@"test start...");
    NSAssert(singleton == singleton2, @"The singleton error 2");
    NSAssert(singleton == singleton3, @"The singleton error 3");
    NSAssert(singleton == singleton4, @"The singleton error 4");
    NSLog(@"test end...");
}

// 适配器模式
- (void)testClassAdapterMode {
    [DMRClassAdapter test];
}
- (void)testObjectAdapterMode {
    [DMRObjectAdapter test];
}

// 代理模式
- (void)testProxyMode {
    DMRProxy *proxy = [DMRProxy new];
    DMRConsignor *consignor = [DMRConsignor new];
    consignor.delegate = proxy;
    
    [consignor doSomething];
}

// 外观模式
- (void)testFacadeMode {
    DMRFacade *facade = [DMRFacade new];
    [facade test];
}

- (void)testDecoratorMode {
    [[DMRDecoratorTest new] test];
}

- (void)testCompositeMode {
    [[DMRCompositeTest new] test];
}

- (void)testBridgeMode {
    [[DMRBridgeClient new] test];
}

- (void)testObserverMode {
    [[DMRObserverClient new] test];
}

- (void)testStrategyMode {
    [[DMRStrategyClient new] test];
}

- (void)testChainOfResponsibilityMode {
    [[DMRChainOfResponsibilityClient new] test];
}

- (void)testStateMode {
    [[DMRStateClient new] test];
}

- (void)testVisitorMode {
    [[DMRVisitorClient new] test];
}

- (void)testMediatorMode {
    [[DMRMediatorClient new] test];
}

- (void)testCommandMode {
    [[DMRCommandClient new] test];
}

- (void)testIteratorMode {
    [[DMRIteratorClient new] test];
}

- (void)testTemplateMethodMode {
    [[DMRTemplateMethodClient new] test];
}

- (void)testMementoMode {
    [[DMRMementoClient new] test];
}

- (void)testInterpreterMode {
    [[DMRInterpreterClient new] test];
}

- (void)testFlyweightMode {
    [[DMRFlyweightClient new] test];
}

- (void)testSimpleFactoryMode {
    [[DMRSimpleFactoryClient new] test];
}

- (void)testFactoryMethodMode {
    [[DMRFactoryMethodClient new] test];
}

- (void)testAbstractFactoryMode {
//    [[DMRAbstractFactoryClient new] test];
    
//    [[DMRAbstractFactoryClient new] testWithRuntime:@"DMRAbstractFactoryConcreteFactory2"];
    
    [[DMRAbstractFactoryClient new] testWithRuntime:@"DMRAbstractFactoryConcreteFactory1"];
}
@end
