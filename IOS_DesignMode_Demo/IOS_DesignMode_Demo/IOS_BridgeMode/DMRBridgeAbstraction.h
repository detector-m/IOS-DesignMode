//
//  DMRBridgeAbstraction.h
//  IOS_DesignMode_Demo
//
//  Created by Riven on 2018/7/9.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import "DMRBridgeImplementor.h"

NS_ASSUME_NONNULL_BEGIN

@protocol DMRBridgeAbstraction <NSObject>
@property (nonatomic, strong, nonnull) id<DMRBridgeImplementor> implementor;

- (void)abstractionOperation;
@end

NS_ASSUME_NONNULL_END
