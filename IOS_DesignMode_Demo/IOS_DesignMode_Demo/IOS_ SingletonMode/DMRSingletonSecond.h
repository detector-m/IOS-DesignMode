//
//  DMRSingletonSecond.h
//  IOS_DesignMode_Demo
//
//  Created by Riven on 2018/7/5.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DMRSingletonSecond : NSObject
+ (DMRSingletonSecond * _Nonnull)sharedSingleton;
- (void)test;
@end
