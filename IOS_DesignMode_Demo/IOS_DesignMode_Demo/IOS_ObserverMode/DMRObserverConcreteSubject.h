//
//  DMRObserverConcreteSubject.h
//  IOS_DesignMode_Demo
//
//  Created by Riven on 2018/7/10.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DMRObserverSubject.h"

NS_ASSUME_NONNULL_BEGIN

@interface DMRObserverConcreteSubject : NSObject <DMRObserverSubject>
- (void)change:(nonnull NSString *)info;
@end

NS_ASSUME_NONNULL_END
