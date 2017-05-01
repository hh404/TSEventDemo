//
//  TSAplication.m
//  TestCorePlot
//
//  Created by huangjianwu on 2016/12/5.
//  Copyright © 2016年 huangjianwu. All rights reserved.
//

#import "TSAplication.h"

@implementation TSAplication

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

- (void)delayEvent
{
    
}

@end
