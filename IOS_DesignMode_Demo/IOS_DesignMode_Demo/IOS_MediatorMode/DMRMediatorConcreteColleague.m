//
//  DMRMediatorConcreteColleague.m
//  IOS_DesignMode_Demo
//
//  Created by Mac on 2018/7/16.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import "DMRMediatorConcreteColleague.h"
#import "DMRMediatorMediator.h"

NS_ASSUME_NONNULL_BEGIN

@implementation DMRMediatorConcreteColleague

- (void)operate:(nonnull NSString *)message mediator:(nonnull id<DMRMediatorMediator>)mediator { 
    [mediator operate:message colleague:self];
}

- (void)doSomething {
    NSLog(@"changed colleague");
}

@end

NS_ASSUME_NONNULL_END
