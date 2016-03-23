//
//  ViewController.m
//  ImageCertificationDemo
//
//  Created by LuoYiJia on 16/3/23.
//  Copyright © 2016年 AlezJi. All rights reserved.
//

#import "ViewController.h"
#import "ImagCertificationView.h"
@interface ViewController ()
{
    ImagCertificationView *_cerView;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _cerView = [[ImagCertificationView alloc] initWithFrame:CGRectMake(50, 100, 82, 32)];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapClick:)];
    [_cerView addGestureRecognizer:tap];
    [self.view addSubview:_cerView];
    
}

- (void)tapClick:(UITapGestureRecognizer*)tap{
    [_cerView changeCode];
    
    NSLog(@"====str==%@",_cerView.changeString);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
