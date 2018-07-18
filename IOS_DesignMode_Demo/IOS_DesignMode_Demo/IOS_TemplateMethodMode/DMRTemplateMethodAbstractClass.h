//
//  DMRTemplateMethodAbstractClass.h
//  IOS_DesignMode_Demo
//
//  Created by Mac on 2018/7/18.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DMRTemplateMethodAbstractClass : NSObject
// 模版方法
- (void)templateMethod;
// 基本方法-具体方法
- (void)primitiveOperation1;
- (void)primitiveOperation2;
// 钩子方法
- (BOOL)isPrint;
@end
