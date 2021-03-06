//
//  BezierPathViewController.m
//  Demo测试
//
//  Created by vcyber on 16/6/28.
//  Copyright © 2016年 vcyber. All rights reserved.
//

#import "BezierPathViewController.h"
#import "AnimationView.h"

@interface BezierPathViewController ()<AnimationViewDelegate>
@property (nonatomic, strong) AnimationView *animationView;

@end

@implementation BezierPathViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    [self addRightItem];
    self.view.backgroundColor = [UIColor purpleColor];
    
    self.SourceArray = [NSMutableArray arrayWithObjects:@[@"AnimationView.h", @"DemoSourceViewController"], @[@"AnimationView.m", @"DemoSourceViewController"], @[@"CircleLayer.h", @"DemoSourceViewController"], @[@"CircleLayer.m", @"DemoSourceViewController"], @[@"RectangleLayer.h", @"DemoSourceViewController"], @[@"RectangleLayer.m", @"DemoSourceViewController"], @[@"TriangleLayer.h", @"DemoSourceViewController"], @[@"TriangleLayer.m", @"DemoSourceViewController"], @[@"WaveLayer.h", @"DemoSourceViewController"], @[@"WaveLayer.m", @"DemoSourceViewController"], nil];
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    CGFloat size = 100.0;
    self.animationView = [[AnimationView alloc] initWithFrame:CGRectMake(CGRectGetWidth(self.view.frame)/2 - size/2, CGRectGetHeight(self.view.frame)/2 - size/2, size, size)];
    _animationView.delegate = self;
    for (UIView *view in self.view.subviews) {
        if ([view isKindOfClass:[AnimationView class]]) {
            [view removeFromSuperview];
        }
    }
    [self.view addSubview:_animationView];
}

- (void)completeAnimation {
    
    UILabel *label = [[UILabel alloc] initWithFrame:self.view.frame];
    label.textColor = [UIColor whiteColor];
    label.textAlignment = NSTextAlignmentCenter;
    label.text = @"Welcome";
    label.font = [UIFont fontWithName:@"HelveticaNeue-Thin" size:50.0];
    label.transform = CGAffineTransformScale(label.transform, 0.25, 0.25);
    [self.view addSubview:label];
    
    [UIView animateWithDuration:0.4 delay:0 usingSpringWithDamping:0.7 initialSpringVelocity:0.1 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        label.transform = CGAffineTransformScale(label.transform, 4, 4);
        
    } completion:^(BOOL finished) {
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
