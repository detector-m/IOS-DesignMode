//
//  DMRFlyweightConcreteFlyweight.m
//  IOS_DesignMode_Demo
//
//  Created by Riven on 2018/7/19.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import "DMRFlyweightConcreteFlyweight.h"

NS_ASSUME_NONNULL_BEGIN

@interface DMRFlyweightConcreteFlyweight ()
// 内蕴状态
@property (nonatomic, copy, nullable) NSString *intrinsicState;
@end

@implementation DMRFlyweightConcreteFlyweight
- (instancetype)initWithState:(NSString *)intrinsicState {
    if (self = [super init]) {
        self.intrinsicState = intrinsicState;
    }
    
    return self;
}

- (void)operation:(NSString *)extrinsicState {
    NSLog(@"intrinsic state -> %@", self.intrinsicState);
    NSLog(@"extrinsic state -> %@", extrinsicState);
}

@end

NS_ASSUME_NONNULL_END
