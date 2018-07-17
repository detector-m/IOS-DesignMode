//
//  DMRIteratorConcreteIterator.m
//  IOS_DesignMode_Demo
//
//  Created by Mac on 2018/7/17.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import "DMRIteratorConcreteIterator.h"
#import "DMRIteratorConcreteAggregate.h"

NS_ASSUME_NONNULL_BEGIN

@interface DMRIteratorConcreteIterator ()
@property (nonatomic, assign, readwrite) NSInteger size;
@property (nonatomic, assign, readwrite) NSInteger index;
@end

@implementation DMRIteratorConcreteIterator

- (id _Nullable)currentItem {
    DMRIteratorConcreteAggregate *concreteAggregate = self.aggregate;
    return [concreteAggregate getElement:self.index];
}

- (void)first {
    self.index = 0;
}

- (BOOL)isDone {
    return self.index >= self.size;
}

- (void)next {
    if (self.index < self.size) {
        self.index++;
    }
}

#pragma mark - Setter / Getter
- (NSInteger)size {
    DMRIteratorConcreteAggregate *concreteAggregate = self.aggregate;
    return concreteAggregate.size;
}

@end

NS_ASSUME_NONNULL_END
