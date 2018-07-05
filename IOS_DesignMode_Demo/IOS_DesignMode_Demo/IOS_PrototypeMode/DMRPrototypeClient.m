//
//  DMRPrototypeClient.m
//  IOS_DesignMode_Demo
//
//  Created by Mac on 2018/7/5.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import "DMRPrototypeClient.h"
#import "DMRPrototype.h"

@implementation DMRPrototypeClient
- (void)testPrototype {
    // 创建Prototype实例 prototype
    DMRPrototype *prototype = [DMRPrototype new];
    
    // 通过prototype深复制出一个新的对象prototypeCopy
    DMRPrototype *prototypeDeepCopy = prototype.copy;
    
    // 通过prototype直接赋值，其实就是复制了指针(可以理解为取了个别名)，属于浅复制，引用计数不变
    DMRPrototype *prototypeShallowCopy = prototype;
    
    NSLog(@"修改前========");
    NSLog(@"原始对象:%p,%@", prototype, prototype.name);
    NSLog(@"浅复制对象:%p,%@", prototypeShallowCopy, prototypeShallowCopy.name);
    NSLog(@"深复制对象:%p,%@", prototypeDeepCopy, prototypeDeepCopy.name);
    
    prototype.name = @"My name is new Prototype";
    
    NSLog(@"修改后========");
    NSLog(@"原始对象:%p,%@", prototype, prototype.name);
    NSLog(@"浅复制对象:%p,%@", prototypeShallowCopy, prototypeShallowCopy.name);
    NSLog(@"深复制对象:%p,%@", prototypeDeepCopy, prototypeDeepCopy.name);
}
@end
