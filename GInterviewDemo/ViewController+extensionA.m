//
//  ViewController+extensionA.m
//  GInterviewDemo
//
//  Created by Caoguo on 2019/7/20.
//  Copyright © 2019 Namegold. All rights reserved.
//

#import "ViewController+extensionA.h"

@implementation ViewController (extensionA)

- (void)cg_viewDidLoadA {
    NSLog(@"extension A viewDidLoad");
    [self cg_viewDidLoadA];
}

@end
