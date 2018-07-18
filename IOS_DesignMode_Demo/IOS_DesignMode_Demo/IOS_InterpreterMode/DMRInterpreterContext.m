//
//  DMRInterpreterContext.m
//  IOS_DesignMode_Demo
//
//  Created by Mac on 2018/7/18.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import "DMRInterpreterContext.h"
#import "DMRInterpreterTerminalExpression.h"

NS_ASSUME_NONNULL_BEGIN

@interface DMRInterpreterContext ()
@property (nonatomic, strong, nonnull) NSMutableArray<id> *array;
@end

@implementation DMRInterpreterContext

- (void)addObject:(nonnull id)object {
    [self.array addObject:object];
}
- (id)getData:(nonnull id)object {
//    NSInteger index = [self.array indexOfObject:object];
    
    return ((DMRInterpreterTerminalExpression *)object).data;
}

#pragma mark - Setter / Getter
- (NSMutableArray<id> * _Nonnull)array {
    if (!_array) {
        _array = [NSMutableArray array];
    }
    
    return _array;
}
@end

NS_ASSUME_NONNULL_END
