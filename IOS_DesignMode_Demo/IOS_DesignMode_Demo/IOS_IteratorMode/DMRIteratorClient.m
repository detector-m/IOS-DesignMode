//
//  DMRIteratorClient.m
//  IOS_DesignMode_Demo
//
//  Created by Mac on 2018/7/17.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import "DMRIteratorClient.h"
#import "DMRIteratorConcreteAggregate.h"
#import "DMRIteratorIterator.h"

@implementation DMRIteratorClient
- (void)test {
    NSLog(@"test start...");
    DMRIteratorConcreteAggregate *aggregate = [DMRIteratorConcreteAggregate new];
    for (int i=0; i<10; i++) {
        [aggregate addElement:[@(i+1) stringValue]];
    }
    
    id<DMRIteratorIterator> iterator = [aggregate iterator];
    
    while (![iterator isDone]) {
        NSLog(@"element is %@", [iterator currentItem]);
        [iterator next];
    }
    
    NSLog(@"-----------------------------");
    
    aggregate.collection = [NSMutableArray arrayWithObjects:@"a", @"b", @"c", @"d", @"e", @"f", nil];
    
    iterator = [aggregate iterator];
    
    while (![iterator isDone]) {
        NSLog(@"element is %@", [iterator currentItem]);
        [iterator next];
    }
    
    NSLog(@"test end...");
}
@end
