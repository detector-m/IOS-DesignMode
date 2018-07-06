//
//  DMRConsignor.m
//  IOS_DesignMode_Demo
//
//  Created by Mac on 2018/7/6.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import "DMRConsignor.h"

@implementation DMRConsignor
- (void)doSomething {
    if ([self.delegate respondsToSelector:@selector(doSomething)]) {
        [self.delegate doSomething];
    }
    
    if ([self.delegate respondsToSelector:@selector(doOtherThing)]) {
        [self.delegate doOtherThing];
    }
}
@end
