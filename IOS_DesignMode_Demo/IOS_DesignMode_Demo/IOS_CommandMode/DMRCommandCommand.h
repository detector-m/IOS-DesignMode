//
//  DMRCommandCommand.h
//  IOS_DesignMode_Demo
//
//  Created by Riven on 2018/7/16.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DMRCommandReciver.h"

NS_ASSUME_NONNULL_BEGIN

@protocol DMRCommandCommand <NSObject>
@property (nonatomic, strong, nonnull) id<DMRCommandReciver> reciver;
- (void)execute;
@end

NS_ASSUME_NONNULL_END
