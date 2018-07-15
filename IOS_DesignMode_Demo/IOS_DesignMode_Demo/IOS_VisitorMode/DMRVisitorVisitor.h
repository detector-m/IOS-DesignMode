//
//  DMRVisitorVisitor.h
//  IOS_DesignMode_Demo
//
//  Created by Riven on 2018/7/15.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol DMRVisitorElement;

@protocol DMRVisitorVisitor <NSObject>
- (void)visit:(id<DMRVisitorElement> _Nonnull)element;
@end

NS_ASSUME_NONNULL_END
