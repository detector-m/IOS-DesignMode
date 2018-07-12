//
//  DMRChainOfResonsibilityHandler.h
//  IOS_DesignMode_Demo
//
//  Created by Riven on 2018/7/12.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol DMRChainOfResonsibilityHandler <NSObject>
@property (nonatomic, assign, nullable) id<DMRChainOfResonsibilityHandler> handler;

- (void)handleRequest:(NSString * _Nonnull)requestString;
@end

NS_ASSUME_NONNULL_END
