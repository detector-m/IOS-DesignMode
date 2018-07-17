//
//  DMRIteratorConcreteIterator.h
//  IOS_DesignMode_Demo
//
//  Created by Mac on 2018/7/17.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DMRIteratorIterator.h"
#import "DMRIteratorAggregate.h"

NS_ASSUME_NONNULL_BEGIN

@interface DMRIteratorConcreteIterator : NSObject <DMRIteratorIterator>
@property (nonatomic, strong, nonnull) id<DMRIteratorAggregate> aggregate;
@property (nonatomic, assign, readonly) NSInteger size;
@end

NS_ASSUME_NONNULL_END
