//
//  TSWIndow.m
//  TSEventDemo
//
//  Created by huangjianwu on 2016/12/6.
//  Copyright © 2016年 huangjianwu. All rights reserved.
//

#import "TSWindow.h"

@implementation TSWindow

- (UIResponder *)nextResponder
{
    NSLog(@"%s Before",__PRETTY_FUNCTION__);
    UIResponder *n = [super nextResponder];
    NSLog(@"%s After nextResponder:%@",__PRETTY_FUNCTION__,n);
    return n;
}


- (void)sendEvent:(UIEvent *)event
{
    NSSet *touches = [event allTouches];
    
    for (UITouch *touch in touches) {
        
        switch ([touch phase]) {
                
            case UITouchPhaseBegan:
                NSLog(@"%s Before %tu",__PRETTY_FUNCTION__,[touch phase]);

                break;
                
            case UITouchPhaseMoved:
                NSLog(@"%s Before %tu",__PRETTY_FUNCTION__,[touch phase]);
                
                break;
                
            case UITouchPhaseEnded:
            case UITouchPhaseCancelled:
                NSLog(@"%s Before %tu",__PRETTY_FUNCTION__,[touch phase]);
                
                break;
                
            default:
                break;
        }
    }
    
    [super sendEvent:event];
    
    for (UITouch *touch in touches) {
        
        switch ([touch phase]) {
                
            case UITouchPhaseBegan:
                NSLog(@"%s After %tu",__PRETTY_FUNCTION__,[touch phase]);
                
                break;
                
            case UITouchPhaseMoved:
                NSLog(@"%s After %tu",__PRETTY_FUNCTION__,[touch phase]);
                
                break;
                
            case UITouchPhaseEnded:
            case UITouchPhaseCancelled:
                NSLog(@"%s After %tu",__PRETTY_FUNCTION__,[touch phase]);
                
                break;
                
            default:
                break;
        }
    }
    
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
    NSLog(@"%s Before",__PRETTY_FUNCTION__);
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
    BOOL b = [super pointInside:point withEvent:event];
    NSLog(@"%s After",__PRETTY_FUNCTION__);
    return b;
}

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event
{
    NSLog(@"%s Before",__PRETTY_FUNCTION__);
    UIView *v = [super hitTest:point withEvent:event];
    NSLog(@"%s After",__PRETTY_FUNCTION__);
    
    return v;
}

- (void)showLogWithEvent:(UIEvent*)event
{
    NSSet *touches = [event allTouches];
    
    for (UITouch *touch in touches) {
        
        switch ([touch phase]) {
                
            case UITouchPhaseBegan:
                NSLog(@"%s %tu",__PRETTY_FUNCTION__,[touch phase]);
                
                break;
                
            case UITouchPhaseMoved:
                NSLog(@"%s %tu",__PRETTY_FUNCTION__,[touch phase]);
                
                break;
                
            case UITouchPhaseEnded:
            case UITouchPhaseCancelled:
                NSLog(@"%s %tu",__PRETTY_FUNCTION__,[touch phase]);
                
                break;
                
            default:
                break;
        }
    }
}

@end
