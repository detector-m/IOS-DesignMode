//
//  DMRMediatorColleague.h
//  IOS_DesignMode_Demo
//
//  Created by Mac on 2018/7/16.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol DMRMediatorMediator;

@protocol DMRMediatorColleague <NSObject>
- (void)operate:(nonnull NSString *)message mediator:(nonnull id<DMRMediatorMediator>)mediator;
- (void)doSomething;
@end

NS_ASSUME_NONNULL_END
