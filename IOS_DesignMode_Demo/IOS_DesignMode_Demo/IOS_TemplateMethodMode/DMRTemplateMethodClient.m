//
//  DMRTemplateMethodClient.m
//  IOS_DesignMode_Demo
//
//  Created by Mac on 2018/7/18.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import "DMRTemplateMethodClient.h"
#import "DMRTemplateMethodConcreteClass.h"
#import "DMRTemplateMethodConcreteClassOne.h"

@implementation DMRTemplateMethodClient
- (void)test {
    DMRTemplateMethodConcreteClass *concreteClass = [DMRTemplateMethodConcreteClass new];
    DMRTemplateMethodConcreteClassOne *concreteClassOne = [DMRTemplateMethodConcreteClassOne new];
    
    NSLog(@"test start...");
    [concreteClass templateMethod];
    
    NSLog(@"-----------------");
    
    [concreteClassOne templateMethod];
    
    NSLog(@"test end...");
}
@end
