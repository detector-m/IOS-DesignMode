//
//  DMRSystemOne.m
//  IOS_DesignMode_Demo
//
//  Created by Riven on 2018/7/7.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import "DMRSystemOne.h"

NS_ASSUME_NONNULL_BEGIN

@interface DMRSystemOne ()
- (void)testOne;
@end

@implementation DMRSystemOne

#pragma mark - Public
- (void)systemOne {
    NSLog(@"%@-%@", self, @"system one");
    [self testOne];
}

#pragma mark - Private
- (void)testOne {
    NSLog(@"%@-%@", self, @"test one");
}

@end

NS_ASSUME_NONNULL_END
