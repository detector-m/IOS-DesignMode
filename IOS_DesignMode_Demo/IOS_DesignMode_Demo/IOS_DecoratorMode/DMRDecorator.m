//
//  DMRDecorator.m
//  IOS_DesignMode_Demo
//
//  Created by Riven on 2018/7/7.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import "DMRDecorator.h"

NS_ASSUME_NONNULL_BEGIN

@interface DMRDecorator ()
@property (nonatomic, strong, nonnull) id<DMRComponent> component;
@end

@implementation DMRDecorator
- (instancetype)initWithComponent:(id<DMRComponent> _Nonnull)component {
    if (self = [super init]) {
        self.component = component;
    }
    
    return self;
}

#pragma mark - DMRComponent
- (void)operationOne {
    [self.component operationOne];
}

- (void)operationTwo {
    [self.component operationTwo];
}

@end

NS_ASSUME_NONNULL_END
