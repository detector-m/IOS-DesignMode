//
//  DMRConsignor.h
//  IOS_DesignMode_Demo
//
//  Created by Mac on 2018/7/6.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DMRProxyProtocol.h"

@interface DMRConsignor : NSObject
@property (nonatomic, weak, nullable) id<DMRProxyProtocol> delegate;

- (void)doSomething;
@end
