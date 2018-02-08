//
//  LGViewController.m
//  DGLayoutAnchor
//
//  Created by Daniate on 2016/11/11.
//  Copyright © 2016年 Daniate. All rights reserved.
//

#import "LGViewController.h"
#import "DGLayoutAnchor.h"

@interface LGViewController ()

@end

@implementation LGViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIView *v = [UIView new];
    v.backgroundColor = [UIColor colorWithWhite:0 alpha:0.4f];
    v.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:v];
    
    NSLayoutConstraint *lc1 = [v.dg_topAnchor equalTo:self.dg_topLayoutGuideBottomAnchor constant:10];
    NSLayoutConstraint *lc2 = [v.dg_leadingAnchor equalTo:self.view.dg_leadingMarginAnchor];
    NSLayoutConstraint *lc3 = [self.dg_bottomLayoutGuideTopAnchor equalTo:v.dg_bottomAnchor constant:10];
    NSLayoutConstraint *lc4 = [v.dg_trailingAnchor equalTo:self.view.dg_trailingMarginAnchor];
    
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
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskAll;
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
