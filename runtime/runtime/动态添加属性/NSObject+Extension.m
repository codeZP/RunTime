//
//  NSObject+Extension.m
//  runtime
//
//  Created by yueru on 2017/3/2.
//  Copyright © 2017年 yueru. All rights reserved.
//

#import "NSObject+Extension.h"
#import <objc/message.h>

@implementation NSObject (Extension)

- (void)setName:(NSString *)name {
    objc_setAssociatedObject(self, @"name", name, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSString *)name {
    return objc_getAssociatedObject(self, @"name");
}

@end
