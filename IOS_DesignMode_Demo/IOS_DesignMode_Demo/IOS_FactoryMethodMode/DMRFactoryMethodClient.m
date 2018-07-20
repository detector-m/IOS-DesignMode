//
//  DMRFactoryMethodClient.m
//  IOS_DesignMode_Demo
//
//  Created by Mac on 2018/7/20.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import "DMRFactoryMethodClient.h"
#import "DMRFactoryMethodConcreteFactory.h"
#import "DMRFactoryMethodConcreteFactoryA.h"

NS_ASSUME_NONNULL_BEGIN

@implementation DMRFactoryMethodClient

- (void)test {
    NSLog(@"test start...");
    
    id<DMRFactoryMethodProduct> product = [DMRFactoryMethodConcreteFactory createProduct];
    [product operation];
    
    NSLog(@"--------------------");
    
    id<DMRFactoryMethodProduct> productA = [DMRFactoryMethodConcreteFactoryA createProduct];
    [productA operation];
    
    NSLog(@"test end...");
}

@end

NS_ASSUME_NONNULL_END
