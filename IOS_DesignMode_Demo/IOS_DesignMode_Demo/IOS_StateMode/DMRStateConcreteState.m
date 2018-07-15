//
//  DMRStateConcreteState.m
//  IOS_DesignMode_Demo
//
//  Created by Riven on 2018/7/15.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import "DMRStateConcreteState.h"
#import "DMRStateConcreteStateOne.h"

NS_ASSUME_NONNULL_BEGIN

@implementation DMRStateConcreteState

- (void)handleState:(DMRStateContext * _Nonnull)context {
    NSLog(@"state");
    context.state = (id<DMRStateState>)[DMRStateConcreteStateOne new];
}

@end

NS_ASSUME_NONNULL_END
