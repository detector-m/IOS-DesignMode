//
//  DMRBridgeRefinedAbstraction.m
//  IOS_DesignMode_Demo
//
//  Created by Riven on 2018/7/9.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import "DMRBridgeRefinedAbstraction.h"

NS_ASSUME_NONNULL_BEGIN

@implementation DMRBridgeRefinedAbstraction
@synthesize implementor = _implementor;

- (void)abstractionOperation {
    [self.implementor implementorOperation];
}
@end

NS_ASSUME_NONNULL_END
