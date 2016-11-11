//
//  UIViewController+DGLayoutAnchor.h
//  DGLayoutAnchor
//
//  Created by Daniate on 2016/11/10.
//  Copyright © 2016年 Daniate. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DGLayoutAnchor.h"

NS_ASSUME_NONNULL_BEGIN

@interface UIViewController (DGLayoutAnchor)
@property (readonly, strong) DGLayoutGuideAnchor *dg_topLayoutGuideTopAnchor;
@property (readonly, strong) DGLayoutGuideAnchor *dg_topLayoutGuideBottomAnchor;
@property (readonly, strong) DGLayoutGuideAnchor *dg_bottomLayoutGuideTopAnchor;
@property (readonly, strong) DGLayoutGuideAnchor *dg_bottomLayoutGuideBottomAnchor;
@end

NS_ASSUME_NONNULL_END
