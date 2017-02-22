//
//  TestViewController.m
//  Test
//
//  Created by 随随意 on 17/2/22.
//  Copyright © 2017年 suisuiyi. All rights reserved.
//

#import "TestViewController.h"

@interface TestViewController ()

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"B控制器";
    // Do any additional setup after loading the view from its nib.
}
//重写laodView方法，会根据重写的loadView方法创建view
//控制器通过storyboard加载，则根据storyboard的描述创建view
//控制器view通过xib加载， 则根据nibName对应的xib创建view
//没有指定nibName，则根据控制器同名的Xib创建view
// 没有同名的xib，则根据控制器名前缀相同 不带controller的xib创建view
//如果都没有就创建一个空的xib

///*******  storyboard加载的是控制器及控制的view.而Xib加载的仅仅是控制器view。
-(void)loadView {
    //如果我们希望控制器加载出来不是UIView而是其他控件 比如UIImageView那么我们可以重写loadView
    self.view = [[UIImageView alloc]init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void) awakeFromNib {
    NSLog(@"B通过nib加载！");
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
