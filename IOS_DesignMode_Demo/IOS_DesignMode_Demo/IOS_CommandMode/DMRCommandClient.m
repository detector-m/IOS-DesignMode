//
//  DMRCommandClient.m
//  IOS_DesignMode_Demo
//
//  Created by Riven on 2018/7/16.
//  Copyright © 2018年 Riven. All rights reserved.
//

#import "DMRCommandClient.h"
#import "DMRCommandInvoker.h"
#import "DMRCommandConcreteCommand.h"
#import "DMRCommandConcreteCommandOne.h"
#import "DMRCommandConcreteReciver.h"
#import "DMRCommandConcreteReciverOne.h"

NS_ASSUME_NONNULL_BEGIN

@implementation DMRCommandClient
- (void)test {
    DMRCommandInvoker *invoker = [DMRCommandInvoker new];
    DMRCommandConcreteReciver *reciver = [DMRCommandConcreteReciver new];
    DMRCommandConcreteReciverOne *reciverOne = [DMRCommandConcreteReciverOne new];
    
    DMRCommandConcreteCommand *command = [DMRCommandConcreteCommand new];
    DMRCommandConcreteCommandOne *commandOne = [DMRCommandConcreteCommandOne new];
    
    command.reciver = reciver;
    commandOne.reciver = reciverOne;
    
    invoker.command = command;
    [invoker action];
    
    command.reciver = reciverOne;
    [invoker action];
    
    invoker.command = commandOne;
    [invoker action];
    
    commandOne.reciver = reciver;
    [invoker action];
    
    
}
@end

NS_ASSUME_NONNULL_END
