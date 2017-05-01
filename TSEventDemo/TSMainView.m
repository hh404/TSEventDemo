//
//  TSMainView.m
//  TSEventDemo
//
//  Created by huangjianwu on 2016/12/6.
//  Copyright © 2016年 huangjianwu. All rights reserved.
//

#import "TSMainView.h"

@implementation TSMainView

- (BOOL)becomeFirstResponder
{
    BOOL isB = [super becomeFirstResponder];
    return isB;
}

- (UIResponder *)nextResponder
{
    NSLog(@"%s Before",__PRETTY_FUNCTION__);
    UIResponder *n = [super nextResponder];
    NSLog(@"%s After nextResponder:%@",__PRETTY_FUNCTION__,n);
    return n;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"%s Before",__PRETTY_FUNCTION__);
    //必须调用super,不然action事件传不下去了,不影响gesture
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

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event
{
    NSLog(@"%s Before",__PRETTY_FUNCTION__);
    BOOL p = [super pointInside:point withEvent:event];
    NSLog(@"%s After",__PRETTY_FUNCTION__);
    return p;
}

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event
{
    NSLog(@"%s Before",__PRETTY_FUNCTION__);
    UIView *v = [super hitTest:point withEvent:event];
    NSLog(@"%s After",__PRETTY_FUNCTION__);
    
    return v;
}
@end
