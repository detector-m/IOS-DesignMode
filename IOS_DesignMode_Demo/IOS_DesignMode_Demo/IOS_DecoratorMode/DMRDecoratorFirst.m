//
//  DMRDecoratorFirst.m
//  IOS_DesignMode_Demo
//
//  Created by Riven on 2018/7/7.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import "DMRDecoratorFirst.h"

NS_ASSUME_NONNULL_BEGIN

@implementation DMRDecoratorFirst

#pragma mark - DMRComponent
- (void)operationOne {
    [super operationOne];
    [self addOperationFirstOne];
}

- (void)operationTwo {
    [super operationTwo];
    [self addOperationFirstTwo];
}

#pragma mark - Public
- (void)addOperationFirstOne {
    NSLog(@"%@-%@", NSStringFromSelector(_cmd), @"add operation first one");
}
- (void)addOperationFirstTwo {
    NSLog(@"%@-%@", NSStringFromSelector(_cmd), @"add operation first two");
}

@end

NS_ASSUME_NONNULL_END
