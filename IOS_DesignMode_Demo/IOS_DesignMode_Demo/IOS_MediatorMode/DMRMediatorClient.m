//
//  DMRMediatorClient.m
//  IOS_DesignMode_Demo
//
//  Created by Mac on 2018/7/16.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import "DMRMediatorClient.h"
#import "DMRMediatorConcreteMediator.h"
#import "DMRMediatorConcreteColleague.h"
#import "DMRMediatorConcreteColleagueOne.h"

NS_ASSUME_NONNULL_BEGIN

@implementation DMRMediatorClient
- (void)test {
    id<DMRMediatorColleague> colleague = [DMRMediatorConcreteColleague new];
    id<DMRMediatorColleague> colleagueOne = [DMRMediatorConcreteColleagueOne new];
    
    DMRMediatorConcreteMediator *mediator = [DMRMediatorConcreteMediator new];
    mediator.colleague = colleague;
    mediator.colleagueA = colleagueOne;
    
    NSLog(@"test start...");
    [colleague operate:@"test 1" mediator:mediator];
    
    [colleagueOne operate:@"test 2" mediator:mediator];

    NSLog(@"test end...");
}
@end

NS_ASSUME_NONNULL_END
