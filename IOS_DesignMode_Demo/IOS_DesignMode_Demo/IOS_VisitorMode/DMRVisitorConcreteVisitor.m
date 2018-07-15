//
//  DMRVisitorConcreteVisitor.m
//  IOS_DesignMode_Demo
//
//  Created by Riven on 2018/7/15.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import "DMRVisitorConcreteVisitor.h"
#import "DMRVisitorElement.h"

NS_ASSUME_NONNULL_BEGIN

@implementation DMRVisitorConcreteVisitor

- (void)visit:(id<DMRVisitorElement> _Nonnull)element {
    [element operate];
}

@end

NS_ASSUME_NONNULL_END
