//
//  DMRCommandConcreteReciver.m
//  IOS_DesignMode_Demo
//
//  Created by Riven on 2018/7/16.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import "DMRCommandConcreteReciver.h"

NS_ASSUME_NONNULL_BEGIN

@implementation DMRCommandConcreteReciver

- (void)recive {
    NSLog(@"recive-%@", NSStringFromClass([self class]));
}

@end

NS_ASSUME_NONNULL_END
