//
//  DMRMementoClient.m
//  IOS_DesignMode_Demo
//
//  Created by Mac on 2018/7/18.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import "DMRMementoClient.h"
#import "DMRMementoOriginator.h"
#import "DMRMementoCaretaker.h"

@implementation DMRMementoClient
- (void)test {
    NSLog(@"test start...");
    
    DMRMementoOriginator *originator = [DMRMementoOriginator new];
    originator.state = @"state 1";
    NSLog(@"%@", originator.state);
    NSLog(@"original ----------------");
    
    DMRMementoCaretaker *caretaker = [DMRMementoCaretaker new];
    caretaker.memento = [originator createMemento];
    originator.state = @"state 2";
    NSLog(@"%@", originator.state);
    NSLog(@"change ----------------");
    
    [originator restoreMemento:caretaker.memento];
    NSLog(@"%@", originator.state);
    NSLog(@"restore ----------------");
    
    NSLog(@"test end...");
}
@end
