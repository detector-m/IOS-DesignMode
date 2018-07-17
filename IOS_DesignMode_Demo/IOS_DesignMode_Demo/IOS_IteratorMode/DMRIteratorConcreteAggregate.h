//
//  DMRIteratorConcreteAggregate.h
//  IOS_DesignMode_Demo
//
//  Created by Mac on 2018/7/17.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DMRIteratorAggregate.h"

NS_ASSUME_NONNULL_BEGIN

@interface DMRIteratorConcreteAggregate : NSObject <DMRIteratorAggregate>
@property (nonatomic, strong, nullable) NSMutableArray<id> *collection;

- (NSInteger)addElement:(id)object;
- (nullable id)getElement:(NSInteger)index;
- (NSInteger)size;
@end

NS_ASSUME_NONNULL_END
