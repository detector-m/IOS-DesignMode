//
//  DMRObserverConcreteObserver.m
//  IOS_DesignMode_Demo
//
//  Created by Riven on 2018/7/10.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import "DMRObserverConcreteObserver.h"

NS_ASSUME_NONNULL_BEGIN

@interface DMRObserverConcreteObserver()
@property (nonatomic, copy, nullable) NSString *message;
@end

@implementation DMRObserverConcreteObserver

- (void)update:(id _Nullable)object {
    self.message = object;
    NSLog(@"%@-%@", self.name, self.message);
}

@end

NS_ASSUME_NONNULL_END
