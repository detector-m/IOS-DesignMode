//
//  DMRChainOfResponsibilityConcreteHandler.m
//  IOS_DesignMode_Demo
//
//  Created by Riven on 2018/7/12.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import "DMRChainOfResponsibilityConcreteHandler.h"

NS_ASSUME_NONNULL_BEGIN

@implementation DMRChainOfResponsibilityConcreteHandler
@synthesize handler = _handler;

- (void)handleRequest:(NSString * _Nonnull)requestString {
    if (!self.handler) {
        NSLog(@"handle request ----- %@", requestString);
        
        return;
    }
    
    NSLog(@"next handle request ----- %@", requestString);
    NSNumber *num = @(requestString.integerValue+1);
    [self.handler handleRequest:num.stringValue];
}

@end

NS_ASSUME_NONNULL_END
