//
//  DMRIteratorIterator.h
//  IOS_DesignMode_Demo
//
//  Created by Mac on 2018/7/17.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol DMRIteratorIterator <NSObject>
- (void)first;
- (void)next;
- (BOOL)isDone;
- (id _Nullable)currentItem;
@end

NS_ASSUME_NONNULL_END
