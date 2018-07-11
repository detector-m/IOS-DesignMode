//
//  DMRStrategyConcreteStrategy.m
//  IOS_DesignMode_Demo
//
//  Created by Riven on 2018/7/11.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import "DMRStrategyConcreteStrategy.h"

NS_ASSUME_NONNULL_BEGIN

@implementation DMRStrategyConcreteStrategy
- (void)operate {
    NSLog(@"%@-%@", NSStringFromClass([self class]), @"operate");
}
@end

NS_ASSUME_NONNULL_END
