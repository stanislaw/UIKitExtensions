// UIKitExtensions
//
// UIKitExtensions/UIView/Positioning.m
//
// Copyright (c) 2013 Stanislaw Pankevich
// Released under the MIT license

#import "Positioning.h"
#import "Framing.h"

@implementation UIView (Positioning)

- (void)centerInSuperView {
    self.center = CGPointMake(CGRectGetMidX(self.superview.bounds), CGRectGetMidY(self.superview.bounds));
}

- (void)centerVerticallyInSuperView {
    self.centerY = CGRectGetMidY(self.superview.bounds);
}

- (void)centerHorizontallyInSuperView {
    self.centerX = CGRectGetMidX(self.superview.bounds);
}

@end
