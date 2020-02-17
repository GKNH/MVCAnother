//
//  ViewController.m
//  MVCAnother
//
//  Created by Sun on 2020/2/16.
//  Copyright © 2020 sun. All rights reserved.
//

#import "ViewController.h"
#import "SModel.h"
#import "SAppView.h"

@interface ViewController () <SAppViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 创建 SAppView
    SAppView *appView = [[SAppView alloc] init];
    appView.frame = CGRectMake(100, 100, 100, 150);
    appView.delegate = self;
    [self.view addSubview:appView];
    
    // 加载模型数据
    SModel *model = [[SModel alloc] init];
    model.name = @"QQ";
    model.image = @"QQ";
    
    // 设置数据到View
    appView.app = model;
    
}

- (void)appViewDidClick:(SAppView *)appView {
    NSLog(@"控制器监听到了appView的点击");
}

@end
