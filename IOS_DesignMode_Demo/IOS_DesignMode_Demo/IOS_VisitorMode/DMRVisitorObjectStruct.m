//
//  DMRVisitorObjectStruct.m
//  IOS_DesignMode_Demo
//
//  Created by Riven on 2018/7/15.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import "DMRVisitorObjectStruct.h"
#import "DMRVisitorConcreteElement.h"
#import "DMRVisitorConcreteElementOne.h"

NS_ASSUME_NONNULL_BEGIN

@interface DMRVisitorObjectStruct ()
@property (nonatomic, readwrite, strong, nonnull) NSMutableArray<id<DMRVisitorElement>> *elements;
@end

@implementation DMRVisitorObjectStruct

- (instancetype)init {
    if (self = [super init]) {
        NSInteger randomIndex = arc4random() % 2;
        id<DMRVisitorElement> element = nil;
        for (int i=0; i<10; i++) {
            if (randomIndex == 0) {
                element = [DMRVisitorConcreteElement new];
            }
            else {
                element = [DMRVisitorConcreteElementOne new];
            }
            
            [self.elements addObject:element];
            randomIndex = arc4random() % 2;
        }
    }
    
    return self;
}

- (NSMutableArray<id<DMRVisitorElement>> *)elements {
    if (!_elements) {
        _elements = [NSMutableArray array];
    }
    return _elements;
}

@end

NS_ASSUME_NONNULL_END
