//
//  DGLayoutAnchor.m
//  DGLayoutAnchor
//
//  Created by Daniate on 16/4/16.
//  Copyright © 2016年 Daniate. All rights reserved.
//

#import "DGLayoutAnchor.h"
#import <objc/runtime.h>

#if __ENVIRONMENT_IPHONE_OS_VERSION_MIN_REQUIRED__ < 90000

const void *dg_layout_anchor_item = &dg_layout_anchor_item;// Associate a View or an id<UILayoutSupport>
const void *dg_layout_anchor_attribute = &dg_layout_anchor_attribute;// Associate a Number of NSLayoutAttribute

@implementation DGLayoutAnchor
#pragma - mark private
- (NSLayoutConstraint *)_anchor:(DGLayoutAnchor *)anchor relatedBy:(NSLayoutRelation)relation constant:(CGFloat)c {
    UIView *v1 = objc_getAssociatedObject(self, dg_layout_anchor_item);
    UIView *v2 = objc_getAssociatedObject(anchor, dg_layout_anchor_item);
    
    NSLayoutAttribute attr1 = [objc_getAssociatedObject(self, dg_layout_anchor_attribute) integerValue];
    NSLayoutAttribute attr2 = [objc_getAssociatedObject(anchor, dg_layout_anchor_attribute) integerValue];
    
    return [NSLayoutConstraint constraintWithItem:v1 attribute:attr1 relatedBy:relation toItem:v2 attribute:attr2 multiplier:1 constant:c];
}
#pragma - mark public
/* These methods return an inactive constraint of the form thisAnchor = otherAnchor.
 */
- (NSLayoutConstraint *)equalTo:(DGLayoutAnchor *)anchor {
    return [self equalTo:anchor constant:0];
}
- (NSLayoutConstraint *)greaterThanOrEqualTo:(DGLayoutAnchor *)anchor {
    return [self greaterThanOrEqualTo:anchor constant:0];
}
- (NSLayoutConstraint *)lessThanOrEqualTo:(DGLayoutAnchor *)anchor {
    return [self lessThanOrEqualTo:anchor constant:0];
}

/* These methods return an inactive constraint of the form thisAnchor = otherAnchor + constant.
 */
- (NSLayoutConstraint *)equalTo:(DGLayoutAnchor *)anchor constant:(CGFloat)c {
    return [self _anchor:anchor relatedBy:NSLayoutRelationEqual constant:c];
}
- (NSLayoutConstraint *)greaterThanOrEqualTo:(DGLayoutAnchor *)anchor constant:(CGFloat)c {
    return [self _anchor:anchor relatedBy:NSLayoutRelationGreaterThanOrEqual constant:c];
}
- (NSLayoutConstraint *)lessThanOrEqualTo:(DGLayoutAnchor *)anchor constant:(CGFloat)c {
    return [self _anchor:anchor relatedBy:NSLayoutRelationLessThanOrEqual constant:c];
}

@end

@implementation DGLayoutXAxisAnchor

@end

@implementation DGLayoutYAxisAnchor

@end

@implementation DGLayoutGuideAnchor

@end

@implementation DGLayoutDimension
#pragma - mark private
- (NSLayoutConstraint *)_relatedBy:(NSLayoutRelation)relation constant:(CGFloat)c {
    UIView *v1 = objc_getAssociatedObject(self, dg_layout_anchor_item);
    
    NSLayoutAttribute attr = [objc_getAssociatedObject(self, dg_layout_anchor_attribute) integerValue];
    
    return [NSLayoutConstraint constraintWithItem:v1 attribute:attr relatedBy:relation toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:0 constant:c];
}
- (NSLayoutConstraint *)_anchor:(DGLayoutDimension *)anchor relatedBy:(NSLayoutRelation)relation multiplier:(CGFloat)m constant:(CGFloat)c {
    UIView *v1 = objc_getAssociatedObject(self, dg_layout_anchor_item);
    UIView *v2 = objc_getAssociatedObject(anchor, dg_layout_anchor_item);
	
    NSLayoutAttribute attr1 = [objc_getAssociatedObject(self, dg_layout_anchor_attribute) integerValue];
    NSLayoutAttribute attr2 = [objc_getAssociatedObject(anchor, dg_layout_anchor_attribute) integerValue];
    
    return [NSLayoutConstraint constraintWithItem:v1 attribute:attr1 relatedBy:relation toItem:v2 attribute:attr2 multiplier:m constant:c];
}
#pragma - mark public
/* These methods return an inactive constraint of the form
 thisVariable = constant.
 */
- (NSLayoutConstraint *)equalToConstant:(CGFloat)c {
    return [self _relatedBy:NSLayoutRelationEqual constant:c];
}
- (NSLayoutConstraint *)greaterThanOrEqualToConstant:(CGFloat)c {
    return [self _relatedBy:NSLayoutRelationGreaterThanOrEqual constant:c];
}
- (NSLayoutConstraint *)lessThanOrEqualToConstant:(CGFloat)c {
    return [self _relatedBy:NSLayoutRelationLessThanOrEqual constant:c];
}

/* These methods return an inactive constraint of the form
 thisAnchor = otherAnchor * multiplier.
 */
- (NSLayoutConstraint *)equalTo:(DGLayoutDimension *)anchor multiplier:(CGFloat)m {
    return [self equalTo:anchor multiplier:m constant:0];
}
- (NSLayoutConstraint *)greaterThanOrEqualTo:(DGLayoutDimension *)anchor multiplier:(CGFloat)m {
    return [self greaterThanOrEqualTo:anchor multiplier:m constant:0];
}
- (NSLayoutConstraint *)lessThanOrEqualTo:(DGLayoutDimension *)anchor multiplier:(CGFloat)m {
    return [self lessThanOrEqualTo:anchor multiplier:m constant:0];
}

/* These methods return an inactive constraint of the form
 thisAnchor = otherAnchor * multiplier + constant.
 */
- (NSLayoutConstraint *)equalTo:(DGLayoutDimension *)anchor multiplier:(CGFloat)m constant:(CGFloat)c {
    return [self _anchor:anchor relatedBy:NSLayoutRelationEqual multiplier:m constant:c];
}
- (NSLayoutConstraint *)greaterThanOrEqualTo:(DGLayoutDimension *)anchor multiplier:(CGFloat)m constant:(CGFloat)c {
    return [self _anchor:anchor relatedBy:NSLayoutRelationGreaterThanOrEqual multiplier:m constant:c];
}
- (NSLayoutConstraint *)lessThanOrEqualTo:(DGLayoutDimension *)anchor multiplier:(CGFloat)m constant:(CGFloat)c {
    return [self _anchor:anchor relatedBy:NSLayoutRelationLessThanOrEqual multiplier:m constant:c];
}

@end
#endif
