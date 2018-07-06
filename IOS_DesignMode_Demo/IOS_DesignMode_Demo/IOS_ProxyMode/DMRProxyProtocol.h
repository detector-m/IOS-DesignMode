//
//  DMRProxyProtocol.h
//  IOS_DesignMode_Demo
//
//  Created by Mac on 2018/7/6.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol DMRProxyProtocol <NSObject>
@required
- (void)doSomething;
@optional
- (void)doOtherThing;
@end
