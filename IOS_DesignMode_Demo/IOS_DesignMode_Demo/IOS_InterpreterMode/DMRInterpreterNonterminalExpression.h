//
//  DMRInterpreterNonterminalExpression.h
//  IOS_DesignMode_Demo
//
//  Created by Mac on 2018/7/18.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DMRInterpreterExpression.h"

NS_ASSUME_NONNULL_BEGIN

@interface DMRInterpreterNonterminalExpression : NSObject <DMRInterpreterExpression>
@property (nonatomic, strong, nullable) id<DMRInterpreterExpression> expressionOne;
@property (nonatomic, strong, nullable) id<DMRInterpreterExpression> expressionTwo;
@end

NS_ASSUME_NONNULL_END
