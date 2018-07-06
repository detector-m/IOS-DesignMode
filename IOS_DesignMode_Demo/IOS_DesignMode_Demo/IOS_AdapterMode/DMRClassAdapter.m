//
//  DMRClassAdapter.m
//  IOS_DesignMode_Demo
//
//  Created by Mac on 2018/7/6.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import "DMRClassAdapter.h"
#import "DMRNormalTarget.h"

@implementation DMRClassAdapter
+ (void)test {
    id<DMRTarget> normalTarget = [DMRNormalTarget new];
    [normalTarget request];
    
    // specifical
    id<DMRTarget> adapter = [DMRClassAdapter new];
    [adapter request];
}
- (void)request {
    [super specificRequest];
}
@end
