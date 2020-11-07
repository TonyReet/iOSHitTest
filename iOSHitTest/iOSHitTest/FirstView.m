//
//  FirstView.m
//  iOSHitTest
//
//  Created by tonyreet on 2020/11/7.
//

#import "FirstView.h"
#import "SecondView.h"

@implementation FirstView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {

        SecondView *secondView = [[SecondView alloc] initWithFrame:CGRectMake(0, -200, 100, 100)];
        secondView.backgroundColor = [UIColor redColor];
    
        [self addSubview:secondView];
    }
    return self;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"touchesBegan FirstView");
}

-(UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event
{
    UIView* view = [super hitTest:point withEvent:event];
    
    if (!view) {
        for (UIView *subView in self.subviews) {
            CGPoint tp = [subView convertPoint:point fromView:self];
            if (CGRectContainsPoint(subView.bounds, tp)) {
                if (self.hitTestType == HitTestTypeDirect){
                    view = subView;
                }else{
                    view = [subView hitTest:tp withEvent:event];
                }
                
                
                break;
            }
        }
    }
    return view;
}

-(BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event
{
    BOOL result = CGRectContainsPoint(self.bounds, point);
    if (result) {
        return result;
    }
 
    if (self.hitTestType != HitTestTypePointInsideSubView){
        return result;
    }
    
    // 判断点击的是不是cardView
    for (UIView *subView in self.subviews) {
        if ([subView isKindOfClass:NSClassFromString(@"PhonicsWordCardView")] &&
            CGRectContainsPoint(subView.frame, point)) {
            
            return YES;
        }
    }

    return NO;
}


@end
