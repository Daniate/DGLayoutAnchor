//
//  UIViewController+DGLayoutAnchor.m
//  DGLayoutAnchor
//
//  Created by Daniate on 2016/11/10.
//  Copyright © 2016年 Daniate. All rights reserved.
//

#import "UIViewController+DGLayoutAnchor.h"
#import <objc/runtime.h>

UIKIT_EXTERN const void *dg_layout_anchor_item;
UIKIT_EXTERN const void *dg_layout_anchor_attribute;

#define DGLayoutAnchorForVC(__GUIDE__, __LAYOUT_ATTRIBUTE__) [self _anchorWithLayoutGuide:__GUIDE__ key:_cmd attribute:__LAYOUT_ATTRIBUTE__]

@implementation UIViewController (DGLayoutAnchor)

#pragma mark - private
- (DGLayoutGuideAnchor *)_anchorWithLayoutGuide:(id<UILayoutSupport>)guide key:(const void *)key attribute:(NSLayoutAttribute)attr {
    DGLayoutGuideAnchor *anchor = objc_getAssociatedObject(self, key);
    if (!anchor) {
        anchor = [[DGLayoutGuideAnchor alloc] init];
        objc_setAssociatedObject(anchor, dg_layout_anchor_attribute, @(attr), OBJC_ASSOCIATION_COPY);
        objc_setAssociatedObject(anchor, dg_layout_anchor_item, guide, OBJC_ASSOCIATION_ASSIGN);
        objc_setAssociatedObject(self, key, anchor, OBJC_ASSOCIATION_RETAIN);
    }
    return anchor;
}

#pragma mark - public
- (DGLayoutGuideAnchor *)dg_topLayoutGuideTopAnchor {
    return DGLayoutAnchorForVC(self.topLayoutGuide, NSLayoutAttributeTop);
}

- (DGLayoutGuideAnchor *)dg_topLayoutGuideBottomAnchor {
    return DGLayoutAnchorForVC(self.topLayoutGuide, NSLayoutAttributeBottom);
}

- (DGLayoutGuideAnchor *)dg_bottomLayoutGuideTopAnchor {
    return DGLayoutAnchorForVC(self.bottomLayoutGuide, NSLayoutAttributeTop);
}

- (DGLayoutGuideAnchor *)dg_bottomLayoutGuideBottomAnchor {
    return DGLayoutAnchorForVC(self.bottomLayoutGuide, NSLayoutAttributeBottom);
}

@end
