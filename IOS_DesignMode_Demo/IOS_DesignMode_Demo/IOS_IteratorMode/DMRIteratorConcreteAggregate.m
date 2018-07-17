//
//  DMRIteratorConcreteAggregate.m
//  IOS_DesignMode_Demo
//
//  Created by Mac on 2018/7/17.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import "DMRIteratorConcreteAggregate.h"
#import "DMRIteratorConcreteIterator.h"

NS_ASSUME_NONNULL_BEGIN

@implementation DMRIteratorConcreteAggregate

- (nonnull id<DMRIteratorIterator>)iterator {
    DMRIteratorConcreteIterator *innerIterator = [DMRIteratorConcreteIterator new];
    innerIterator.aggregate = self;
    
    return innerIterator;
}

- (NSInteger)addElement:(id)object {
    [self.collection addObject:object];
    return (self.collection.count - 1 > 0) ? self.collection.count : 0;
}

- (nullable id)getElement:(NSInteger)index {
    if (index < self.collection.count) {
        return self.collection[index];
    }
    
    return nil;
}

- (NSInteger)size {
    return self.collection.count;
}

#pragma mark - Setter / Getter
- (nullable NSMutableArray<id> *)collection {
    if (!_collection) {
        _collection = [NSMutableArray array];
    }
    
    return _collection;
}

@end

NS_ASSUME_NONNULL_END
