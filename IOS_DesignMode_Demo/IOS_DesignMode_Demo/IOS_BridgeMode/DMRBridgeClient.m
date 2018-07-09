//
//  DMRBridgeClient.m
//  IOS_DesignMode_Demo
//
//  Created by Riven on 2018/7/10.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import "DMRBridgeClient.h"
#import "DMRBridgeRefinedAbstraction.h"
#import "DMRBridgeConcreteImplementorA.h"
#import "DMRBridgeConcreteImplementorB.h"

NS_ASSUME_NONNULL_BEGIN

@implementation DMRBridgeClient
- (void)test {
    id<DMRBridgeAbstraction> abstraction = [DMRBridgeRefinedAbstraction new];
    abstraction.implementor = (id<DMRBridgeImplementor>)[DMRBridgeConcreteImplementorA new];
    [abstraction abstractionOperation];
    
    abstraction.implementor = (id<DMRBridgeImplementor>)[DMRBridgeConcreteImplementorB new];
    [abstraction abstractionOperation];
}
@end

NS_ASSUME_NONNULL_END
