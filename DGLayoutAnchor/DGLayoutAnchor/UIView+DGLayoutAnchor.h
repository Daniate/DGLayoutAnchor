//
//  UIView+DGLayoutAnchor.h
//  DGLayoutAnchor
//
//  Created by Daniate on 16/4/16.
//  Copyright © 2016年 Daniate. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DGLayoutAnchor.h"
// see UIView (UIViewLayoutConstraintCreation)
@interface UIView (DGLayoutAnchor)
@property (readonly, strong) DGLayoutXAxisAnchor *dg_leadingAnchor;
@property (readonly, strong) DGLayoutXAxisAnchor *dg_trailingAnchor;
@property (readonly, strong) DGLayoutXAxisAnchor *dg_leftAnchor;
@property (readonly, strong) DGLayoutXAxisAnchor *dg_rightAnchor;
@property (readonly, strong) DGLayoutYAxisAnchor *dg_topAnchor;
@property (readonly, strong) DGLayoutYAxisAnchor *dg_bottomAnchor;
@property (readonly, strong) DGLayoutDimension   *dg_widthAnchor;
@property (readonly, strong) DGLayoutDimension   *dg_heightAnchor;
@property (readonly, strong) DGLayoutXAxisAnchor *dg_centerXAnchor;
@property (readonly, strong) DGLayoutYAxisAnchor *dg_centerYAnchor;
@property (readonly, strong) DGLayoutYAxisAnchor *dg_firstBaselineAnchor NS_AVAILABLE_IOS(8_0);
@property (readonly, strong) DGLayoutYAxisAnchor *dg_lastBaselineAnchor;
@end
