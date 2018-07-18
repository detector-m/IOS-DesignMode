//
//  DMRInterpreterExpression.h
//  IOS_DesignMode_Demo
//
//  Created by Mac on 2018/7/18.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DMRInterpreterContext.h"

NS_ASSUME_NONNULL_BEGIN

@protocol DMRInterpreterExpression <NSObject>
- (id _Nonnull)interpret:(DMRInterpreterContext * _Nonnull)context;
@end

NS_ASSUME_NONNULL_END
