//
//  DMRCommandInvoker.h
//  IOS_DesignMode_Demo
//
//  Created by Riven on 2018/7/16.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DMRCommandCommand.h"

NS_ASSUME_NONNULL_BEGIN

@interface DMRCommandInvoker : NSObject
@property (nonatomic, strong, nonnull) id<DMRCommandCommand> command;

- (void)action;
@end

NS_ASSUME_NONNULL_END
