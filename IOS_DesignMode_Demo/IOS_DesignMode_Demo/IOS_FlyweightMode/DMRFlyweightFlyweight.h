//
//  DMRFlyweightFlyweight.h
//  IOS_DesignMode_Demo
//
//  Created by Riven on 2018/7/19.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol DMRFlyweightFlyweight <NSObject>
// extrinsicState 外蕴状态
- (void)operation:(NSString * __nonnull)extrinsicState;
@end

NS_ASSUME_NONNULL_END
