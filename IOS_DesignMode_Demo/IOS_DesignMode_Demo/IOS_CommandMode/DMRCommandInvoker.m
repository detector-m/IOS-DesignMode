//
//  DMRCommandInvoker.m
//  IOS_DesignMode_Demo
//
//  Created by Riven on 2018/7/16.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import "DMRCommandInvoker.h"

NS_ASSUME_NONNULL_BEGIN

@implementation DMRCommandInvoker
- (void)action {
    [self.command execute];
}
@end

NS_ASSUME_NONNULL_END
