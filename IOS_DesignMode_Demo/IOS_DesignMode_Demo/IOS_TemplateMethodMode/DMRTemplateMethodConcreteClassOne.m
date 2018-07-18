//
//  DMRTemplateMethodConcreteClassOne.m
//  IOS_DesignMode_Demo
//
//  Created by Mac on 2018/7/18.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import "DMRTemplateMethodConcreteClassOne.h"

@implementation DMRTemplateMethodConcreteClassOne
// 基本方法-具体方法
- (void)primitiveOperation1 {
    NSLog(@"%@-%@", NSStringFromSelector(_cmd), NSStringFromClass([self class]));
}
- (void)primitiveOperation2 {
    NSLog(@"%@-%@", NSStringFromSelector(_cmd), NSStringFromClass([self class]));
}

- (BOOL)isPrint {
    return NO;
}
@end
