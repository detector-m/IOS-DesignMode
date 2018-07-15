//
//  DMRVisitorConcreteElementOne.m
//  IOS_DesignMode_Demo
//
//  Created by Riven on 2018/7/15.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import "DMRVisitorConcreteElementOne.h"
#import "DMRVisitorVisitor.h"

NS_ASSUME_NONNULL_BEGIN

@implementation DMRVisitorConcreteElementOne

- (void)accept:(id<DMRVisitorVisitor> _Nonnull)visitor {
    [visitor visit:self];
}

- (void)operate {
    NSLog(@"This is Element One");
}

@end

NS_ASSUME_NONNULL_END
