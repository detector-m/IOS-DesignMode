//
//  DMRAbstractFactoryConcreteProduct1_2.m
//  IOS_DesignMode_Demo
//
//  Created by Riven on 2018/7/21.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import "DMRAbstractFactoryConcreteProduct1_2.h"

NS_ASSUME_NONNULL_BEGIN

@implementation DMRAbstractFactoryConcreteProduct1_2

- (void)operation {
    NSLog(@"This is %@", NSStringFromClass(self.class));
}

@end

NS_ASSUME_NONNULL_END
