//
//  DMRFactoryMethodConcreteProduct.m
//  IOS_DesignMode_Demo
//
//  Created by Mac on 2018/7/20.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import "DMRFactoryMethodConcreteProduct.h"

NS_ASSUME_NONNULL_BEGIN

@implementation DMRFactoryMethodConcreteProduct

- (void)operation {
    NSLog(@"operation -> %@", NSStringFromClass(self.class));
}

@end

NS_ASSUME_NONNULL_END
