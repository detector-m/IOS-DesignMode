//
//  DMRMementoOriginator.h
//  IOS_DesignMode_Demo
//
//  Created by Mac on 2018/7/18.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DMRMementoMemento.h"

NS_ASSUME_NONNULL_BEGIN

@interface DMRMementoOriginator : NSObject
@property (nonatomic, copy, nullable) NSString *state;

- (nonnull DMRMementoMemento *)createMemento;
- (void)restoreMemento:(DMRMementoMemento * _Nonnull)memento;
@end

NS_ASSUME_NONNULL_END
