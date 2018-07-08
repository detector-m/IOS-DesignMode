//
//  DMRCompositeComponent.h
//  IOS_DesignMode_Demo
//
//  Created by Riven on 2018/7/8.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

// 抽象类
@interface DMRCompositeComponent : NSObject
@property (nonatomic, copy, nonnull) NSString *name;

- (void)add:(nonnull DMRCompositeComponent *)component;
- (void)remove:(nonnull DMRCompositeComponent *)component;
- (void)eachComponent;
@end

NS_ASSUME_NONNULL_END
