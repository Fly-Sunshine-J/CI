//
//  ShowTimerViewController.m
//  Demo测试
//
//  Created by vcyber on 16/7/1.
//  Copyright © 2016年 vcyber. All rights reserved.
//

#import "ShowTimerViewController.h"
#import "TimerView.h"

@interface ShowTimerViewController ()

@end

@implementation ShowTimerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    TimerView *timerView = [[TimerView alloc] initWithFrame:CGRectMake(0, 0, 300, 300)];
    timerView.center = self.view.center;
    timerView.backgroundColor = [UIColor redColor];
    [self.view addSubview:timerView];
    
    
    self.SourceArray = [NSMutableArray arrayWithObjects:@[@"TimerView.h", @"DemoSourceViewController"], @[@"TimerView.m", @"DemoSourceViewController"], @[@"ShowTimerViewController.h", @"DemoSourceViewController"], @[@"ShowTimerViewController.m", @"DemoSourceViewController"], nil];
    
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
