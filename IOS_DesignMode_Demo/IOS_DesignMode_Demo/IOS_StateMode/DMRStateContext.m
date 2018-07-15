//
//  DMRStateContext.m
//  IOS_DesignMode_Demo
//
//  Created by Riven on 2018/7/15.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import "DMRStateContext.h"
#import "DMRStateConcreteState.h"

NS_ASSUME_NONNULL_BEGIN

@implementation DMRStateContext
@synthesize state = _state;

- (void)operate {
    if (!self.state) {
        return;
    }

    [self.state handleState:self];
}

@end

NS_ASSUME_NONNULL_END
