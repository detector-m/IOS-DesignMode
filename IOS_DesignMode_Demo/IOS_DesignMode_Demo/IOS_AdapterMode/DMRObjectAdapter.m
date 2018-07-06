//
//  DMRObjectAdapter.m
//  IOS_DesignMode_Demo
//
//  Created by Mac on 2018/7/6.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import "DMRObjectAdapter.h"
#import "DMRNormalTarget.h"

@interface DMRObjectAdapter ()
@property (nonatomic, strong, nonnull) DMRAdaptee *adaptee;
@end

@implementation DMRObjectAdapter
+ (void)test {
    id<DMRTarget> normalTarget = [DMRNormalTarget new];
    [normalTarget request];
    
    // specifical
    id<DMRTarget> adapter = [[DMRObjectAdapter alloc] initWithTarget:[DMRAdaptee new]];
    [adapter request];
}

- (instancetype)initWithTarget:(DMRAdaptee * _Nonnull)target {
    if (self = [super init]) {
        self.adaptee = target;
    }
    
    return self;
}

- (void)request {
    [self.adaptee specificRequest];
}
@end
