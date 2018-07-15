//
//  DMRStateContext.h
//  IOS_DesignMode_Demo
//
//  Created by Riven on 2018/7/15.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol DMRStateState;

@interface DMRStateContext : NSObject
@property (nonatomic, strong, nullable) id<DMRStateState> state;

- (void)operate;
@end

NS_ASSUME_NONNULL_END
