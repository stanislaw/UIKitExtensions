//
//  UIView+Positioning.m
//  UIKitExtensionsApp
//
//  Created by Stanislaw Pankevich on 10/4/13.
//  Copyright (c) 2013 Stanislaw Pankevich. All rights reserved.
//

#import "Positioning.h"
#import "Framing.h"

@implementation UIView (Positioning)

- (void)centerInSuperView {
    self.center = CGPointMake(CGRectGetMidX(self.superview.bounds), CGRectGetMidY(self.superview.bounds));
}

- (void)centerVerticallyInSuperView {
    self.centerY = CGRectGetHeight(self.superview.bounds);
}

- (void)centerHorizontallyInSuperView {
    self.centerX = CGRectGetWidth(self.superview.bounds);
}

@end
