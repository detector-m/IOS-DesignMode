//
//  DMRMediatorConcreteMediator.h
//  IOS_DesignMode_Demo
//
//  Created by Mac on 2018/7/16.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DMRMediatorMediator.h"

NS_ASSUME_NONNULL_BEGIN

@interface DMRMediatorConcreteMediator : NSObject <DMRMediatorMediator>
@property (nonatomic, strong, nonnull) id<DMRMediatorColleague> colleague;
@property (nonatomic, strong, nonnull) id<DMRMediatorColleague> colleagueA;
@end

NS_ASSUME_NONNULL_END
