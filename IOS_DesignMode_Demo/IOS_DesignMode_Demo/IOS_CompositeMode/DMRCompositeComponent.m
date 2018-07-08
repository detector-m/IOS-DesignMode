//
//  DMRCompositeComponent.m
//  IOS_DesignMode_Demo
//
//  Created by Riven on 2018/7/8.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import "DMRCompositeComponent.h"

NS_ASSUME_NONNULL_BEGIN

#define DMRAbstractMethodNotImplemented() \
if ([self isMemberOfClass:[DMRCompositeComponent class]]) { \
    @throw [NSException exceptionWithName:NSInternalInconsistencyException reason:[NSString stringWithFormat:@"You must override %@ in a subclass.", NSStringFromSelector(_cmd)] userInfo:nil]; \
}

@implementation DMRCompositeComponent
- (instancetype)init {
    NSAssert(![self isMemberOfClass:[DMRCompositeComponent class]], @"AbstractDownloader is an abstract class, you should not instantiate it directly.");
    if (self = [super init]) {
        
    }
    return self;
}

#pragma mark - Public
- (void)add:(nonnull DMRCompositeComponent *)component {
    DMRAbstractMethodNotImplemented();
}
- (void)remove:(nonnull DMRCompositeComponent *)component {
    DMRAbstractMethodNotImplemented();
}
- (void)eachComponent {
    if ([self isMemberOfClass:[DMRCompositeComponent class]]) {
        @throw [NSException exceptionWithName:NSInternalInconsistencyException reason:[NSString stringWithFormat:@"You must override %@ in a subclass.", NSStringFromSelector(_cmd)] userInfo:nil];
    }
}
@end

NS_ASSUME_NONNULL_END
