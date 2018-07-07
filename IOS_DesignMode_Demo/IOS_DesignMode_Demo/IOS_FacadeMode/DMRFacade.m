//
//  DMRFacade.m
//  IOS_DesignMode_Demo
//
//  Created by Riven on 2018/7/7.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import "DMRFacade.h"
#import "DMRSystemOne.h"
#import "DMRSystemTwo.h"
#import "DMRSystemThree.h"

NS_ASSUME_NONNULL_BEGIN

@interface DMRFacade ()
@property (nonatomic, strong, nonnull) DMRSystemOne *systemOne;
@property (nonatomic, strong, nonnull) DMRSystemTwo *systemTwo;
@property (nonatomic, strong, nonnull) DMRSystemThree *systemThree;
@end

@implementation DMRFacade

#pragma mark - Public
- (void)facadeOne {
    [self.systemOne systemOne];
}

- (void)facadeTwo {
    [self.systemTwo systemTwo];
}

- (void)facadeThree {
    [self.systemThree systemThree];
}

- (void)test {
    NSLog(@"test start...");
    [self facadeOne];
    [self facadeTwo];
    [self facadeThree];
    NSLog(@"test end...");
}

#pragma mark - Setter / Getter
- (DMRSystemOne *)systemOne {
    if (!_systemOne) {
        _systemOne = [DMRSystemOne new];
    }
    
    return _systemOne;
}

- (DMRSystemTwo *)systemTwo {
    if (!_systemTwo) {
        _systemTwo = [DMRSystemTwo new];
    }
    
    return _systemTwo;
}

- (DMRSystemThree *)systemThree {
    if (!_systemThree) {
        _systemThree = [DMRSystemThree new];
    }
    
    return _systemThree;
}

@end

NS_ASSUME_NONNULL_END
