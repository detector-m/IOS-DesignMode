//
//  DMRDecoratorSecond.m
//  IOS_DesignMode_Demo
//
//  Created by Riven on 2018/7/7.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import "DMRDecoratorSecond.h"

NS_ASSUME_NONNULL_BEGIN

@implementation DMRDecoratorSecond

#pragma mark - DMRComponent
- (void)operationOne {
    [super operationOne];
    [self addOperationSecondOne];
}

- (void)operationTwo {
    [super operationTwo];
    [self addOperationSecondTwo];
}

#pragma mark - Public
- (void)addOperationSecondOne {
    NSLog(@"%@-%@", NSStringFromSelector(_cmd), @"add operation second one");
}
- (void)addOperationSecondTwo {
    NSLog(@"%@-%@", NSStringFromSelector(_cmd), @"add operation second two");
}
@end

NS_ASSUME_NONNULL_END
