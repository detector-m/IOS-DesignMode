//
//  DMRMediatorConcreteMediator.m
//  IOS_DesignMode_Demo
//
//  Created by Mac on 2018/7/16.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import "DMRMediatorConcreteMediator.h"
#import "DMRMediatorColleague.h"

NS_ASSUME_NONNULL_BEGIN

@implementation DMRMediatorConcreteMediator

- (void)operate:(nonnull NSString *)message colleague:(nonnull id<DMRMediatorColleague>)colleague {
    if (colleague == self.colleague) {
        NSLog(@"colleague change ...");
        [self.colleagueA doSomething];
        return;
    }
    
    NSLog(@"colleague one change ...");
    [self.colleague doSomething];
}

@end

NS_ASSUME_NONNULL_END
