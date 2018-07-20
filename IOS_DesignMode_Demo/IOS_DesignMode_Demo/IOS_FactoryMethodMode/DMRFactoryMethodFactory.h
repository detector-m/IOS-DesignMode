//
//  DMRFactoryMethodFactory.h
//  IOS_DesignMode_Demo
//
//  Created by Mac on 2018/7/20.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DMRFactoryMethodProduct.h"

@protocol DMRFactoryMethodFactory <NSObject>
+ (id<DMRFactoryMethodProduct> __nonnull)createProduct;
@end
