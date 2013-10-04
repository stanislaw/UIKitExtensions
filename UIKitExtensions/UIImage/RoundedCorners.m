// UIKitExtensions
//
// UIKitExtensions/UIImage/RoundedCorners.m
//
// Copyright (c) 2013 Stanislaw Pankevich
// Released under the MIT license

#import "RoundedCorners.h"

@implementation UIImage (RoundedCorners)

- (UIImage *)applyRoundedCorners:(UIRectCorner)cornersToRoundify radii:(CGSize)radii {
    UIImage *newImage;

    CGRect imageFrame = (CGRect){0, 0, self.size.width, self.size.height};

    UIGraphicsBeginImageContextWithOptions(imageFrame.size, NO, 0.0);

        [[UIBezierPath bezierPathWithRoundedRect:imageFrame byRoundingCorners:cornersToRoundify cornerRadii:radii] addClip];

        [self drawInRect:imageFrame];

        newImage = UIGraphicsGetImageFromCurrentImageContext();

    UIGraphicsEndImageContext();

    return newImage;
}

@end
