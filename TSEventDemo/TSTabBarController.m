//
//  TSTabBarController.m
//  TSEventDemo
//
//  Created by huangjianwu on 2016/12/7.
//  Copyright © 2016年 huangjianwu. All rights reserved.
//

#import "TSTabBarController.h"

@implementation TSTabBarController

#pragma mark - touch

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"%s Before",__PRETTY_FUNCTION__);
    [super touchesBegan:touches withEvent:event];
    NSLog(@"%s After",__PRETTY_FUNCTION__);
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"%s Before",__PRETTY_FUNCTION__);
    [super touchesMoved:touches withEvent:event];
    NSLog(@"%s After",__PRETTY_FUNCTION__);
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"%s Before",__PRETTY_FUNCTION__);
    [super touchesEnded:touches withEvent:event];
    NSLog(@"%s After",__PRETTY_FUNCTION__);
}

-(void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"%s Before",__PRETTY_FUNCTION__);
    [super touchesCancelled:touches withEvent:event];
    NSLog(@"%s After",__PRETTY_FUNCTION__);
}

- (UIResponder *)nextResponder
{
    NSLog(@"%s Before",__PRETTY_FUNCTION__);
    UIResponder *n = [super nextResponder];
    NSLog(@"%s  After nextResponder:%@",__PRETTY_FUNCTION__,n);
    return n;
}

- (BOOL)becomeFirstResponder
{
    BOOL isB = [super becomeFirstResponder];
    return isB;
}


@end
