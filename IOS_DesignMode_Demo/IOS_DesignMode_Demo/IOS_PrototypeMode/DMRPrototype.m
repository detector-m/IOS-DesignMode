//
//  DMRPrototype.m
//  IOS_DesignMode_Demo
//
//  Created by Mac on 2018/7/5.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import "DMRPrototype.h"

@implementation DMRPrototype
- (instancetype)init {
    if (self = [super init]) {
        self.name = @"init name";
    }
    
    return self;
}

- (nonnull id)copyWithZone:(nullable NSZone *)zone {
    return [[[self class] allocWithZone:zone] init];
}

@end
