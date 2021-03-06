//
//  RollViewController.m
//  Demo测试
//
//  Created by vcyber on 16/6/28.
//  Copyright © 2016年 vcyber. All rights reserved.
//

#import "RollViewController.h"
#import "RollScrollView.h"

@interface RollViewController ()<RollScrollViewDelegate>

@end

@implementation RollViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    [self addRightItem];
    //如果有滚动视图和导航栏 最好加上这句话
    self.automaticallyAdjustsScrollViewInsets=NO;
    
    RollScrollView *roll = [[RollScrollView alloc] initWithFrame:CGRectMake(0, 64, self.view.frame.size.width, 200)];
    roll.imageArray = @[[NSURL URLWithString:@"https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1916500820,874871263&fm=116&gp=0.jpg"], [UIImage imageNamed:@"1"], @"2", @"3"];
    roll.placeholder = [UIImage imageNamed:@"placeHoder"];
    roll.delegate =self;
    //    [roll setPageControlCurrentImage:[UIImage imageNamed:@"pageControl_nor"] OtherImage:[UIImage imageNamed:@"pageControl_current"]];
    [self.view addSubview:roll];
    
    self.SourceArray = [NSMutableArray arrayWithObjects:@[@"RollScrollView.h", @"DemoSourceViewController"], @[@"RollScrollView.m", @"DemoSourceViewController"], @[@"RollViewController.h", @"DemoSourceViewController"], @[@"RollViewController.m", @"DemoSourceViewController"], nil];
}

- (void)clickRollScrollView:(RollScrollView *)rollScrollView didSelectScrollViewIndex:(NSInteger)index {
    
    
    NSLog(@"%ld", (long)index);
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
