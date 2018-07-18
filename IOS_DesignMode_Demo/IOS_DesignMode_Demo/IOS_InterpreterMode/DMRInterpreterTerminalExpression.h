//
//  DMRInterpreterTerminalExpression.h
//  IOS_DesignMode_Demo
//
//  Created by Mac on 2018/7/18.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DMRInterpreterExpression.h"

NS_ASSUME_NONNULL_BEGIN

@interface DMRInterpreterTerminalExpression : NSObject <DMRInterpreterExpression>
@property (nonatomic, assign, nullable) id data;
@end

NS_ASSUME_NONNULL_END
