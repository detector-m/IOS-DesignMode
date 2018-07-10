//
//  DMRObserverConcreteObserver.h
//  IOS_DesignMode_Demo
//
//  Created by Riven on 2018/7/10.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DMRObserverObserver.h"

NS_ASSUME_NONNULL_BEGIN

@interface DMRObserverConcreteObserver : NSObject <DMRObserverObserver>
@property (nonatomic, copy, nonnull) NSString *name;
@end

NS_ASSUME_NONNULL_END
