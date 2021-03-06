//
//  ViewController.m
//  XHPagesContainer
//
//  Created by 曾 宪华 on 14-1-23.
//  Copyright (c) 2014年 曾宪华 开发团队(http://iyilunba.com ) 本人QQ:543413507 本人QQ群（142557668）. All rights reserved.
//

#import "ViewController.h"
#import "XHPagesContainer.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    if ([self.navigationController.navigationBar respondsToSelector:@selector(setBarTintColor:)])
        [self.navigationController.navigationBar setBarTintColor:[UIColor redColor]];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(0, 0, 200, 200);
    button.center = self.view.center;
    [button addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:@"打开" forState:UIControlStateNormal];
    [self.view addSubview:button];
}

- (void)buttonClick {
    [self.navigationController pushViewController:[[XHPagesContainer alloc] init] animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
