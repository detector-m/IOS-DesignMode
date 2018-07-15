//
//  DMRStateConcreteStateOne.m
//  IOS_DesignMode_Demo
//
//  Created by Riven on 2018/7/15.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import "DMRStateConcreteStateOne.h"
#import "DMRStateConcreteStateTwo.h"

NS_ASSUME_NONNULL_BEGIN

@implementation DMRStateConcreteStateOne
- (void)handleState:(DMRStateContext * _Nonnull)context {
    NSLog(@"state one");
    context.state = (id<DMRStateState>)[DMRStateConcreteStateTwo new];
}
@end

NS_ASSUME_NONNULL_END
