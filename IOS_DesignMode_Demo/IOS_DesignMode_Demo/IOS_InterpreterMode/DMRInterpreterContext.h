//
//  DMRInterpreterContext.h
//  IOS_DesignMode_Demo
//
//  Created by Mac on 2018/7/18.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DMRInterpreterContext : NSObject
- (void)addObject:(nonnull id)object;
- (id)getData:(nonnull id)object;
@end

NS_ASSUME_NONNULL_END
