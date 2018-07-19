//
//  DMRFlyweightClient.m
//  IOS_DesignMode_Demo
//
//  Created by Riven on 2018/7/19.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import "DMRFlyweightClient.h"
#import "DMRFlyweightFlyweightFactory.h"

NS_ASSUME_NONNULL_BEGIN

@interface DMRFlyweightClient ()
// 单纯享元模式
- (void)testForSingalFlyweight;
// 符合享元模式
- (void)testForCompositeFlyweight;
@end

@implementation DMRFlyweightClient
- (void)test {
    NSLog(@"test start...");
    
    [self testForSingalFlyweight];
    
    NSLog(@"---------------------------- next composite");
    
    [self testForCompositeFlyweight];
    
    NSLog(@"test end...");
}

- (void)testForSingalFlyweight {
    id<DMRFlyweightFlyweight> fly = [DMRFlyweightFlyweightFactory factory:@"Jack"];
    [fly operation:@"first"];
    
    NSLog(@"first time flyweight = %@", fly);
    
    fly = [DMRFlyweightFlyweightFactory factory:@"Jim"];
    [fly operation:@"second"];
    
    NSLog(@"second time flyweight = %@", fly);
    
    fly = [DMRFlyweightFlyweightFactory factory:@"Jack"];
    [fly operation:@"third"];
    
    NSLog(@"third time flyweight = %@", fly);

}

- (void)testForCompositeFlyweight {
    NSMutableArray<NSString *> *compositeStates = [NSMutableArray arrayWithCapacity:6];
    [compositeStates addObject:@"a"];
    [compositeStates addObject:@"b"];
    [compositeStates addObject:@"1"];
    [compositeStates addObject:@"a"];
    [compositeStates addObject:@"b"];
    [compositeStates addObject:@"1"];
    
    id<DMRFlyweightFlyweight> compositeFly1 = [DMRFlyweightFlyweightFactory compositeFactory:compositeStates];
    
    id<DMRFlyweightFlyweight> compositeFly2 = [DMRFlyweightFlyweightFactory compositeFactory:compositeStates];
    
    NSLog(@"compositeFly1=%@", compositeFly1);
    NSLog(@"compositeFly2=%@", compositeFly2);
    
    [compositeFly1 operation:@"c"];
    NSLog(@"-----------------");
    
    [compositeFly2 operation:@"b"];
    
    NSString *extrinsicState = @"a";
    id<DMRFlyweightFlyweight> fly1 = [DMRFlyweightFlyweightFactory factory:extrinsicState];
    id<DMRFlyweightFlyweight> fly2 = [DMRFlyweightFlyweightFactory factory:extrinsicState];
    
    NSLog(@"fly1=%@", fly1);
    NSLog(@"fly2=%@", fly2);

}
@end

NS_ASSUME_NONNULL_END
