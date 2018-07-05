//
//  DMRSingleton.m
//  IOS_DesignMode_Demo
//
//  Created by Riven on 2018/7/5.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import "DMRSingleton.h"

NS_ASSUME_NONNULL_BEGIN


@implementation DMRSingleton
//+ (instancetype)sharedSingleton {
//    static DMRSingleton *dmrSingleton = nil;
//    static dispatch_once_t onceToken;
//    dispatch_once(&onceToken, ^{
//        dmrSingleton = [[super allocWithZone:nil] init];
//    });
//
//    return dmrSingleton;
//}

DMR_SINGLETON_IMP(DMRSingleton);
@end

NS_ASSUME_NONNULL_END
