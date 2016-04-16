//
//  DGLayoutAnchor.h
//  DGLayoutAnchor
//
//  Created by Daniate on 16/4/16.
//  Copyright © 2016年 Daniate. All rights reserved.
//

#import <UIKit/UIKit.h>

#if __ENVIRONMENT_IPHONE_OS_VERSION_MIN_REQUIRED__ >= 90000

#define DGLayoutAnchor NSLayoutAnchor
#define DGLayoutXAxisAnchor NSLayoutXAxisAnchor
#define DGLayoutYAxisAnchor NSLayoutYAxisAnchor
#define DGLayoutDimension NSLayoutDimension

#else

@interface DGLayoutAnchor<AnchorType> : NSObject
/* These methods return an inactive constraint of the form thisAnchor = otherAnchor.
 */
- (NSLayoutConstraint *)constraintEqualToAnchor:(DGLayoutAnchor<AnchorType> *)anchor;
- (NSLayoutConstraint *)constraintGreaterThanOrEqualToAnchor:(DGLayoutAnchor<AnchorType> *)anchor;
- (NSLayoutConstraint *)constraintLessThanOrEqualToAnchor:(DGLayoutAnchor<AnchorType> *)anchor;

/* These methods return an inactive constraint of the form thisAnchor = otherAnchor + constant.
 */
- (NSLayoutConstraint *)constraintEqualToAnchor:(DGLayoutAnchor<AnchorType> *)anchor constant:(CGFloat)c;
- (NSLayoutConstraint *)constraintGreaterThanOrEqualToAnchor:(DGLayoutAnchor<AnchorType> *)anchor constant:(CGFloat)c;
- (NSLayoutConstraint *)constraintLessThanOrEqualToAnchor:(DGLayoutAnchor<AnchorType> *)anchor constant:(CGFloat)c;
@end

/* Axis-specific subclasses for location anchors: top/bottom, leading/trailing, baseline, etc.
 */
@class DGLayoutXAxisAnchor, DGLayoutYAxisAnchor;
@interface DGLayoutXAxisAnchor : DGLayoutAnchor<DGLayoutXAxisAnchor *>
@end

@interface DGLayoutYAxisAnchor : DGLayoutAnchor<DGLayoutYAxisAnchor *>
@end

/* This layout anchor subclass is used for sizes (width & height).
 */
@class DGLayoutDimension;
@interface DGLayoutDimension : DGLayoutAnchor<DGLayoutDimension *>

/* These methods return an inactive constraint of the form
 thisVariable = constant.
 */
- (NSLayoutConstraint *)constraintEqualToConstant:(CGFloat)c;
- (NSLayoutConstraint *)constraintGreaterThanOrEqualToConstant:(CGFloat)c;
- (NSLayoutConstraint *)constraintLessThanOrEqualToConstant:(CGFloat)c;

/* These methods return an inactive constraint of the form
 thisAnchor = otherAnchor * multiplier.
 */
- (NSLayoutConstraint *)constraintEqualToAnchor:(DGLayoutDimension *)anchor multiplier:(CGFloat)m;
- (NSLayoutConstraint *)constraintGreaterThanOrEqualToAnchor:(DGLayoutDimension *)anchor multiplier:(CGFloat)m;
- (NSLayoutConstraint *)constraintLessThanOrEqualToAnchor:(DGLayoutDimension *)anchor multiplier:(CGFloat)m;

/* These methods return an inactive constraint of the form
 thisAnchor = otherAnchor * multiplier + constant.
 */
- (NSLayoutConstraint *)constraintEqualToAnchor:(DGLayoutDimension *)anchor multiplier:(CGFloat)m constant:(CGFloat)c;
- (NSLayoutConstraint *)constraintGreaterThanOrEqualToAnchor:(DGLayoutDimension *)anchor multiplier:(CGFloat)m constant:(CGFloat)c;
- (NSLayoutConstraint *)constraintLessThanOrEqualToAnchor:(DGLayoutDimension *)anchor multiplier:(CGFloat)m constant:(CGFloat)c;
@end

#endif