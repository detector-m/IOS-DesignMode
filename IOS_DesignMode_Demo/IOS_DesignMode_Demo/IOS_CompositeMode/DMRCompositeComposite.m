//
//  DMRCompositeComposite.m
//  IOS_DesignMode_Demo
//
//  Created by Riven on 2018/7/8.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import "DMRCompositeComposite.h"

NS_ASSUME_NONNULL_BEGIN

@interface DMRCompositeComposite ()
// 保存子节点
@property (nonatomic, strong, nonnull) NSMutableArray<DMRCompositeComponent *> *childNodeList;
@end

@implementation DMRCompositeComposite

#pragma mark - Override
// 添加部件
- (void)add:(DMRCompositeComponent *)component {
    if (!component) return;
    [self.childNodeList addObject:component];
}
// 删除部件
- (void)remove:(DMRCompositeComponent *)component {
    if (!component) {
        return;
    }
    
    [self.childNodeList removeObject:component];
}
// 遍历部件
- (void)eachComponent {
    NSLog(@"%@: I'm here", self.name);
    for (DMRCompositeComponent *component in self.childNodeList) {
        [component eachComponent];
    }
}

#pragma mark - Setter / Getter
- (NSMutableArray<DMRCompositeComponent *> *)childNodeList {
    if (!_childNodeList) {
        _childNodeList = [NSMutableArray array];
    }
    
    return _childNodeList;
}

@end

NS_ASSUME_NONNULL_END
