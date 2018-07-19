//
//  DMRFlyweightConcreteFlyweight.h
//  IOS_DesignMode_Demo
//
//  Created by Riven on 2018/7/19.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DMRFlyweightFlyweight.h"

NS_ASSUME_NONNULL_BEGIN

@interface DMRFlyweightConcreteFlyweight : NSObject <DMRFlyweightFlyweight>
- (instancetype)initWithState:(NSString * _Nonnull)intrinsicState;
@end

NS_ASSUME_NONNULL_END
