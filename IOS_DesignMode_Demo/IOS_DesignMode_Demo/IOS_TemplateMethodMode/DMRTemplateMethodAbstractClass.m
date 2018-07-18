//
//  DMRTemplateMethodAbstractClass.m
//  IOS_DesignMode_Demo
//
//  Created by Mac on 2018/7/18.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import "DMRTemplateMethodAbstractClass.h"

@implementation DMRTemplateMethodAbstractClass

- (instancetype)init {
    if ([self isMemberOfClass:[DMRTemplateMethodAbstractClass class]])
        [self doesNotRecognizeSelector:_cmd];
    
    return self;
}

// 模版方法
- (void)templateMethod {
    if ([self isPrint]) {
        NSLog(@"template method start...");
    }
    [self primitiveOperation1];
    [self primitiveOperation2];
    
    if ([self isPrint]) {
        NSLog(@"template method end...");
    }
}
// 基本方法-具体方法
- (void)primitiveOperation1 {
    [self doesNotRecognizeSelector:_cmd];
}
- (void)primitiveOperation2 {
    [self doesNotRecognizeSelector:_cmd];
}
// 钩子方法
- (BOOL)isPrint {
    return YES;
}
@end
