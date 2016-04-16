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
UIKIT_EXTERN const char *dg_layout_item;
UIKIT_EXTERN const char *dg_layout_attribute;
#endif

@implementation UIView (DGLayoutAnchor)
- (DGLayoutXAxisAnchor *)dg_leadingAnchor {
#if __ENVIRONMENT_IPHONE_OS_VERSION_MIN_REQUIRED__ < 90000
    DGLayoutXAxisAnchor *dg_leadingAnchor = objc_getAssociatedObject(self, _cmd);
    if (!dg_leadingAnchor) {
        dg_leadingAnchor = [DGLayoutXAxisAnchor new];
        objc_setAssociatedObject(dg_leadingAnchor, dg_layout_attribute, @(NSLayoutAttributeLeading), OBJC_ASSOCIATION_COPY);
        objc_setAssociatedObject(dg_leadingAnchor, dg_layout_item, self, OBJC_ASSOCIATION_ASSIGN);
        objc_setAssociatedObject(self, _cmd, dg_leadingAnchor, OBJC_ASSOCIATION_RETAIN);
    }
    return dg_leadingAnchor;
#else
    return self.leadingAnchor;
#endif
}
- (DGLayoutXAxisAnchor *)dg_trailingAnchor {
#if __ENVIRONMENT_IPHONE_OS_VERSION_MIN_REQUIRED__ < 90000
    DGLayoutXAxisAnchor *dg_trailingAnchor = objc_getAssociatedObject(self, _cmd);
    if (!dg_trailingAnchor) {
        dg_trailingAnchor = [DGLayoutXAxisAnchor new];
        objc_setAssociatedObject(dg_trailingAnchor, dg_layout_attribute, @(NSLayoutAttributeTrailing), OBJC_ASSOCIATION_COPY);
        objc_setAssociatedObject(dg_trailingAnchor, dg_layout_item, self, OBJC_ASSOCIATION_ASSIGN);
        objc_setAssociatedObject(self, _cmd, dg_trailingAnchor, OBJC_ASSOCIATION_RETAIN);
    }
    return dg_trailingAnchor;
#else
    return self.trailingAnchor;
#endif
}
- (DGLayoutXAxisAnchor *)dg_leftAnchor{
#if __ENVIRONMENT_IPHONE_OS_VERSION_MIN_REQUIRED__ < 90000
    DGLayoutXAxisAnchor *dg_leftAnchor = objc_getAssociatedObject(self, _cmd);
    if (!dg_leftAnchor) {
        dg_leftAnchor = [DGLayoutXAxisAnchor new];
        objc_setAssociatedObject(dg_leftAnchor, dg_layout_attribute, @(NSLayoutAttributeLeft), OBJC_ASSOCIATION_COPY);
        objc_setAssociatedObject(dg_leftAnchor, dg_layout_item, self, OBJC_ASSOCIATION_ASSIGN);
        objc_setAssociatedObject(self, _cmd, dg_leftAnchor, OBJC_ASSOCIATION_RETAIN);
    }
    return dg_leftAnchor;
#else
    return self.leftAnchor;
#endif
}
- (DGLayoutXAxisAnchor *)dg_rightAnchor{
#if __ENVIRONMENT_IPHONE_OS_VERSION_MIN_REQUIRED__ < 90000
    DGLayoutXAxisAnchor *dg_rightAnchor = objc_getAssociatedObject(self, _cmd);
    if (!dg_rightAnchor) {
        dg_rightAnchor = [DGLayoutXAxisAnchor new];
        objc_setAssociatedObject(dg_rightAnchor, dg_layout_attribute, @(NSLayoutAttributeRight), OBJC_ASSOCIATION_COPY);
        objc_setAssociatedObject(dg_rightAnchor, dg_layout_item, self, OBJC_ASSOCIATION_ASSIGN);
        objc_setAssociatedObject(self, _cmd, dg_rightAnchor, OBJC_ASSOCIATION_RETAIN);
    }
    return dg_rightAnchor;
#else
    return self.rightAnchor;
#endif
}
- (DGLayoutYAxisAnchor *)dg_topAnchor{
#if __ENVIRONMENT_IPHONE_OS_VERSION_MIN_REQUIRED__ < 90000
    DGLayoutYAxisAnchor *dg_topAnchor = objc_getAssociatedObject(self, _cmd);
    if (!dg_topAnchor) {
        dg_topAnchor = [DGLayoutYAxisAnchor new];
        objc_setAssociatedObject(dg_topAnchor, dg_layout_attribute, @(NSLayoutAttributeTop), OBJC_ASSOCIATION_COPY);
        objc_setAssociatedObject(dg_topAnchor, dg_layout_item, self, OBJC_ASSOCIATION_ASSIGN);
        objc_setAssociatedObject(self, _cmd, dg_topAnchor, OBJC_ASSOCIATION_RETAIN);
    }
    return dg_topAnchor;
#else
    return self.topAnchor;
#endif
}
- (DGLayoutYAxisAnchor *)dg_bottomAnchor{
#if __ENVIRONMENT_IPHONE_OS_VERSION_MIN_REQUIRED__ < 90000
    DGLayoutYAxisAnchor *dg_bottomAnchor = objc_getAssociatedObject(self, _cmd);
    if (!dg_bottomAnchor) {
        dg_bottomAnchor = [DGLayoutYAxisAnchor new];
        objc_setAssociatedObject(dg_bottomAnchor, dg_layout_attribute, @(NSLayoutAttributeBottom), OBJC_ASSOCIATION_COPY);
        objc_setAssociatedObject(dg_bottomAnchor, dg_layout_item, self, OBJC_ASSOCIATION_ASSIGN);
        objc_setAssociatedObject(self, _cmd, dg_bottomAnchor, OBJC_ASSOCIATION_RETAIN);
    }
    return dg_bottomAnchor;
#else
    return self.bottomAnchor;
#endif
}
- (DGLayoutDimension *)dg_widthAnchor{
#if __ENVIRONMENT_IPHONE_OS_VERSION_MIN_REQUIRED__ < 90000
    DGLayoutDimension *dg_widthAnchor = objc_getAssociatedObject(self, _cmd);
    if (!dg_widthAnchor) {
        dg_widthAnchor = [DGLayoutDimension new];
        objc_setAssociatedObject(dg_widthAnchor, dg_layout_attribute, @(NSLayoutAttributeWidth), OBJC_ASSOCIATION_COPY);
        objc_setAssociatedObject(dg_widthAnchor, dg_layout_item, self, OBJC_ASSOCIATION_ASSIGN);
        objc_setAssociatedObject(self, _cmd, dg_widthAnchor, OBJC_ASSOCIATION_RETAIN);
    }
    return dg_widthAnchor;
#else
    return self.widthAnchor;
#endif
}
- (DGLayoutDimension *)dg_heightAnchor{
#if __ENVIRONMENT_IPHONE_OS_VERSION_MIN_REQUIRED__ < 90000
    DGLayoutDimension *dg_heightAnchor = objc_getAssociatedObject(self, _cmd);
    if (!dg_heightAnchor) {
        dg_heightAnchor = [DGLayoutDimension new];
        objc_setAssociatedObject(dg_heightAnchor, dg_layout_attribute, @(NSLayoutAttributeHeight), OBJC_ASSOCIATION_COPY);
        objc_setAssociatedObject(dg_heightAnchor, dg_layout_item, self, OBJC_ASSOCIATION_ASSIGN);
        objc_setAssociatedObject(self, _cmd, dg_heightAnchor, OBJC_ASSOCIATION_RETAIN);
    }
    return dg_heightAnchor;
#else
    return self.heightAnchor;
#endif
}
- (DGLayoutXAxisAnchor *)dg_centerXAnchor{
#if __ENVIRONMENT_IPHONE_OS_VERSION_MIN_REQUIRED__ < 90000
    DGLayoutXAxisAnchor *dg_centerXAnchor = objc_getAssociatedObject(self, _cmd);
    if (!dg_centerXAnchor) {
        dg_centerXAnchor = [DGLayoutXAxisAnchor new];
        objc_setAssociatedObject(dg_centerXAnchor, dg_layout_attribute, @(NSLayoutAttributeCenterX), OBJC_ASSOCIATION_COPY);
        objc_setAssociatedObject(dg_centerXAnchor, dg_layout_item, self, OBJC_ASSOCIATION_ASSIGN);
        objc_setAssociatedObject(self, _cmd, dg_centerXAnchor, OBJC_ASSOCIATION_RETAIN);
    }
    return dg_centerXAnchor;
#else
    return self.centerXAnchor;
#endif
}
- (DGLayoutYAxisAnchor *)dg_centerYAnchor{
#if __ENVIRONMENT_IPHONE_OS_VERSION_MIN_REQUIRED__ < 90000
    DGLayoutYAxisAnchor *dg_centerYAnchor = objc_getAssociatedObject(self, _cmd);
    if (!dg_centerYAnchor) {
        dg_centerYAnchor = [DGLayoutYAxisAnchor new];
        objc_setAssociatedObject(dg_centerYAnchor, dg_layout_attribute, @(NSLayoutAttributeCenterY), OBJC_ASSOCIATION_COPY);
        objc_setAssociatedObject(dg_centerYAnchor, dg_layout_item, self, OBJC_ASSOCIATION_ASSIGN);
        objc_setAssociatedObject(self, _cmd, dg_centerYAnchor, OBJC_ASSOCIATION_RETAIN);
    }
    return dg_centerYAnchor;
#else
    return self.centerYAnchor;
#endif
}
- (DGLayoutYAxisAnchor *)dg_firstBaselineAnchor{
#if __ENVIRONMENT_IPHONE_OS_VERSION_MIN_REQUIRED__ < 90000
    DGLayoutYAxisAnchor *dg_firstBaselineAnchor = objc_getAssociatedObject(self, _cmd);
    if (!dg_firstBaselineAnchor) {
        dg_firstBaselineAnchor = [DGLayoutYAxisAnchor new];
        objc_setAssociatedObject(dg_firstBaselineAnchor, dg_layout_attribute, @(NSLayoutAttributeFirstBaseline), OBJC_ASSOCIATION_COPY);
        objc_setAssociatedObject(dg_firstBaselineAnchor, dg_layout_item, self, OBJC_ASSOCIATION_ASSIGN);
        objc_setAssociatedObject(self, _cmd, dg_firstBaselineAnchor, OBJC_ASSOCIATION_RETAIN);
    }
    return dg_firstBaselineAnchor;
#else
    return self.firstBaselineAnchor;
#endif
}
- (DGLayoutYAxisAnchor *)dg_lastBaselineAnchor{
#if __ENVIRONMENT_IPHONE_OS_VERSION_MIN_REQUIRED__ < 90000
    DGLayoutYAxisAnchor *dg_lastBaselineAnchor = objc_getAssociatedObject(self, _cmd);
    if (!dg_lastBaselineAnchor) {
        dg_lastBaselineAnchor = [DGLayoutYAxisAnchor new];
        objc_setAssociatedObject(dg_lastBaselineAnchor, dg_layout_attribute, @(NSLayoutAttributeLastBaseline), OBJC_ASSOCIATION_COPY);
        objc_setAssociatedObject(dg_lastBaselineAnchor, dg_layout_item, self, OBJC_ASSOCIATION_ASSIGN);
        objc_setAssociatedObject(self, _cmd, dg_lastBaselineAnchor, OBJC_ASSOCIATION_RETAIN);
    }
    return dg_lastBaselineAnchor;
#else
    return self.lastBaselineAnchor;
#endif
}
@end

