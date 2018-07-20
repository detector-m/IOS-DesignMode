//
//  DMRSimpleFactoryClient.m
//  IOS_DesignMode_Demo
//
//  Created by Mac on 2018/7/20.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import "DMRSimpleFactoryClient.h"
#import "DMRSimpleFactoryFactory.h"

NS_ASSUME_NONNULL_BEGIN

@implementation DMRSimpleFactoryClient
- (void)test {
    NSLog(@"test start...");
    id<DMRSimpleFactoryProduct> product = [DMRSimpleFactoryFactory createProduct:0];
    [product operation];
    
    product = [DMRSimpleFactoryFactory createProduct:2];
    [product operation];
    NSLog(@"test end...");
}
@end

NS_ASSUME_NONNULL_END
