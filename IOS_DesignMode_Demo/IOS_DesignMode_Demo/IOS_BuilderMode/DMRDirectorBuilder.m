//
//  DMRDirectorBuilder.m
//  IOS_DesignMode_Demo
//
//  Created by Mac on 2018/7/5.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import "DMRDirectorBuilder.h"
#import "DMRProduct.h"

@interface DMRDirectorBuilder ()
@property (nonatomic, readwrite, strong, nonnull) DMRProduct *product;
@end

@implementation DMRDirectorBuilder
- (void)buildFirstPart {
    self.product.firstPart = @"first part ------";
    NSLog(@"build %@", self.product.firstPart);
}

- (void)buildSecondPart {
    self.product.secondPart = @"sceond part ------";
    NSLog(@"build %@", self.product.secondPart);
}

- (void)buildThirdPart {
    self.product.thirdPart = @"third part ------";
    NSLog(@"build %@", self.product.thirdPart);
}

- (DMRProduct * _Nonnull)buildProduct {
    [self buildFirstPart];
    [self buildSecondPart];
    [self buildThirdPart];
    return self.product;
}

#pragma mark -
- (DMRProduct * _Nonnull)product {
    if (!_product) {
        _product = [DMRProduct new];
    }
    
    return _product;
}
@end
