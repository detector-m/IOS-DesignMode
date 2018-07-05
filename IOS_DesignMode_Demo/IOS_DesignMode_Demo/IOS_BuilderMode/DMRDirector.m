//
//  DMRDirector.m
//  IOS_DesignMode_Demo
//
//  Created by Mac on 2018/7/5.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import "DMRDirector.h"

@implementation DMRDirector
- (nullable DMRProduct *)constructProduct:(nonnull DMRBuilder *)builder {
    if (!builder) return nil;
    
    [builder buildFirstPart];
    [builder buildSecondPart];
    [builder buildThirdPart];
    
    return builder.buildProduct;
}
@end
