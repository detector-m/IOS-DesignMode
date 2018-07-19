//
//  DMRFlyweightConcreteCompositeFlyweight.m
//  IOS_DesignMode_Demo
//
//  Created by Riven on 2018/7/19.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import "DMRFlyweightConcreteCompositeFlyweight.h"

NS_ASSUME_NONNULL_BEGIN

@interface DMRFlyweightConcreteCompositeFlyweight ()
@property (nonatomic, strong, nonnull) NSMutableDictionary<NSString *, id<DMRFlyweightFlyweight>> *flyweightDictionary;
@end

@implementation DMRFlyweightConcreteCompositeFlyweight

- (void)operation:(NSString *)extrinsicState {
//    for (NSString *state in self.flyweightDictionary.allKeys) {
//
//    }
    
    for (id<DMRFlyweightFlyweight> fly in self.flyweightDictionary.allValues) {
        [fly operation:extrinsicState];
    }
}

- (void)addFlyweight:(id<DMRFlyweightFlyweight>)flyweight intrinsicState:(NSString *)intrinsicState {
    [self.flyweightDictionary setObject:flyweight forKey:intrinsicState];
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
