//
//  DMRCompositeTest.m
//  IOS_DesignMode_Demo
//
//  Created by Riven on 2018/7/8.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import "DMRCompositeTest.h"
#import "DMRCompositeComposite.h"
#import "DMRCompositeLeaf.h"

NS_ASSUME_NONNULL_BEGIN

@implementation DMRCompositeTest
- (void)test {
    // root
    DMRCompositeComposite *root = [DMRCompositeComposite new];
    root.name = @"root";
    
    // root left
    DMRCompositeComposite *rootLeft = [DMRCompositeComposite new];
    rootLeft.name = @"root left";
    
    [root add:rootLeft];
    
    // root right
    DMRCompositeComposite *rootRight = [DMRCompositeComposite new];
    rootRight.name = @"root right";
    
    [root add:rootRight];
    
    // leaf for left
    DMRCompositeLeaf *leafLeft = [DMRCompositeLeaf new];
    leafLeft.name = @"leaf left";
    
    [rootLeft add:leafLeft];
    
    // leaf for right
    DMRCompositeLeaf *leafRight1 = [DMRCompositeLeaf new];
    leafRight1.name = @"leaf right 1";
    
    [rootRight add:leafRight1];
    
    
    DMRCompositeLeaf *leafRight2 = [DMRCompositeLeaf new];
    leafRight2.name = @"leaf right 2";
    
    [rootRight add:leafRight2];
    
    [root eachComponent];
}
@end

NS_ASSUME_NONNULL_END
