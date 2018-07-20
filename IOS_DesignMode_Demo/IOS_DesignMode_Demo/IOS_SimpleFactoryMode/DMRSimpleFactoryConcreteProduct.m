//
//  DMRSimpleFactoryConcreteProduct.m
//  IOS_DesignMode_Demo
//
//  Created by Mac on 2018/7/20.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import "DMRSimpleFactoryConcreteProduct.h"

NS_ASSUME_NONNULL_BEGIN

@implementation DMRSimpleFactoryConcreteProduct

- (void)operation {
    NSLog(@"product -> %@", NSStringFromClass(self.class));
}
    
    @end

NS_ASSUME_NONNULL_END
