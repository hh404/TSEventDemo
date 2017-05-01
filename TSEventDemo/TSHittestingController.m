//
//  TSHittestingController.m
//  TSEventDemo
//
//  Created by huangjianwu on 2016/12/7.
//  Copyright © 2016年 huangjianwu. All rights reserved.
//

#import "TSHittestingController.h"
#import "TSView.h"
#import "UIColor+Random.h"

@implementation TSHittestingController


- (void)loadView
{
    TSView *v = [[TSView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [v setTitle:@"AView(MainView)"];
    self.view = v;
    v.titlePostion = 1;
    v.backgroundColor = [UIColor randomColor];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    TSView *bView = [[TSView alloc] initWithFrame:CGRectMake(20, 74, 300, 300)];
    [bView setTitle:@"BView"];
    bView.backgroundColor = [UIColor randomColor];
    [self.view addSubview:bView];
    
    
    TSView *dView = [[TSView alloc] initWithFrame:CGRectMake(20, 74 + 300 + 20, 300, 120)];
    [dView setTitle:@"DView"];
    dView.backgroundColor = [UIColor randomColor];
    [self.view addSubview:dView];
    
    
    TSView *cView = [[TSView alloc] initWithFrame:CGRectMake(120, 120, 100, 100)];
    [cView setTitle:@"CView"];
    cView.backgroundColor = [UIColor randomColor];
    [bView addSubview:cView];
    
    self.title = @"hit-testing";
}

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
