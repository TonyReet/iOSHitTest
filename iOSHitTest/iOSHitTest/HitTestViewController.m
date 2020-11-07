//
//  HitTestViewController.m
//  iOSHitTest
//
//  Created by tonyreet on 2020/11/7.
//

#import "HitTestViewController.h"
#import "FirstView.h"

@interface HitTestViewController ()

@end

@implementation HitTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    CGFloat firstViewWH = 200;
    FirstView *firstView = [[FirstView alloc] initWithFrame:CGRectMake(0, 0, firstViewWH, firstViewWH)];
    firstView.center = self.view.center;
    firstView.backgroundColor = [UIColor blueColor];
    
    [self.view addSubview:firstView];
}

@end
