//
//  DMRFactoryMethodConcreteFactory.m
//  IOS_DesignMode_Demo
//
//  Created by Mac on 2018/7/20.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import "DMRFactoryMethodConcreteFactory.h"
#import "DMRFactoryMethodConcreteProduct.h"

NS_ASSUME_NONNULL_BEGIN

@implementation DMRFactoryMethodConcreteFactory

+ (id<DMRFactoryMethodProduct> _Nonnull)createProduct {
    return [DMRFactoryMethodConcreteProduct new];
}

@end

NS_ASSUME_NONNULL_END
