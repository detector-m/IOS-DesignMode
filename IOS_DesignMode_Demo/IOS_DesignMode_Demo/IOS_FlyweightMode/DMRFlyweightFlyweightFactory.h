//
//  DMRFlyweightFlyweightFactory.h
//  IOS_DesignMode_Demo
//
//  Created by Riven on 2018/7/19.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DMRFlyweightFlyweight.h"

NS_ASSUME_NONNULL_BEGIN

@interface DMRFlyweightFlyweightFactory : NSObject
// 单纯享元工厂方法
+ (nonnull id<DMRFlyweightFlyweight>)factory:(NSString *)intrinsicState;

// 复合享元工厂方法
+ (nonnull id<DMRFlyweightFlyweight>)compositeFactory:(NSArray<NSString *> * _Nonnull)intrinsicStates;
@end

NS_ASSUME_NONNULL_END
