//
//  DMRInterpreterAndExpression.m
//  IOS_DesignMode_Demo
//
//  Created by Mac on 2018/7/18.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import "DMRInterpreterAndExpression.h"

NS_ASSUME_NONNULL_BEGIN

@implementation DMRInterpreterAndExpression
- (id _Nonnull)interpret:(DMRInterpreterContext * _Nonnull)context {
    id resultOne = [self.expressionOne interpret:context];
    id resultTwo = [self.expressionTwo interpret:context];
    
    if ([resultOne isKindOfClass:[NSNumber class]] && [resultTwo isKindOfClass:[NSNumber class]]) {
        NSInteger result = [resultOne integerValue] & [resultTwo integerValue];
        
        return @(result);
    }
    
    return @(0);
}
@end

NS_ASSUME_NONNULL_END
