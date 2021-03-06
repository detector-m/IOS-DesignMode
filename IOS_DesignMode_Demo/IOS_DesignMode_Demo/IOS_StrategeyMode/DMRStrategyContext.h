//
//  DMRStrategyContext.h
//  IOS_DesignMode_Demo
//
//  Created by Riven on 2018/7/11.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DMRStrategyStrategy.h"

NS_ASSUME_NONNULL_BEGIN

@interface DMRStrategyContext : NSObject <DMRStrategyStrategy>
@property (nonatomic, strong, nonnull) id<DMRStrategyStrategy> strategy;
@end

NS_ASSUME_NONNULL_END
