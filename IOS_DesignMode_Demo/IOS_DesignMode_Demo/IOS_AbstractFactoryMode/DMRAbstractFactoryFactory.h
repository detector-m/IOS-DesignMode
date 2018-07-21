//
//  DMRAbstractFactoryFactory.h
//  IOS_DesignMode_Demo
//
//  Created by Riven on 2018/7/21.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DMRAbstractFactoryProduct1.h"
#import "DMRAbstractFactoryProduct2.h"

NS_ASSUME_NONNULL_BEGIN

@protocol DMRAbstractFactoryFactory <NSObject>

- (id<DMRAbstractFactoryProduct1> _Nonnull)createProduct1;
- (id<DMRAbstractFactoryProduct2> __nonnull)createProduct2;
//- (nonnull id<DMRAbstractFactoryProduct1>)createProduct3;

@end

NS_ASSUME_NONNULL_END
