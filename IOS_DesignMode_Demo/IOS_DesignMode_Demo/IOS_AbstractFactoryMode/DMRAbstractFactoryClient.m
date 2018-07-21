//
//  DMRAbstractFactoryClient.m
//  IOS_DesignMode_Demo
//
//  Created by Riven on 2018/7/21.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import "DMRAbstractFactoryClient.h"
#import "DMRAbstractFactoryConcreteFactory1.h"
#import "DMRAbstractFactoryConcreteFactory2.h"

NS_ASSUME_NONNULL_BEGIN

@implementation DMRAbstractFactoryClient

- (void)test {
    NSLog(@"test start...");
    
    [self testForFactory1];
    
    NSLog(@"------------------------------");
    
    [self testForFactory2];
    
    NSLog(@"test end...");
}

#pragma mark - Private

- (void)testForFactory1 {
    id<DMRAbstractFactoryFactory> factory = [DMRAbstractFactoryConcreteFactory1 new];
    id<DMRAbstractFactoryProduct1> product1 = [factory createProduct1];
    id<DMRAbstractFactoryProduct2> product2 = [factory createProduct2];
    
    [product1 operation];
    [product2 operation];
}

- (void)testForFactory2 {
    id<DMRAbstractFactoryFactory> factory = [DMRAbstractFactoryConcreteFactory2 new];
    id<DMRAbstractFactoryProduct1> product1 = [factory createProduct1];
    id<DMRAbstractFactoryProduct2> product2 = [factory createProduct2];
    
    [product1 operation];
    [product2 operation];
}

@end

NS_ASSUME_NONNULL_END
