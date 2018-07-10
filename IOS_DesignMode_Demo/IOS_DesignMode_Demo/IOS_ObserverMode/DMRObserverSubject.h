//
//  DMRObserverSubject.h
//  IOS_DesignMode_Demo
//
//  Created by Riven on 2018/7/10.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DMRObserverObserver.h"

NS_ASSUME_NONNULL_BEGIN

@protocol DMRObserverSubject <NSObject>
- (void)addObserver:(id<DMRObserverObserver> _Nonnull)observer;
- (void)removeObserver:(id<DMRObserverObserver> _Nonnull)observer;
- (void)notify;
@end

NS_ASSUME_NONNULL_END
