//
//  ViewController.m
//  Test
//
//  Created by 随随意 on 17/2/22.
//  Copyright © 2017年 suisuiyi. All rights reserved.
//

#import "ViewController.h"
#import "TestViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)loadView {
    [super loadView];
    self.title = @"A控制器";
    NSLog(@"A控制器loadView");
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"viewDidLoad");
    

    // Do any additional setup after loading the view, typically from a nib.
}

-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    //-----storyboard加载、
//    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"TestViewController" bundle:nil];
//    TestViewController *testVC = [storyboard instantiateInitialViewController];
//    [self.navigationController pushViewController:testVC animated:YES];
    
    
    //a.指定xib名称去加载！ 紫色
//    TestViewController* testVC = [[TestViewController alloc] initWithNibName:@"OtherViewController" bundle:nil];
//    [self.navigationController pushViewController:testVC animated:true];
    
    //b.不指定xib名称去加载  蓝色
    //loadView就回去加载同名的Xib 即TestViewController.xib
    
    
    TestViewController* testVC = [[TestViewController alloc] init];
    [self.navigationController pushViewController:testVC animated: YES];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    NSLog(@"收到内存警告");
    self.view = nil;
    
}



@end
