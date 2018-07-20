//
//  DMRSimpleFactoryFactory.m
//  IOS_DesignMode_Demo
//
//  Created by Mac on 2018/7/20.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import "DMRSimpleFactoryFactory.h"
#import "DMRSimpleFactoryConcreteProduct.h"
#import "DMRSimpleFactoryConcreteProductTwo.h"

NS_ASSUME_NONNULL_BEGIN

@implementation DMRSimpleFactoryFactory
+ (id<DMRSimpleFactoryProduct> __nullable)createProduct:(NSInteger)type {
    switch (type) {
        case 0:
        return [DMRSimpleFactoryConcreteProduct new];
        break;
        
        case 1:
        case 2:
        return [DMRSimpleFactoryConcreteProductTwo new];
        break;
        
        default:
        return nil;
        break;
    }
}
@end

NS_ASSUME_NONNULL_END
