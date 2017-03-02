//
//  Person.m
//  runtime
//
//  Created by yueru on 2017/3/2.
//  Copyright © 2017年 yueru. All rights reserved.
//

#import "Person.h"
#import <objc/message.h>

@implementation Person

void aaa(id self, SEL _cmd, NSString *name, NSNumber *eag) {
    NSLog(@"%@有%d岁", name, [eag intValue]);
}

+ (BOOL)resolveInstanceMethod:(SEL)sel {
    if (sel == NSSelectorFromString(@"text: with:")) {
        class_addMethod(self, sel, (IMP)aaa, "v@:@@");
        return YES;
    }
    return [super resolveInstanceMethod:sel];
}

@end
