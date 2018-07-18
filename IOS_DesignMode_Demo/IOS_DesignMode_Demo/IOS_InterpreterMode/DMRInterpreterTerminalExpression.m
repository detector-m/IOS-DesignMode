//
//  DMRInterpreterTerminalExpression.m
//  IOS_DesignMode_Demo
//
//  Created by Mac on 2018/7/18.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import "DMRInterpreterTerminalExpression.h"

NS_ASSUME_NONNULL_BEGIN

@implementation DMRInterpreterTerminalExpression

- (id _Nonnull)interpret:(DMRInterpreterContext * _Nonnull)context {
    return [context getData:self];
}

@end

NS_ASSUME_NONNULL_END
