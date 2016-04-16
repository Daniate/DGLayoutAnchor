//
//  ViewController.m
//  DGLayoutAnchor
//
//  Created by Daniate on 16/4/16.
//  Copyright © 2016年 Daniate. All rights reserved.
//

#import "ViewController.h"
#import "UIView+DGLayoutAnchor.h"

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
    [v1.dg_topAnchor constraintEqualToAnchor:self.view.dg_topAnchor constant:20].active = YES;
    [v1.dg_leadingAnchor constraintEqualToAnchor:self.view.dg_leadingAnchor constant:20].active = YES;
    [v1.dg_bottomAnchor constraintEqualToAnchor:v3.dg_topAnchor constant:-20].active = YES;
    
    [v2.dg_topAnchor constraintEqualToAnchor:v1.dg_topAnchor].active = YES;
    [v2.dg_leadingAnchor constraintEqualToAnchor:v1.dg_trailingAnchor constant:20].active = YES;
    [v2.dg_bottomAnchor constraintEqualToAnchor:v4.dg_topAnchor constant:-20].active = YES;
    [v2.dg_trailingAnchor constraintEqualToAnchor:self.view.dg_trailingAnchor constant:-20].active = YES;
    
    [v3.dg_leadingAnchor constraintEqualToAnchor:self.view.dg_leadingAnchor constant:20].active = YES;
    [v3.dg_bottomAnchor constraintEqualToAnchor:self.view.dg_bottomAnchor constant:-20].active = YES;
    [v3.dg_trailingAnchor constraintEqualToAnchor:v4.dg_leadingAnchor constant:-20].active = YES;

    [v4.dg_bottomAnchor constraintEqualToAnchor:self.view.dg_bottomAnchor constant:-20].active = YES;
    [v4.dg_trailingAnchor constraintEqualToAnchor:self.view.dg_trailingAnchor constant:-20].active = YES;
    
    // constraints with width & height
    [v1.dg_widthAnchor constraintEqualToAnchor:v2.dg_widthAnchor multiplier:0.25].active = YES;
    [v1.dg_heightAnchor constraintEqualToAnchor:v3.dg_heightAnchor].active = YES;
    [v2.dg_heightAnchor constraintEqualToAnchor:v4.dg_heightAnchor].active = YES;
    [v3.dg_widthAnchor constraintEqualToAnchor:v4.dg_widthAnchor].active = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
