//
//  ViewController+exchangeMethod.m
//  GInterviewDemo
//
//  Created by Caoguo on 2019/7/20.
//  Copyright © 2019 Namegold. All rights reserved.
//

#import "ViewController+exchangeMethod.h"
#import <objc/runtime.h>
#import "ViewController+extensionA.h"
#import "ViewController+extensionB.h"
#import "ViewController+extensionC.h"

@implementation ViewController (exchangeMethod)

+ (void)load {
    Class class = [self class];
    // 交换原方法和A扩展类方法
    SEL selector = @selector(viewDidLoad);
    SEL selectorA = @selector(cg_viewDidLoadA);
    Method method = class_getInstanceMethod(class, selector);
    Method methodA = class_getInstanceMethod(class, selectorA);
    method_exchangeImplementations(method, methodA);
    
    // 交换原方法和B扩展类方法
    SEL selectorB = @selector(cg_viewDidLoadB);
    Method methodB = class_getInstanceMethod(class, selectorB);
    method_exchangeImplementations(method, methodB);
    
    // 交换原方法和C扩展类方法
    SEL selectorC = @selector(cg_viewDidLoadC);
    Method methodC = class_getInstanceMethod(class, selectorC);
    method_exchangeImplementations(method, methodC);
    
    
}

@end
