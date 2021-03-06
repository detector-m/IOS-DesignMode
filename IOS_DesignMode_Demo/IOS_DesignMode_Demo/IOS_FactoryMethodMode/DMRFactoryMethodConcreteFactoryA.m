//
//  DMRFactoryMethodConcreteFactoryA.m
//  IOS_DesignMode_Demo
//
//  Created by Mac on 2018/7/20.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import "DMRFactoryMethodConcreteFactoryA.h"
#import "DMRFactoryMethodConcreteProductA.h"

NS_ASSUME_NONNULL_BEGIN

@implementation DMRFactoryMethodConcreteFactoryA

+ (id<DMRFactoryMethodProduct> _Nonnull)createProduct {
    return [DMRFactoryMethodConcreteProductA new];
}

@end

NS_ASSUME_NONNULL_END
