//
//  DMRFlyweightFlyweightFactory.m
//  IOS_DesignMode_Demo
//
//  Created by Riven on 2018/7/19.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import "DMRFlyweightFlyweightFactory.h"
#import "DMRFlyweightConcreteFlyweight.h"
#import "DMRFlyweightConcreteCompositeFlyweight.h"

NS_ASSUME_NONNULL_BEGIN

@interface DMRFlyweightFlyweightFactory ()
@property (nonatomic, strong, nonnull) NSMutableDictionary<NSString *, id<DMRFlyweightFlyweight>> *flyweightDictionary;
@end

@implementation DMRFlyweightFlyweightFactory

+ (DMRFlyweightFlyweightFactory * __nonnull)sharedFlyweightFactory {
    static DMRFlyweightFlyweightFactory *_flyweightFactory = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _flyweightFactory = [DMRFlyweightFlyweightFactory new];
    });
    
    return _flyweightFactory;
}

+ (id<DMRFlyweightFlyweight>)factory:(NSString *)intrinsicState {
    DMRFlyweightFlyweightFactory *flyFactory = [self sharedFlyweightFactory];
    
    id<DMRFlyweightFlyweight> flyweight = [flyFactory.flyweightDictionary objectForKey:intrinsicState];
    
    if (!flyweight) {
        flyweight = [[DMRFlyweightConcreteFlyweight alloc] initWithState:intrinsicState];
        [flyFactory.flyweightDictionary setObject:flyweight forKey:intrinsicState];
    }
    
    return flyweight;
}

+ (nonnull id<DMRFlyweightFlyweight>)compositeFactory:(NSArray<NSString *> * _Nonnull)intrinsicStates {
//    DMRFlyweightFlyweightFactory *flyFactory = [self sharedFlyweightFactory];
    DMRFlyweightConcreteCompositeFlyweight *compositeFlyweight = [[DMRFlyweightConcreteCompositeFlyweight alloc] init];
    for (NSString *state in intrinsicStates) {
        [compositeFlyweight addFlyweight:[self factory:state] intrinsicState:state];
    }
    
    return compositeFlyweight;
}

#pragma mark - Setter / Getter
- (NSMutableDictionary<NSString *, id<DMRFlyweightFlyweight>> *)flyweightDictionary {
    if (!_flyweightDictionary) {
        _flyweightDictionary = [NSMutableDictionary dictionary];
    }
    
    return _flyweightDictionary;
}
@end

NS_ASSUME_NONNULL_END
