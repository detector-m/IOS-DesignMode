//
//  DMRMediatorMediator.h
//  IOS_DesignMode_Demo
//
//  Created by Mac on 2018/7/16.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol DMRMediatorColleague;

@protocol DMRMediatorMediator <NSObject>
- (void)operate:(NSString * _Nonnull)message colleague:(nonnull id<DMRMediatorColleague>)colleague;
@end

NS_ASSUME_NONNULL_END
