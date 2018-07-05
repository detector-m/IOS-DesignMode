//
//  DMRDirector.h
//  IOS_DesignMode_Demo
//
//  Created by Mac on 2018/7/5.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DMRBuilder.h"

@interface DMRDirector : NSObject
- (nullable DMRProduct *)constructProduct:(nonnull DMRBuilder *)builder;
@end
