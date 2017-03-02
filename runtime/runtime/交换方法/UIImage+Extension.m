//
//  UIImage+Extension.m
//  runtime
//
//  Created by yueru on 2017/3/2.
//  Copyright © 2017年 yueru. All rights reserved.
//

#import "UIImage+Extension.h"
#import <objc/message.h>

@implementation UIImage (Extension)

+ (void)load {
    Method m1 = class_getClassMethod(self, sel_registerName("ZP_ImageWithName:"));
    Method m2 = class_getClassMethod(self, sel_registerName("imageNamed:"));
    method_exchangeImplementations(m1, m2);
}

+ (UIImage *)ZP_ImageWithName:(NSString *)name {
    UIImage *image = [self ZP_ImageWithName:name];
    if (image) {
        NSLog(@"加载成功");
    }else {
        NSLog(@"加载失败");
    }
    return image;
}

@end
