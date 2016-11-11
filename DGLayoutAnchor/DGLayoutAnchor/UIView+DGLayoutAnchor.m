//
//  UIView+DGLayoutAnchor.m
//  DGLayoutAnchor
//
//  Created by Daniate on 16/4/16.
//  Copyright © 2016年 Daniate. All rights reserved.
//

#import "UIView+DGLayoutAnchor.h"
#import "DGLayoutAnchor.h"
#import <objc/runtime.h>

UIKIT_EXTERN const void *dg_layout_anchor_item;
UIKIT_EXTERN const void *dg_layout_anchor_attribute;

#define DGLayoutAnchorForView(__CLASS_NAME__, __LAYOUT_ATTRIBUTE__) (__CLASS_NAME__ *)[self _anchorWithClass:[__CLASS_NAME__ class] key:_cmd attribute:__LAYOUT_ATTRIBUTE__]

@implementation UIView (DGLayoutAnchor)

#pragma mark - private
- (DGLayoutAnchor *)_anchorWithClass:(Class)clazz key:(const void *)key attribute:(NSLayoutAttribute)attr {
    NSAssert((clazz == [DGLayoutXAxisAnchor class] ||
              clazz == [DGLayoutYAxisAnchor class] ||
              clazz == [DGLayoutDimension class]), nil);
    id anchor = objc_getAssociatedObject(self, key);
    if (!anchor) {
        anchor = [[clazz alloc] init];
        objc_setAssociatedObject(anchor, dg_layout_anchor_attribute, @(attr), OBJC_ASSOCIATION_COPY);
        objc_setAssociatedObject(anchor, dg_layout_anchor_item, self, OBJC_ASSOCIATION_ASSIGN);
        objc_setAssociatedObject(self, key, anchor, OBJC_ASSOCIATION_RETAIN);
    }
    return anchor;
}

#pragma mark - public
- (DGLayoutXAxisAnchor *)dg_leadingAnchor {
    return DGLayoutAnchorForView(DGLayoutXAxisAnchor, NSLayoutAttributeLeading);
}

- (DGLayoutXAxisAnchor *)dg_trailingAnchor {
    return DGLayoutAnchorForView(DGLayoutXAxisAnchor, NSLayoutAttributeTrailing);
}

- (DGLayoutXAxisAnchor *)dg_leftAnchor {
    return DGLayoutAnchorForView(DGLayoutXAxisAnchor, NSLayoutAttributeLeft);
}

- (DGLayoutXAxisAnchor *)dg_rightAnchor {
    return DGLayoutAnchorForView(DGLayoutXAxisAnchor, NSLayoutAttributeRight);
}

- (DGLayoutYAxisAnchor *)dg_topAnchor {
    return DGLayoutAnchorForView(DGLayoutYAxisAnchor, NSLayoutAttributeTop);
}

- (DGLayoutYAxisAnchor *)dg_bottomAnchor {
    return DGLayoutAnchorForView(DGLayoutYAxisAnchor, NSLayoutAttributeBottom);
}

- (DGLayoutDimension *)dg_widthAnchor {
    return DGLayoutAnchorForView(DGLayoutDimension, NSLayoutAttributeWidth);
}

- (DGLayoutDimension *)dg_heightAnchor {
    return DGLayoutAnchorForView(DGLayoutDimension, NSLayoutAttributeHeight);
}

- (DGLayoutXAxisAnchor *)dg_centerXAnchor {
    return DGLayoutAnchorForView(DGLayoutXAxisAnchor, NSLayoutAttributeCenterX);
}

- (DGLayoutYAxisAnchor *)dg_centerYAnchor {
    return DGLayoutAnchorForView(DGLayoutYAxisAnchor, NSLayoutAttributeCenterY);
}

- (DGLayoutYAxisAnchor *)dg_firstBaselineAnchor {
    return DGLayoutAnchorForView(DGLayoutYAxisAnchor, NSLayoutAttributeFirstBaseline);
}

- (DGLayoutYAxisAnchor *)dg_lastBaselineAnchor {
    // NSLayoutAttributeLastBaseline = NSLayoutAttributeBaseline, but NSLayoutAttributeLastBaseline is available in iOS 8.0 and later.
    return DGLayoutAnchorForView(DGLayoutYAxisAnchor, NSLayoutAttributeBaseline);
}

- (DGLayoutYAxisAnchor *)dg_baselineAnchor {
    return self.dg_lastBaselineAnchor;
}

- (DGLayoutXAxisAnchor *)dg_leftMarginAnchor {
    return DGLayoutAnchorForView(DGLayoutXAxisAnchor, NSLayoutAttributeLeftMargin);
}

- (DGLayoutXAxisAnchor *)dg_rightMarginAnchor {
    return DGLayoutAnchorForView(DGLayoutXAxisAnchor, NSLayoutAttributeRightMargin);
}

- (DGLayoutYAxisAnchor *)dg_topMarginAnchor {
    return DGLayoutAnchorForView(DGLayoutYAxisAnchor, NSLayoutAttributeTopMargin);
}

- (DGLayoutYAxisAnchor *)dg_bottomMarginAnchor {
    return DGLayoutAnchorForView(DGLayoutYAxisAnchor, NSLayoutAttributeBottomMargin);
}

- (DGLayoutXAxisAnchor *)dg_leadingMarginAnchor {
    return DGLayoutAnchorForView(DGLayoutXAxisAnchor, NSLayoutAttributeLeadingMargin);
}

- (DGLayoutXAxisAnchor *)dg_trailingMarginAnchor {
    return DGLayoutAnchorForView(DGLayoutXAxisAnchor, NSLayoutAttributeTrailingMargin);
}

- (DGLayoutXAxisAnchor *)dg_centerXWithinMarginsAnchor {
    return DGLayoutAnchorForView(DGLayoutXAxisAnchor, NSLayoutAttributeCenterXWithinMargins);
}

- (DGLayoutYAxisAnchor *)dg_centerYWithinMarginsAnchor {
    return DGLayoutAnchorForView(DGLayoutYAxisAnchor, NSLayoutAttributeCenterYWithinMargins);
}

@end
