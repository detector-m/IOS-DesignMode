//
//  DMRObserverConcreteSubject.m
//  IOS_DesignMode_Demo
//
//  Created by Riven on 2018/7/10.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import "DMRObserverConcreteSubject.h"

NS_ASSUME_NONNULL_BEGIN

@interface DMRObserverConcreteSubject()
@property (nonatomic, strong) NSMutableSet<id<DMRObserverObserver>> * _Nonnull observerList;
@property (nonatomic, copy, nonnull) NSString *info;
@end

@implementation DMRObserverConcreteSubject

- (void)addObserver:(id<DMRObserverObserver> _Nonnull)observer { 
    if (observer) {
        [self.observerList addObject:observer];
    }
}

- (void)notify { 
    for (id<DMRObserverObserver> observer in self.observerList) {
        [observer update:self.info];
    }
}

- (void)removeObserver:(id<DMRObserverObserver> _Nonnull)observer { 
    if (observer) {
        [self.observerList removeObject:observer];
    }
}

#pragma mark - Public
- (void)change:(nonnull NSString *)info {
    NSLog(@"%@-change info ......", NSStringFromSelector(_cmd));
    self.info = info;
    [self notify];
}

#pragma mark - Setter / Getter
- (NSMutableSet<id<DMRObserverObserver>> *)observerList {
    if (!_observerList) {
        _observerList = [NSMutableSet set];
    }
    
    return _observerList;
}

@end

NS_ASSUME_NONNULL_END
