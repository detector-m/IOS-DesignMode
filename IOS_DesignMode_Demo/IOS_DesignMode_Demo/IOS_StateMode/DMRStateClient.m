//
//  DMRStateClient.m
//  IOS_DesignMode_Demo
//
//  Created by Riven on 2018/7/15.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import "DMRStateClient.h"
#import "DMRStateContext.h"
#import "DMRStateConcreteState.h"

NS_ASSUME_NONNULL_BEGIN

@implementation DMRStateClient
- (void)test {
    DMRStateContext *context = [DMRStateContext new];
    context.state = (id<DMRStateState>)[DMRStateConcreteState new];
    
    NSLog(@"start ...");
    [context operate];
    [context operate];
    [context operate];
    NSLog(@"end ...");
}
@end

NS_ASSUME_NONNULL_END
