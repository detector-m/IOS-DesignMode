//
//  DMRStrategyClient.m
//  IOS_DesignMode_Demo
//
//  Created by Riven on 2018/7/11.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import "DMRStrategyClient.h"
#import "DMRStrategyContext.h"
#import "DMRStrategyConcreteStrategy.h"
#import "DMRStrategyConcreteStrategyOne.h"
#import "DMRStrategyConcreteStrategyTwo.h"

NS_ASSUME_NONNULL_BEGIN

@implementation DMRStrategyClient
- (void)test {
    DMRStrategyContext *context = [DMRStrategyContext new];

    NSLog(@"test start...");
    context.strategy = [DMRStrategyConcreteStrategy new];
    [context operate];
    NSLog(@"test end...");
    
    NSLog(@"test start...");
    context.strategy = [DMRStrategyConcreteStrategyOne new];
    [context operate];
    NSLog(@"test end...");
    
    NSLog(@"test start...");
    context.strategy = [DMRStrategyConcreteStrategyTwo new];
    [context operate];
    NSLog(@"test end...");
}
@end

NS_ASSUME_NONNULL_END
