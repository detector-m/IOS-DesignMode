//
//  DMRIteratorAggregate.h
//  IOS_DesignMode_Demo
//
//  Created by Mac on 2018/7/17.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol DMRIteratorIterator;

@protocol DMRIteratorAggregate <NSObject>
//@property (nonatomic, strong, nonnull) id<DMRIteratorIterator> iterator;

- (nonnull id<DMRIteratorIterator>)iterator;
@end

NS_ASSUME_NONNULL_END
