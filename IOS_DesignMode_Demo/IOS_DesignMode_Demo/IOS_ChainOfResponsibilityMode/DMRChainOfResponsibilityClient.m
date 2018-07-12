//
//  DMRChainOfResponsibilityClient.m
//  IOS_DesignMode_Demo
//
//  Created by Riven on 2018/7/12.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import "DMRChainOfResponsibilityClient.h"
#import "DMRChainOfResponsibilityConcreteHandler.h"

NS_ASSUME_NONNULL_BEGIN

@implementation DMRChainOfResponsibilityClient
- (void)test {
    id<DMRChainOfResonsibilityHandler> handler1 = [DMRChainOfResponsibilityConcreteHandler new];
    id<DMRChainOfResonsibilityHandler> handler2 = [DMRChainOfResponsibilityConcreteHandler new];
    id<DMRChainOfResonsibilityHandler> handler3 = [DMRChainOfResponsibilityConcreteHandler new];
    handler2.handler = handler3;
    handler1.handler = handler2;
    
    [handler1 handleRequest:@"1"];
}
@end

NS_ASSUME_NONNULL_END
