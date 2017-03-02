//
//  ViewController.m
//  runtime
//
//  Created by yueru on 2017/3/2.
//  Copyright © 2017年 yueru. All rights reserved.
//

#import "ViewController.h"
#import <objc/message.h>
#import "MessagePerson.h"
#import "NSObject+Extension.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 交换方法
//    UIImage *image = [UIImage imageNamed:@"123"];
    // 动态添加属性
//    NSObject *objc = [[NSObject alloc] init];
//    objc.name = @"123";
//    NSLog(@"%@", objc.name);
    // 动态添加方法
    Person *per = [[Person alloc] init];
    [per performSelector:sel_registerName("text: with:") withObject:@"张三" withObject:@10];
}

/**
 消息机制
 */
- (void)messageText {
    id objc = objc_msgSend([MessagePerson class], sel_registerName("alloc"));
    objc_msgSend(objc, sel_registerName("init"));
    objc_msgSend(objc, sel_registerName("text:"), @"张三");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
