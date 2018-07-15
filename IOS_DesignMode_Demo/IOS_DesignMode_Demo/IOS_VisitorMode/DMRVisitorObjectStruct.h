//
//  DMRVisitorObjectStruct.h
//  IOS_DesignMode_Demo
//
//  Created by Riven on 2018/7/15.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DMRVisitorElement.h"

NS_ASSUME_NONNULL_BEGIN

@interface DMRVisitorObjectStruct : NSObject
@property (nonatomic, strong, readonly, nonnull) NSMutableArray<id<DMRVisitorElement>> *elements;
@end

NS_ASSUME_NONNULL_END
