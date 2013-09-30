//
//  UIView+RoundedCorners.m
//  UIKitExtensionsApp
//
//  Created by Stanislaw Pankevich on 9/24/13.
//  Copyright (c) 2013 Stanislaw Pankevich. All rights reserved.
//

#import "RoundedCorners.h"

#ifdef QUARTZCORE_H_

#import <QuartzCore/QuartzCore.h>

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
