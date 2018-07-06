//
//  DMRObjectAdapter.h
//  IOS_DesignMode_Demo
//
//  Created by Mac on 2018/7/6.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DMRAdaptee.h"
#import "DMRTarget.h"

@interface DMRObjectAdapter : NSObject <DMRTarget>
+ (void)test;

- (instancetype)initWithTarget:(DMRAdaptee * _Nonnull)target;
@end
