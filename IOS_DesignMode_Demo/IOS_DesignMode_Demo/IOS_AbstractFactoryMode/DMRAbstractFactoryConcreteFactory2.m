//
//  DMRAbstractFactoryConcreteFactory2.m
//  IOS_DesignMode_Demo
//
//  Created by Riven on 2018/7/21.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import "DMRAbstractFactoryConcreteFactory2.h"
#import "DMRAbstractFactoryConcreteProduct2_1.h"
#import "DMRAbstractFactoryConcreteProduct2_2.h"

NS_ASSUME_NONNULL_BEGIN

@implementation DMRAbstractFactoryConcreteFactory2

- (id<DMRAbstractFactoryProduct1> _Nonnull)createProduct1 {
    NSLog(@"create product1 in %@", NSStringFromClass(self.class));
    
    return [DMRAbstractFactoryConcreteProduct2_1 new];
}

- (id<DMRAbstractFactoryProduct2> _Nonnull)createProduct2 {
    NSLog(@"create product2 in %@", NSStringFromClass(self.class));
    
    return [DMRAbstractFactoryConcreteProduct2_2 new];
}

@end

NS_ASSUME_NONNULL_END
