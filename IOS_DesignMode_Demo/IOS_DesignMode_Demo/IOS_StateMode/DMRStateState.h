//
//  DMRStateState.h
//  IOS_DesignMode_Demo
//
//  Created by Riven on 2018/7/15.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DMRStateContext.h"

NS_ASSUME_NONNULL_BEGIN

//@class DMRStateContext;

@protocol DMRStateState <NSObject>
- (void)handleState:(DMRStateContext * _Nonnull)context;
@end

NS_ASSUME_NONNULL_END
