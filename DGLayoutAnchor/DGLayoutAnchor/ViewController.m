//
//  ViewController.m
//  DGLayoutAnchor
//
//  Created by Daniate on 16/4/16.
//  Copyright © 2016年 Daniate. All rights reserved.
//

#import "ViewController.h"
#import "UIView+DGLayoutAnchor.h"
#import "UIViewController+DGLayoutAnchor.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIView *v1 = [UIView new];
    v1.backgroundColor = [UIColor redColor];
    v1.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:v1];
    
    UIView *v2 = [UIView new];
    v2.backgroundColor = [UIColor orangeColor];
    v2.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:v2];
    
    UIView *v3 = [UIView new];
    v3.backgroundColor = [UIColor darkGrayColor];
    v3.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:v3];
    
    UIView *v4 = [UIView new];
    v4.backgroundColor = [UIColor brownColor];
    v4.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:v4];
    
    // constraints with top & leading & bottom & trailing
    NSLayoutConstraint *lc1 = [v1.dg_topAnchor equalTo:self.view.dg_topAnchor constant:20];
    NSLayoutConstraint *lc2 = [v1.dg_leadingAnchor equalTo:self.view.dg_leadingAnchor constant:20];
    NSLayoutConstraint *lc3 = [v1.dg_bottomAnchor equalTo:v3.dg_topAnchor constant:-20];
    
    NSLayoutConstraint *lc4 = [v2.dg_topAnchor equalTo:v1.dg_topAnchor];
    NSLayoutConstraint *lc5 = [v2.dg_leadingAnchor equalTo:v1.dg_trailingAnchor constant:20];
    NSLayoutConstraint *lc6 = [v2.dg_bottomAnchor equalTo:v4.dg_topAnchor constant:-20];
    NSLayoutConstraint *lc7 = [v2.dg_trailingAnchor equalTo:self.view.dg_trailingAnchor constant:-20];
    
    NSLayoutConstraint *lc8 = [v3.dg_leadingAnchor equalTo:self.view.dg_leadingAnchor constant:20];
    NSLayoutConstraint *lc9 = [v3.dg_bottomAnchor equalTo:self.view.dg_bottomAnchor constant:-20];
    NSLayoutConstraint *lc10 = [v3.dg_trailingAnchor equalTo:v4.dg_leadingAnchor constant:-20];
    
    NSLayoutConstraint *lc11 = [v4.dg_bottomAnchor equalTo:self.view.dg_bottomAnchor constant:-20];
    NSLayoutConstraint *lc12 = [v4.dg_trailingAnchor equalTo:self.view.dg_trailingAnchor constant:-20];
    
    // constraints with width & height
    NSLayoutConstraint *lc13 = [v1.dg_widthAnchor equalTo:v2.dg_widthAnchor multiplier:0.25];
    NSLayoutConstraint *lc14 = [v1.dg_heightAnchor equalTo:v3.dg_heightAnchor];
    NSLayoutConstraint *lc15 = [v2.dg_heightAnchor equalTo:v4.dg_heightAnchor];
    NSLayoutConstraint *lc16 = [v3.dg_widthAnchor equalTo:v4.dg_widthAnchor];
    
    UIView *v5 = [UIView new];
    v5.backgroundColor = [UIColor colorWithWhite:0 alpha:0.4f];
    v5.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:v5];
    
    NSLayoutConstraint *lc51 = [v5.dg_topAnchor equalTo:self.dg_topLayoutGuideBottomAnchor constant:10];
    NSLayoutConstraint *lc52 = [v5.dg_leadingAnchor equalTo:self.view.dg_leadingMarginAnchor
                                ];
    NSLayoutConstraint *lc53 = [v5.dg_bottomAnchor equalTo:self.dg_bottomLayoutGuideTopAnchor constant:-10];
    NSLayoutConstraint *lc54 = [v5.dg_trailingAnchor equalTo:self.view.dg_trailingMarginAnchor];
    
#if __ENVIRONMENT_IPHONE_OS_VERSION_MIN_REQUIRED__ >= 80000
    lc1.active = lc2.active = lc3.active = lc4.active =
    lc5.active = lc6.active = lc7.active = lc8.active =
    lc9.active = lc10.active = lc11.active = lc12.active =
    lc13.active = lc14.active = lc15.active = lc16.active = YES;
    
    lc51.active = lc52.active = lc53.active = lc54.active = YES;
#elif __ENVIRONMENT_IPHONE_OS_VERSION_MIN_REQUIRED__ >= 60000
    [self.view addConstraints:@[
                                lc1, lc2, lc3, lc4,
                                lc5, lc6, lc7, lc8,
                                lc9, lc10, lc11, lc12,
                                lc13, lc14, lc15, lc16
                                ]];
    
    [self.view addConstraints:@[
                                lc51, lc52, lc53, lc54
                                ]];
#endif
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
