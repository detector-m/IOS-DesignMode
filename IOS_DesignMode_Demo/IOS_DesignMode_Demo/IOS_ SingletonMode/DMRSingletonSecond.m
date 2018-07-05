//
//  DMRSingletonSecond.m
//  IOS_DesignMode_Demo
//
//  Created by Riven on 2018/7/5.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import "DMRSingletonSecond.h"

@implementation DMRSingletonSecond
+ (DMRSingletonSecond * _Nonnull)sharedSingleton {
    static DMRSingletonSecond *dmrSingletonSecond = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        dmrSingletonSecond = [[super allocWithZone:nil] init];
    });
    
    return dmrSingletonSecond;
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    return [self sharedSingleton];
}
+ (instancetype)alloc {
    return [self sharedSingleton];
}
+ (instancetype)new {
    return [self sharedSingleton];
}

- (id)copy {
    return [[self class] sharedSingleton];
}
- (id)mutableCopy {
    return [[self class] sharedSingleton];
}
- (id)copyWithZone:(struct _NSZone *)zone {
    return [[self class] sharedSingleton];
}
- (id)mutableCopyWithZone:(struct _NSZone*)zone {
    return [[self class] sharedSingleton];
}

- (void)test {
    NSLog(@"Test %@", self);
}
@end
