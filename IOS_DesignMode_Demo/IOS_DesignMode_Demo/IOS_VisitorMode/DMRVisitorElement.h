//
//  DMRVisitorElement.h
//  IOS_DesignMode_Demo
//
//  Created by Riven on 2018/7/15.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol DMRVisitorVisitor;

@protocol DMRVisitorElement <NSObject>
- (void)accept:(id<DMRVisitorVisitor> _Nonnull)visitor;
- (void)operate;
@end

NS_ASSUME_NONNULL_END
