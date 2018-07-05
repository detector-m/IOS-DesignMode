//
//  DMRDirectorBuilder.h
//  IOS_DesignMode_Demo
//
//  Created by Mac on 2018/7/5.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import <Foundation/Foundation.h>

@class DMRProduct;

@interface DMRDirectorBuilder : NSObject
- (void)buildFirstPart;
- (void)buildSecondPart;
- (void)buildThirdPart;

- (DMRProduct * _Nonnull)buildProduct;
@end
