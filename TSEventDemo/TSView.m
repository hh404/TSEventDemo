
//
//  TSView.m
//  TSEventDemo
//
//  Created by huangjianwu on 2016/12/7.
//  Copyright © 2016年 huangjianwu. All rights reserved.
//

#import "TSView.h"

@interface TSView()
@property (nonatomic, strong) UILabel *label;
@end

@implementation TSView


- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if(self)
    {
        _label = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, 200, 30)];
        _label.textColor = [UIColor redColor];
        [self addSubview:_label];
    }
    
    return self;
}

- (void)setTitle:(NSString*)str;
{
    _label.text = str;
}

- (void)setTitlePostion:(NSUInteger)titlePostion
{
    _titlePostion = titlePostion;
    
    if(titlePostion == 1)
    {
        float y = CGRectGetMaxY(self.frame) - 88;
        CGRect fr = _label.frame;
        fr.origin.y = y;
        _label.frame = fr;
    }
}

- (UIResponder *)nextResponder
{
    NSLog(@"%s [name:%@] Before",__PRETTY_FUNCTION__,self.label.text);
    UIResponder *n = [super nextResponder];
    NSLog(@"%s [name:%@] After nextResponder:%@",__PRETTY_FUNCTION__,self.label.text,n);
    return n;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"%s [name:%@] Before",__PRETTY_FUNCTION__,self.label.text);
    //必须调用super,不然action事件传不下去了,不影响gesture
    [super touchesBegan:touches withEvent:event];
    NSLog(@"%s [name:%@] After",__PRETTY_FUNCTION__,self.label.text);
    
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"%s [name:%@] Before",__PRETTY_FUNCTION__,self.label.text);
    [super touchesMoved:touches withEvent:event];
    NSLog(@"%s [name:%@] After",__PRETTY_FUNCTION__,self.label.text);
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"%s [name:%@] Before",__PRETTY_FUNCTION__,self.label.text);
    [super touchesEnded:touches withEvent:event];
    NSLog(@"%s [name:%@] After",__PRETTY_FUNCTION__,self.label.text);
}

-(void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"%s [name:%@] Before",__PRETTY_FUNCTION__,self.label.text);
    [super touchesCancelled:touches withEvent:event];
    NSLog(@"%s [name:%@] After",__PRETTY_FUNCTION__,self.label.text);
    
}

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event
{
    NSLog(@"%s [name:%@] Before",__PRETTY_FUNCTION__,self.label.text);
    BOOL p = [super pointInside:point withEvent:event];
    NSLog(@"%s [name:%@] After",__PRETTY_FUNCTION__,self.label.text);
    return p;
}

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event
{
    NSLog(@"%s [name:%@] Before",__PRETTY_FUNCTION__,self.label.text);
    UIView *v = [super hitTest:point withEvent:event];
    NSLog(@"%s [name:%@] After",__PRETTY_FUNCTION__,self.label.text);
    
    return v;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"title:%@",self.label.text];
}

@end
