//
//  AnimationViewController.m
//  DGLayoutAnchor
//
//  Created by Daniate on 2016/11/11.
//  Copyright © 2016年 Daniate. All rights reserved.
//

#import "AnimationViewController.h"
#import "DGLayoutAnchor.h"

@interface AnimationViewController ()

@end

@implementation AnimationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIView *v = [[UIView alloc] init];
    v.translatesAutoresizingMaskIntoConstraints = NO;
    v.backgroundColor = [UIColor colorWithWhite:0 alpha:0.4];
    [self.view addSubview:v];
    
    NSLayoutConstraint *lc1 = [self.view.dg_topAnchor equalTo:v.dg_topAnchor constant:-10];
    NSLayoutConstraint *lc2 = [self.view.dg_leftAnchor equalTo:v.dg_leftAnchor constant:-10];
    NSLayoutConstraint *lc3 = [self.view.dg_bottomAnchor equalTo:v.dg_bottomAnchor constant:10];
    NSLayoutConstraint *lc4 = [self.view.dg_rightAnchor equalTo:v.dg_rightAnchor constant:10];
    
#ifdef __IPHONE_8_0
    if ([[UIDevice currentDevice].systemVersion compare:@"8.0.0" options:NSNumericSearch] != NSOrderedAscending) {
        lc1.active = lc2.active = lc3.active = lc4.active = YES;
    } else {
#endif
        [self.view addConstraints:@[
                                    lc1, lc2, lc3, lc4
                                    ]];
#ifdef __IPHONE_8_0
    }
#endif
    
    [self.view layoutIfNeeded];
    
    [UIView animateWithDuration:1 delay:0 options:UIViewAnimationOptionRepeat|UIViewAnimationOptionAutoreverse|UIViewAnimationOptionCurveEaseInOut animations:^{
        lc3.constant = 100;
        lc4.constant = 100;
        [self.view layoutIfNeeded];
    } completion:NULL];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotate {
    return NO;
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
