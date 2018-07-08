//
//  DMRCompositeLeaf.m
//  IOS_DesignMode_Demo
//
//  Created by Riven on 2018/7/8.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import "DMRCompositeLeaf.h"

NS_ASSUME_NONNULL_BEGIN

@implementation DMRCompositeLeaf

#pragma mark - Override
- (void)add:(DMRCompositeComponent *)component {
    // 叶子节点不具备添加的能力，所以不实现
}
- (void)remove:(DMRCompositeComponent *)component {
    // 叶子节点不具备添加的能力必然也不能删除
}
- (void)eachComponent {
    // 叶子节点没有子节点所以显示自己的执行结果
    NSLog(@"%@: I'm here", self.name);
}
@end

NS_ASSUME_NONNULL_END
