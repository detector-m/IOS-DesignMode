//
//  DMRObserverClient.m
//  IOS_DesignMode_Demo
//
//  Created by Riven on 2018/7/10.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import "DMRObserverClient.h"
#import "DMRObserverConcreteSubject.h"
#import "DMRObserverConcreteObserver.h"

NS_ASSUME_NONNULL_BEGIN

@implementation DMRObserverClient
- (void)test {
    DMRObserverConcreteSubject *concreteSubject = [DMRObserverConcreteSubject new];
    
    DMRObserverConcreteObserver *concreteObserverFirst = [DMRObserverConcreteObserver new];
    concreteObserverFirst.name = @"First";

    DMRObserverConcreteObserver *concreteObserverSecond = [DMRObserverConcreteObserver new];
    concreteObserverSecond.name = @"Second";

    DMRObserverConcreteObserver *concreteObserverThird = [DMRObserverConcreteObserver new];
    concreteObserverThird.name = @"Third";
    
    [concreteSubject addObserver:concreteObserverFirst];
    [concreteSubject addObserver:concreteObserverSecond];
    [concreteSubject addObserver:concreteObserverThird];
    
    [concreteSubject change:@"Hello"];
    
    NSLog(@"------------------------------------");
    
    DMRObserverConcreteObserver *concreteObserverFourth = [DMRObserverConcreteObserver new];
    concreteObserverFourth.name = @"Fourth";
    
    [concreteSubject addObserver:concreteObserverFourth];
    [concreteSubject change:@"-"];
    
    NSLog(@"------------------------------------");

    [concreteSubject removeObserver:concreteObserverThird];
    [concreteSubject removeObserver:concreteObserverSecond];
    [concreteSubject change:@"World!"];
}
@end

NS_ASSUME_NONNULL_END
