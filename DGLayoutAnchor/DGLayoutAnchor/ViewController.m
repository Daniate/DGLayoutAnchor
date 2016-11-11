//
//  ViewController.m
//  DGLayoutAnchor
//
//  Created by Daniate on 16/4/16.
//  Copyright © 2016年 Daniate. All rights reserved.
//

#import "ViewController.h"
#import "TLBRViewController.h"
#import "TLBRMarginViewController.h"
#import "LGViewController.h"
#import "AnimationViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    UIViewController *vc = nil;
    switch (indexPath.row) {
        case 0: {
            vc = [TLBRViewController new];
            break;
        }
        case 1: {
            vc = [TLBRMarginViewController new];
            break;
        }
        case 2: {
            vc = [LGViewController new];
            break;
        }
        case 3: {
            vc = [AnimationViewController new];
            break;
        }
        default:
            break;
    }
    if (vc) {
        [self.navigationController pushViewController:vc animated:YES];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskAll;
}

@end
