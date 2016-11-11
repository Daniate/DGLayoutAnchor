//
//  DGLayoutAnchor.h
//  DGLayoutAnchor
//
//  Created by Daniate on 16/4/16.
//  Copyright © 2016年 Daniate. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIView+DGLayoutAnchor.h"
#import "UIViewController+DGLayoutAnchor.h"

NS_ASSUME_NONNULL_BEGIN

NS_CLASS_AVAILABLE_IOS(6_0)
@interface DGLayoutAnchor<AnchorType> : NSObject
/* These methods return an inactive constraint of the form thisAnchor = otherAnchor.
 */
- (NSLayoutConstraint *)equalTo:(DGLayoutAnchor<AnchorType> *)anchor;
- (NSLayoutConstraint *)greaterThanOrEqualTo:(DGLayoutAnchor<AnchorType> *)anchor;
- (NSLayoutConstraint *)lessThanOrEqualTo:(DGLayoutAnchor<AnchorType> *)anchor;

/* These methods return an inactive constraint of the form thisAnchor = otherAnchor + constant.
 */
- (NSLayoutConstraint *)equalTo:(DGLayoutAnchor<AnchorType> *)anchor constant:(CGFloat)c;
- (NSLayoutConstraint *)greaterThanOrEqualTo:(DGLayoutAnchor<AnchorType> *)anchor constant:(CGFloat)c;
- (NSLayoutConstraint *)lessThanOrEqualTo:(DGLayoutAnchor<AnchorType> *)anchor constant:(CGFloat)c;
@end

/* Axis-specific subclasses for location anchors: top/bottom, leading/trailing, baseline, etc.
 */
@class DGLayoutXAxisAnchor, DGLayoutYAxisAnchor;
@interface DGLayoutXAxisAnchor : DGLayoutAnchor<DGLayoutXAxisAnchor *>
@end

@interface DGLayoutYAxisAnchor : DGLayoutAnchor<DGLayoutYAxisAnchor *>
@end

/* For UIViewController's topLayoutGuide and bottomLayoutGuide */
@interface DGLayoutGuideAnchor : DGLayoutYAxisAnchor
@end

/* This layout anchor subclass is used for sizes (width & height).
 */
@class DGLayoutDimension;
@interface DGLayoutDimension : DGLayoutAnchor<DGLayoutDimension *>

/* These methods return an inactive constraint of the form
 thisVariable = constant.
 */
- (NSLayoutConstraint *)equalToConstant:(CGFloat)c;
- (NSLayoutConstraint *)greaterThanOrEqualToConstant:(CGFloat)c;
- (NSLayoutConstraint *)lessThanOrEqualToConstant:(CGFloat)c;

/* These methods return an inactive constraint of the form
 thisAnchor = otherAnchor * multiplier.
 */
- (NSLayoutConstraint *)equalTo:(DGLayoutDimension *)anchor multiplier:(CGFloat)m;
- (NSLayoutConstraint *)greaterThanOrEqualTo:(DGLayoutDimension *)anchor multiplier:(CGFloat)m;
- (NSLayoutConstraint *)lessThanOrEqualTo:(DGLayoutDimension *)anchor multiplier:(CGFloat)m;

/* These methods return an inactive constraint of the form
 thisAnchor = otherAnchor * multiplier + constant.
 */
- (NSLayoutConstraint *)equalTo:(DGLayoutDimension *)anchor multiplier:(CGFloat)m constant:(CGFloat)c;
- (NSLayoutConstraint *)greaterThanOrEqualTo:(DGLayoutDimension *)anchor multiplier:(CGFloat)m constant:(CGFloat)c;
- (NSLayoutConstraint *)lessThanOrEqualTo:(DGLayoutDimension *)anchor multiplier:(CGFloat)m constant:(CGFloat)c;
@end

NS_ASSUME_NONNULL_END

//#endif
