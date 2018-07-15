//
//  DMRVisitorClient.m
//  IOS_DesignMode_Demo
//
//  Created by Riven on 2018/7/15.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import "DMRVisitorClient.h"
#import "DMRVisitorConcreteVisitor.h"
#import "DMRVisitorObjectStruct.h"

NS_ASSUME_NONNULL_BEGIN

@implementation DMRVisitorClient
- (void)test {
    DMRVisitorObjectStruct *objectStruct = [DMRVisitorObjectStruct new];
    DMRVisitorConcreteVisitor *visitor = [DMRVisitorConcreteVisitor new];
    
    NSLog(@"test start...");
    for (id<DMRVisitorElement> element in objectStruct.elements) {
        [element accept:visitor];
    }
    NSLog(@"test end...");
}
@end

NS_ASSUME_NONNULL_END
