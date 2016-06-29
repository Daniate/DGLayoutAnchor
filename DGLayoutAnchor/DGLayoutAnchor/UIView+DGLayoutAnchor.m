//
//  UIView+DGLayoutAnchor.m
//  DGLayoutAnchor
//
//  Created by Daniate on 16/4/16.
//  Copyright © 2016年 Daniate. All rights reserved.
//

#import "UIView+DGLayoutAnchor.h"
#import <objc/runtime.h>

#if __ENVIRONMENT_IPHONE_OS_VERSION_MIN_REQUIRED__ < 90000
UIKIT_EXTERN const char *dg_layout_anchor_item;// Associate View
UIKIT_EXTERN const char *dg_layout_anchor_attribute;// Associate Number of NSLayoutAttribute
#endif

@implementation UIView (DGLayoutAnchor)
- (DGLayoutXAxisAnchor *)dg_leadingAnchor {
#if __ENVIRONMENT_IPHONE_OS_VERSION_MIN_REQUIRED__ < 90000
    DGLayoutXAxisAnchor *anchor = objc_getAssociatedObject(self, _cmd);
    if (!anchor) {
        anchor = [[DGLayoutXAxisAnchor alloc] init];
        objc_setAssociatedObject(anchor, dg_layout_anchor_attribute, @(NSLayoutAttributeLeading), OBJC_ASSOCIATION_COPY);
        objc_setAssociatedObject(anchor, dg_layout_anchor_item, self, OBJC_ASSOCIATION_ASSIGN);
        objc_setAssociatedObject(self, _cmd, anchor, OBJC_ASSOCIATION_RETAIN);
    }
    return anchor;
#else
    return self.leadingAnchor;// see UIView (UIViewLayoutConstraintCreation)
#endif
}
- (DGLayoutXAxisAnchor *)dg_trailingAnchor {
#if __ENVIRONMENT_IPHONE_OS_VERSION_MIN_REQUIRED__ < 90000
    DGLayoutXAxisAnchor *anchor = objc_getAssociatedObject(self, _cmd);
    if (!anchor) {
        anchor = [[DGLayoutXAxisAnchor alloc] init];
        objc_setAssociatedObject(anchor, dg_layout_anchor_attribute, @(NSLayoutAttributeTrailing), OBJC_ASSOCIATION_COPY);
        objc_setAssociatedObject(anchor, dg_layout_anchor_item, self, OBJC_ASSOCIATION_ASSIGN);
        objc_setAssociatedObject(self, _cmd, anchor, OBJC_ASSOCIATION_RETAIN);
    }
    return anchor;
#else
    return self.trailingAnchor;// see UIView (UIViewLayoutConstraintCreation)
#endif
}
- (DGLayoutXAxisAnchor *)dg_leftAnchor {
#if __ENVIRONMENT_IPHONE_OS_VERSION_MIN_REQUIRED__ < 90000
    DGLayoutXAxisAnchor *anchor = objc_getAssociatedObject(self, _cmd);
    if (!anchor) {
        anchor = [[DGLayoutXAxisAnchor alloc] init];
        objc_setAssociatedObject(anchor, dg_layout_anchor_attribute, @(NSLayoutAttributeLeft), OBJC_ASSOCIATION_COPY);
        objc_setAssociatedObject(anchor, dg_layout_anchor_item, self, OBJC_ASSOCIATION_ASSIGN);
        objc_setAssociatedObject(self, _cmd, anchor, OBJC_ASSOCIATION_RETAIN);
    }
    return anchor;
#else
    return self.leftAnchor;// see UIView (UIViewLayoutConstraintCreation)
#endif
}
- (DGLayoutXAxisAnchor *)dg_rightAnchor {
#if __ENVIRONMENT_IPHONE_OS_VERSION_MIN_REQUIRED__ < 90000
    DGLayoutXAxisAnchor *anchor = objc_getAssociatedObject(self, _cmd);
    if (!anchor) {
        anchor = [[DGLayoutXAxisAnchor alloc] init];
        objc_setAssociatedObject(anchor, dg_layout_anchor_attribute, @(NSLayoutAttributeRight), OBJC_ASSOCIATION_COPY);
        objc_setAssociatedObject(anchor, dg_layout_anchor_item, self, OBJC_ASSOCIATION_ASSIGN);
        objc_setAssociatedObject(self, _cmd, anchor, OBJC_ASSOCIATION_RETAIN);
    }
    return anchor;
#else
    return self.rightAnchor;// see UIView (UIViewLayoutConstraintCreation)
#endif
}
- (DGLayoutYAxisAnchor *)dg_topAnchor {
#if __ENVIRONMENT_IPHONE_OS_VERSION_MIN_REQUIRED__ < 90000
    DGLayoutYAxisAnchor *anchor = objc_getAssociatedObject(self, _cmd);
    if (!anchor) {
        anchor = [[DGLayoutYAxisAnchor alloc] init];
        objc_setAssociatedObject(anchor, dg_layout_anchor_attribute, @(NSLayoutAttributeTop), OBJC_ASSOCIATION_COPY);
        objc_setAssociatedObject(anchor, dg_layout_anchor_item, self, OBJC_ASSOCIATION_ASSIGN);
        objc_setAssociatedObject(self, _cmd, anchor, OBJC_ASSOCIATION_RETAIN);
    }
    return anchor;
#else
    return self.topAnchor;// see UIView (UIViewLayoutConstraintCreation)
#endif
}
- (DGLayoutYAxisAnchor *)dg_bottomAnchor {
#if __ENVIRONMENT_IPHONE_OS_VERSION_MIN_REQUIRED__ < 90000
    DGLayoutYAxisAnchor *anchor = objc_getAssociatedObject(self, _cmd);
    if (!anchor) {
        anchor = [[DGLayoutYAxisAnchor alloc] init];
        objc_setAssociatedObject(anchor, dg_layout_anchor_attribute, @(NSLayoutAttributeBottom), OBJC_ASSOCIATION_COPY);
        objc_setAssociatedObject(anchor, dg_layout_anchor_item, self, OBJC_ASSOCIATION_ASSIGN);
        objc_setAssociatedObject(self, _cmd, anchor, OBJC_ASSOCIATION_RETAIN);
    }
    return anchor;
#else
    return self.bottomAnchor;// see UIView (UIViewLayoutConstraintCreation)
#endif
}
- (DGLayoutDimension *)dg_widthAnchor {
#if __ENVIRONMENT_IPHONE_OS_VERSION_MIN_REQUIRED__ < 90000
    DGLayoutDimension *anchor = objc_getAssociatedObject(self, _cmd);
    if (!anchor) {
        anchor = [[DGLayoutDimension alloc] init];
        objc_setAssociatedObject(anchor, dg_layout_anchor_attribute, @(NSLayoutAttributeWidth), OBJC_ASSOCIATION_COPY);
        objc_setAssociatedObject(anchor, dg_layout_anchor_item, self, OBJC_ASSOCIATION_ASSIGN);
        objc_setAssociatedObject(self, _cmd, anchor, OBJC_ASSOCIATION_RETAIN);
    }
    return anchor;
#else
    return self.widthAnchor;// see UIView (UIViewLayoutConstraintCreation)
#endif
}
- (DGLayoutDimension *)dg_heightAnchor {
#if __ENVIRONMENT_IPHONE_OS_VERSION_MIN_REQUIRED__ < 90000
    DGLayoutDimension *anchor = objc_getAssociatedObject(self, _cmd);
    if (!anchor) {
        anchor = [[DGLayoutDimension alloc] init];
        objc_setAssociatedObject(anchor, dg_layout_anchor_attribute, @(NSLayoutAttributeHeight), OBJC_ASSOCIATION_COPY);
        objc_setAssociatedObject(anchor, dg_layout_anchor_item, self, OBJC_ASSOCIATION_ASSIGN);
        objc_setAssociatedObject(self, _cmd, anchor, OBJC_ASSOCIATION_RETAIN);
    }
    return anchor;
#else
    return self.heightAnchor;// see UIView (UIViewLayoutConstraintCreation)
#endif
}
- (DGLayoutXAxisAnchor *)dg_centerXAnchor {
#if __ENVIRONMENT_IPHONE_OS_VERSION_MIN_REQUIRED__ < 90000
    DGLayoutXAxisAnchor *anchor = objc_getAssociatedObject(self, _cmd);
    if (!anchor) {
        anchor = [[DGLayoutXAxisAnchor alloc] init];
        objc_setAssociatedObject(anchor, dg_layout_anchor_attribute, @(NSLayoutAttributeCenterX), OBJC_ASSOCIATION_COPY);
        objc_setAssociatedObject(anchor, dg_layout_anchor_item, self, OBJC_ASSOCIATION_ASSIGN);
        objc_setAssociatedObject(self, _cmd, anchor, OBJC_ASSOCIATION_RETAIN);
    }
    return anchor;
#else
    return self.centerXAnchor;// see UIView (UIViewLayoutConstraintCreation)
#endif
}
- (DGLayoutYAxisAnchor *)dg_centerYAnchor {
#if __ENVIRONMENT_IPHONE_OS_VERSION_MIN_REQUIRED__ < 90000
    DGLayoutYAxisAnchor *anchor = objc_getAssociatedObject(self, _cmd);
    if (!anchor) {
        anchor = [[DGLayoutYAxisAnchor alloc] init];
        objc_setAssociatedObject(anchor, dg_layout_anchor_attribute, @(NSLayoutAttributeCenterY), OBJC_ASSOCIATION_COPY);
        objc_setAssociatedObject(anchor, dg_layout_anchor_item, self, OBJC_ASSOCIATION_ASSIGN);
        objc_setAssociatedObject(self, _cmd, anchor, OBJC_ASSOCIATION_RETAIN);
    }
    return anchor;
#else
    return self.centerYAnchor;// see UIView (UIViewLayoutConstraintCreation)
#endif
}
- (DGLayoutYAxisAnchor *)dg_firstBaselineAnchor {
#if __ENVIRONMENT_IPHONE_OS_VERSION_MIN_REQUIRED__ < 90000
    DGLayoutYAxisAnchor *anchor = objc_getAssociatedObject(self, _cmd);
    if (!anchor) {
        anchor = [[DGLayoutYAxisAnchor alloc] init];
        objc_setAssociatedObject(anchor, dg_layout_anchor_attribute, @(NSLayoutAttributeFirstBaseline), OBJC_ASSOCIATION_COPY);
        objc_setAssociatedObject(anchor, dg_layout_anchor_item, self, OBJC_ASSOCIATION_ASSIGN);
        objc_setAssociatedObject(self, _cmd, anchor, OBJC_ASSOCIATION_RETAIN);
    }
    return anchor;
#else
    return self.firstBaselineAnchor;// see UIView (UIViewLayoutConstraintCreation)
#endif
}
- (DGLayoutYAxisAnchor *)dg_lastBaselineAnchor {
#if __ENVIRONMENT_IPHONE_OS_VERSION_MIN_REQUIRED__ < 90000
    DGLayoutYAxisAnchor *anchor = objc_getAssociatedObject(self, _cmd);
    if (!anchor) {
        anchor = [[DGLayoutYAxisAnchor alloc] init];
		// NSLayoutAttributeLastBaseline = NSLayoutAttributeBaseline, but NSLayoutAttributeLastBaseline is available in iOS 8.0 and later.
        objc_setAssociatedObject(anchor, dg_layout_anchor_attribute, @(NSLayoutAttributeBaseline), OBJC_ASSOCIATION_COPY);
        objc_setAssociatedObject(anchor, dg_layout_anchor_item, self, OBJC_ASSOCIATION_ASSIGN);
        objc_setAssociatedObject(self, _cmd, anchor, OBJC_ASSOCIATION_RETAIN);
    }
    return anchor;
#else
    return self.lastBaselineAnchor;// see UIView (UIViewLayoutConstraintCreation)
#endif
}
@end

