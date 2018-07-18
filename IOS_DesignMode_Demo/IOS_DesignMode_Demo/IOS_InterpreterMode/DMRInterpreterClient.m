//
//  DMRInterpreterClient.m
//  IOS_DesignMode_Demo
//
//  Created by Mac on 2018/7/18.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import "DMRInterpreterClient.h"
#import "DMRInterpreterTerminalExpression.h"
#import "DMRInterpreterOrExpression.h"
#import "DMRInterpreterAndExpression.h"
#import "DMRInterpreterContext.h"

@implementation DMRInterpreterClient
- (void)test {
    DMRInterpreterContext *context = [DMRInterpreterContext new];
    DMRInterpreterTerminalExpression *one = [DMRInterpreterTerminalExpression new];
    one.data = @(1);
    DMRInterpreterTerminalExpression *two = [DMRInterpreterTerminalExpression new];
    two.data = @(2);
    
    [context addObject:one];
    [context addObject:two];
    
    DMRInterpreterOrExpression *orExpression = [DMRInterpreterOrExpression new];
    orExpression.expressionOne = one;
    orExpression.expressionTwo = two;
    
    NSLog(@"test start...");
    
    NSInteger result = [[orExpression interpret:context] integerValue];
    
    NSLog(@"(1 | 2) -> %ld-%d", result, 1 | 2);
//    NSAssert(result == 3, @"result is not true");
    
    DMRInterpreterAndExpression *andExpression = [DMRInterpreterAndExpression new];
    andExpression.expressionOne = one;
    andExpression.expressionTwo = two;
    
    result = [[andExpression interpret:context] integerValue];
    
    NSLog(@"(1 & 2) -> %ld-%d", result, 1 & 2);
    
    DMRInterpreterOrExpression *expression = [DMRInterpreterOrExpression new];
    expression.expressionOne = orExpression;
    expression.expressionTwo = andExpression;
    result = [[expression interpret:context] integerValue];
    
    NSLog(@"((1 | 2) | (1 & 2)) -> %ld-%d", result, (1 | 2) | (1 & 2));
    
    NSLog(@"test end...");
}
@end
