//
//  DMRSingleton.h
//  IOS_DesignMode_Demo
//
//  Created by Riven on 2018/7/5.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

#define DMR_SINGLETON_DEF(_type_) \
+ (_type_ *)sharedSingleton;\
+ (instancetype) alloc __attribute__((unavailable("call sharedSingleton instead")));\
+ (instancetype) new __attribute__((unavailable("call sharedSingleton instead")));\
- (id) copy __attribute__((unavailable("call sharedSingleton instead")));\
- (id) mutableCopy __attribute__((unavailable("call sharedSingleton instead")));

#define DMR_SINGLETON_IMP(_type_) \
+ (_type_ *)sharedSingleton { \
    static _type_ *dmrSingleton = nil;\
    static dispatch_once_t onceToken;\
    dispatch_once(&onceToken, ^{\
        dmrSingleton = [[super alloc] init];\
    });\
    return dmrSingleton;\
}

@interface DMRSingleton : NSObject
//+ (instancetype)sharedSingleton;
//
//+ (instancetype)alloc __attribute__((unavailable("call sharedSingleton instead")));
//+ (instancetype)new __attribute__((unavailable("call sharedSingleton instead")));
//- (id)copy __attribute__((unavailable("call sharedSingleton instead")));
//- (id)mutableCopy __attribute__((unavailable("call sharedSingleton instead")));

DMR_SINGLETON_DEF(DMRSingleton);
@end

NS_ASSUME_NONNULL_END
