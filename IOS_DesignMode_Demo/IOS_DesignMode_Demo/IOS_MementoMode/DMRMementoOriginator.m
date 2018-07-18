//
//  DMRMementoOriginator.m
//  IOS_DesignMode_Demo
//
//  Created by Mac on 2018/7/18.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import "DMRMementoOriginator.h"

NS_ASSUME_NONNULL_BEGIN

@implementation DMRMementoOriginator
- (nonnull DMRMementoMemento *)createMemento {
    DMRMementoMemento *memento = [DMRMementoMemento new];
    memento.state = self.state;
    return memento;
}
- (void)restoreMemento:(DMRMementoMemento * _Nonnull)memento {
    self.state = memento.state;
}
@end

NS_ASSUME_NONNULL_END
