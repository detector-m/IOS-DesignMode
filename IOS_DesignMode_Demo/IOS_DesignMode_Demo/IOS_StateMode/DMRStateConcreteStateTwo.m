//
//  DMRStateConcreteStateTwo.m
//  IOS_DesignMode_Demo
//
//  Created by Riven on 2018/7/15.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import "DMRStateConcreteStateTwo.h"
#import "DMRStateConcreteState.h"

NS_ASSUME_NONNULL_BEGIN

@implementation DMRStateConcreteStateTwo
- (void)handleState:(DMRStateContext * _Nonnull)context {
    NSLog(@"state two");
    context.state = (id<DMRStateState>)[DMRStateConcreteState new];
}
@end

NS_ASSUME_NONNULL_END
