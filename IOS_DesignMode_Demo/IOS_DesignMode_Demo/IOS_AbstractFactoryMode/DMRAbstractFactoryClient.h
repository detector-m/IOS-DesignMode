//
//  DMRAbstractFactoryClient.h
//  IOS_DesignMode_Demo
//
//  Created by Riven on 2018/7/21.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DMRAbstractFactoryClient : NSObject

- (void)test;
- (void)testWithRuntime:(NSString * _Nonnull)factoryClassName;

@end

NS_ASSUME_NONNULL_END
