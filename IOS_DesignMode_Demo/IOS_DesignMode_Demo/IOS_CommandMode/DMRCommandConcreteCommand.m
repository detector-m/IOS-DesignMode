//
//  DMRCommandConcreteCommand.m
//  IOS_DesignMode_Demo
//
//  Created by Riven on 2018/7/16.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import "DMRCommandConcreteCommand.h"

NS_ASSUME_NONNULL_BEGIN

@implementation DMRCommandConcreteCommand
@synthesize reciver;

- (void)execute {
    NSLog(@"execute-%@...", NSStringFromClass([self class]));
    
    [self.reciver recive];
}

@end

NS_ASSUME_NONNULL_END
