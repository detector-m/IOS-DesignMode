//
//  DMRContreteComponent.h
//  IOS_DesignMode_Demo
//
//  Created by Riven on 2018/7/7.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DMRComponent.h"

NS_ASSUME_NONNULL_BEGIN

// DMRComponent 初始有自己原有的装饰
@interface DMRContreteComponent : NSObject <DMRComponent>

@end

NS_ASSUME_NONNULL_END
