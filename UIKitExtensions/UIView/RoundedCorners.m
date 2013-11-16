// UIKitExtensions
//
// UIKitExtensions/UIView/RoundedCorners.m
//
// Copyright (c) 2013 Stanislaw Pankevich
// Released under the MIT license

#import "RoundedCorners.h"

#ifdef QUARTZCORE_H

@implementation UIView (RoundedCorners)

- (void)applyRoundedCorners:(UIRectCorner)cornersToRoundify radii:(CGSize)radii {
    CAShapeLayer *maskLayer = CAShapeLayer.layer;
    maskLayer.frame = self.bounds;

    UIBezierPath *roundedPath = [UIBezierPath bezierPathWithRoundedRect:maskLayer.bounds byRoundingCorners:cornersToRoundify cornerRadii:radii];

    maskLayer.backgroundColor = UIColor.clearColor.CGColor;
    maskLayer.path = roundedPath.CGPath;

    self.layer.mask = maskLayer;
}

@end

#endif
