//
//  SecondView.m
//  iOSHitTest
//
//  Created by tonyreet on 2020/11/7.
//

#import "SecondView.h"

@implementation SecondView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {

        UIButton *firstBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, self.bounds.size.width/2., self.bounds.size.height/2.)];
        
        [firstBtn setTitle:@"firstBtn" forState:UIControlStateNormal];
        firstBtn.backgroundColor = [UIColor yellowColor];
        [firstBtn addTarget:self action:@selector(firstBtnClick:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:firstBtn];
        
        UIButton *secondBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, self.bounds.size.width/2., self.bounds.size.height/2.)];
        
        [secondBtn setTitle:@"firstBtn" forState:UIControlStateNormal];
        secondBtn.backgroundColor = [UIColor yellowColor];
        [secondBtn addTarget:self action:@selector(secondBtnClick:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:secondBtn];
    }
    return self;
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"touchesBegan SecondView");
}

- (void)firstBtnClick:(UIButton *)btn{
    NSLog(@"firstBtnClick");
}

- (void)secondBtnClick:(UIButton *)btn{
    NSLog(@"firstBtnClick");
}
@end
