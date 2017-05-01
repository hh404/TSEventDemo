//
//  TSTapViewController.m
//  TSEventDemo
//
//  Created by huangjianwu on 2016/12/5.
//  Copyright © 2016年 huangjianwu. All rights reserved.
//

#import "TSTapViewController.h"
#import "TSTapView.h"
#import "TSMainView.h"

@interface TSTapViewController ()

@end

@implementation TSTapViewController

#pragma mark - default


- (void)loadView
{
    self.view = [[TSMainView alloc] initWithFrame:[UIScreen mainScreen].bounds];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor greenColor];
    
    TSTapView *tapView = [[TSTapView alloc] initWithFrame:CGRectMake(20, 120, 200, 300)];
    tapView.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:tapView];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(_gestureTap:)];
    [tapView addGestureRecognizer:tap];

    [tapView addTarget:self action:@selector(_actionTap:) forControlEvents:UIControlEventTouchUpInside];
    
    
//    UITapGestureRecognizer *mTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(_mainViewTap:)];
//    [self.view addGestureRecognizer:mTap];
//    [self addObserver:tap forKeyPath:@"state" options:NSKeyValueObservingOptionNew|NSKeyValueObservingOptionInitial context:nil];
    
//    UIPinchGestureRecognizer *pinch = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:@selector(_pinch:)];
//    [self.view addGestureRecognizer:pinch];
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

#pragma mark - private

- (void)_gestureTap:(UITapGestureRecognizer*)aTap
{
    NSLog(@"%s",__PRETTY_FUNCTION__);
    
}

- (void)_actionTap:(TSTapView*)aTapView
{
    NSLog(@"%s",__PRETTY_FUNCTION__);
    
}

- (void)_mainViewTap:(UITapGestureRecognizer*)aTap
{
    NSLog(@"%s",__PRETTY_FUNCTION__);
}

- (void)_pinch:(UIPinchGestureRecognizer*)aPinch
{
    NSLog(@"%s %tu",__PRETTY_FUNCTION__,aPinch.state);
    
}


#pragma mark - public

@end
