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
    
    UIView *v5 = [UIView new];
    v5.backgroundColor = [UIColor colorWithWhite:0 alpha:0.4f];
    v5.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:v5];
    
    NSLayoutConstraint *lc51 = [v5.dg_topAnchor equalTo:self.dg_topLayoutGuideBottomAnchor constant:10];
    NSLayoutConstraint *lc52 = [v5.dg_leadingAnchor equalTo:self.view.dg_leadingMarginAnchor];
    NSLayoutConstraint *lc53 = [self.dg_bottomLayoutGuideTopAnchor equalTo:v5.dg_bottomAnchor constant:10];
    NSLayoutConstraint *lc54 = [v5.dg_trailingAnchor equalTo:self.view.dg_trailingMarginAnchor];
    
#ifdef __IPHONE_8_0
    if ([[UIDevice currentDevice].systemVersion compare:@"8.0.0" options:NSNumericSearch] != NSOrderedAscending) {
        lc51.active = lc52.active = lc53.active = lc54.active = YES;
    } else {
#endif
        [self.view addConstraints:@[
                                    lc51, lc52, lc53, lc54
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
