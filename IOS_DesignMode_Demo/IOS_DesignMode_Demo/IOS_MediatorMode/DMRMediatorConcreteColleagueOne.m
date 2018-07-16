//
//  DMRMediatorConcreteColleagueOne.m
//  IOS_DesignMode_Demo
//
//  Created by Mac on 2018/7/16.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import "DMRMediatorConcreteColleagueOne.h"
#import "DMRMediatorMediator.h"

NS_ASSUME_NONNULL_BEGIN

@implementation DMRMediatorConcreteColleagueOne

- (void)operate:(nonnull NSString *)message mediator:(nonnull id<DMRMediatorMediator>)mediator { 
    [mediator operate:message colleague:self];
}

- (void)doSomething {
    NSLog(@"changed colleague One");
}
@end

NS_ASSUME_NONNULL_END
