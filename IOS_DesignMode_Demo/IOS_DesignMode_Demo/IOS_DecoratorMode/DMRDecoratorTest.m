//
//  DMRDecoratorTest.m
//  IOS_DesignMode_Demo
//
//  Created by Riven on 2018/7/7.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import "DMRDecoratorTest.h"
#import "DMRContreteComponent.h"
#import "DMRDecoratorFirst.h"
#import "DMRDecoratorSecond.h"

NS_ASSUME_NONNULL_BEGIN

@implementation DMRDecoratorTest
- (void)test {
    DMRContreteComponent *contreteComponent = [DMRContreteComponent new];
    DMRDecorator *decorator = [[DMRDecorator alloc] initWithComponent:contreteComponent];
    DMRDecoratorFirst *decoratorFirst = [[DMRDecoratorFirst alloc] initWithComponent:decorator];
    DMRDecoratorSecond *decoratorSecond = [[DMRDecoratorSecond alloc] initWithComponent:decoratorFirst];
    
    NSLog(@"test start...");
    [decoratorSecond operationOne];
    [decoratorSecond operationTwo];
    NSLog(@"test end....");
    
    NSLog(@"test start...");
    [decoratorFirst operationOne];
    [decoratorFirst operationTwo];
    NSLog(@"test end....");
}
@end

NS_ASSUME_NONNULL_END
