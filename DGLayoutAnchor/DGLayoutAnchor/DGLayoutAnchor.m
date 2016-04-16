//
//  DGLayoutAnchor.m
//  DGLayoutAnchor
//
//  Created by Daniate on 16/4/16.
//  Copyright © 2016年 Daniate. All rights reserved.
//

#import "DGLayoutAnchor.h"
#import <objc/objc-runtime.h>

#if __ENVIRONMENT_IPHONE_OS_VERSION_MIN_REQUIRED__ < 90000

const char *dg_layout_item = "dg_layout_item";
const char *dg_layout_attribute = "dg_layout_attribute";

@implementation DGLayoutAnchor
#pragma - private
- (NSLayoutConstraint *)constraintWithAnchor:(DGLayoutAnchor *)anchor relatedBy:(NSLayoutRelation)relation constant:(CGFloat)c {
    UIView *v1 = objc_getAssociatedObject(self, dg_layout_item);
    UIView *v2 = objc_getAssociatedObject(anchor, dg_layout_item);
    
    NSLayoutAttribute attr1 = [objc_getAssociatedObject(self, dg_layout_attribute) integerValue];
    NSLayoutAttribute attr2 = [objc_getAssociatedObject(anchor, dg_layout_attribute) integerValue];
    
    return [NSLayoutConstraint constraintWithItem:v1 attribute:attr1 relatedBy:relation toItem:v2 attribute:attr2 multiplier:1 constant:c];
}
#pragma - public
/* These methods return an inactive constraint of the form thisAnchor = otherAnchor.
 */
- (NSLayoutConstraint *)constraintEqualToAnchor:(DGLayoutAnchor *)anchor {
    return [self constraintEqualToAnchor:anchor constant:0];
}
- (NSLayoutConstraint *)constraintGreaterThanOrEqualToAnchor:(DGLayoutAnchor *)anchor {
    return [self constraintGreaterThanOrEqualToAnchor:anchor constant:0];
}
- (NSLayoutConstraint *)constraintLessThanOrEqualToAnchor:(DGLayoutAnchor *)anchor {
    return [self constraintLessThanOrEqualToAnchor:anchor constant:0];
}

/* These methods return an inactive constraint of the form thisAnchor = otherAnchor + constant.
 */
- (NSLayoutConstraint *)constraintEqualToAnchor:(DGLayoutAnchor *)anchor constant:(CGFloat)c {
    return [self constraintWithAnchor:anchor relatedBy:NSLayoutRelationEqual constant:c];
}
- (NSLayoutConstraint *)constraintGreaterThanOrEqualToAnchor:(DGLayoutAnchor *)anchor constant:(CGFloat)c {
    return [self constraintWithAnchor:anchor relatedBy:NSLayoutRelationGreaterThanOrEqual constant:c];
}
- (NSLayoutConstraint *)constraintLessThanOrEqualToAnchor:(DGLayoutAnchor *)anchor constant:(CGFloat)c {
    return [self constraintWithAnchor:anchor relatedBy:NSLayoutRelationLessThanOrEqual constant:c];
}

@end

@implementation DGLayoutXAxisAnchor

@end

@implementation DGLayoutYAxisAnchor

@end

@implementation DGLayoutDimension
#pragma - private
- (NSLayoutConstraint *)constraintRelatedBy:(NSLayoutRelation)relation constant:(CGFloat)c {
    UIView *v1 = objc_getAssociatedObject(self, dg_layout_item);
    
    NSLayoutAttribute attr1 = [objc_getAssociatedObject(self, dg_layout_attribute) integerValue];
    
    return [NSLayoutConstraint constraintWithItem:v1 attribute:attr1 relatedBy:relation toItem:nil attribute:attr1 multiplier:0 constant:c];
}
- (NSLayoutConstraint *)constraintWithAnchor:(DGLayoutDimension *)anchor relatedBy:(NSLayoutRelation)relation multiplier:(CGFloat)m constant:(CGFloat)c {
    UIView *v1 = objc_getAssociatedObject(self, dg_layout_item);
    UIView *v2 = objc_getAssociatedObject(anchor, dg_layout_item);
    
    NSLayoutAttribute attr1 = [objc_getAssociatedObject(self, dg_layout_attribute) integerValue];
    NSLayoutAttribute attr2 = [objc_getAssociatedObject(anchor, dg_layout_attribute) integerValue];
    
    return [NSLayoutConstraint constraintWithItem:v1 attribute:attr1 relatedBy:relation toItem:v2 attribute:attr2 multiplier:m constant:c];
}
#pragma - public
/* These methods return an inactive constraint of the form
 thisVariable = constant.
 */
- (NSLayoutConstraint *)constraintEqualToConstant:(CGFloat)c {
    return [self constraintRelatedBy:NSLayoutRelationEqual constant:c];
}
- (NSLayoutConstraint *)constraintGreaterThanOrEqualToConstant:(CGFloat)c {
    return [self constraintRelatedBy:NSLayoutRelationGreaterThanOrEqual constant:c];
}
- (NSLayoutConstraint *)constraintLessThanOrEqualToConstant:(CGFloat)c {
    return [self constraintRelatedBy:NSLayoutRelationLessThanOrEqual constant:c];
}

/* These methods return an inactive constraint of the form
 thisAnchor = otherAnchor * multiplier.
 */
- (NSLayoutConstraint *)constraintEqualToAnchor:(DGLayoutDimension *)anchor multiplier:(CGFloat)m {
    return [self constraintEqualToAnchor:anchor multiplier:m constant:0];
}
- (NSLayoutConstraint *)constraintGreaterThanOrEqualToAnchor:(DGLayoutDimension *)anchor multiplier:(CGFloat)m {
    return [self constraintGreaterThanOrEqualToAnchor:anchor multiplier:m constant:0];
}
- (NSLayoutConstraint *)constraintLessThanOrEqualToAnchor:(DGLayoutDimension *)anchor multiplier:(CGFloat)m {
    return [self constraintLessThanOrEqualToAnchor:anchor multiplier:m constant:0];
}

/* These methods return an inactive constraint of the form
 thisAnchor = otherAnchor * multiplier + constant.
 */
- (NSLayoutConstraint *)constraintEqualToAnchor:(DGLayoutDimension *)anchor multiplier:(CGFloat)m constant:(CGFloat)c {
    return [self constraintWithAnchor:anchor relatedBy:NSLayoutRelationEqual multiplier:m constant:c];
}
- (NSLayoutConstraint *)constraintGreaterThanOrEqualToAnchor:(DGLayoutDimension *)anchor multiplier:(CGFloat)m constant:(CGFloat)c {
    return [self constraintWithAnchor:anchor relatedBy:NSLayoutRelationGreaterThanOrEqual multiplier:m constant:c];
}
- (NSLayoutConstraint *)constraintLessThanOrEqualToAnchor:(DGLayoutDimension *)anchor multiplier:(CGFloat)m constant:(CGFloat)c {
    return [self constraintWithAnchor:anchor relatedBy:NSLayoutRelationLessThanOrEqual multiplier:m constant:c];
}

@end
#endif