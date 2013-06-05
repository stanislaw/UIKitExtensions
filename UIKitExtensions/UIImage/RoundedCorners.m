//
//  UIImage+RoundedCorners.m
//  UIKitExtensionsApp
//
//  Created by Stanislaw Pankevich on 6/5/13.
//  Copyright (c) 2013 Stanislaw Pankevich. All rights reserved.
//

#import "RoundedCorners.h"

@implementation UIImage (RoundedCorners)

- (UIImage *)applyRoundedCorners:(CGFloat)radius {
    UIImage *newImage;

    CGRect imageFrame = (CGRect){0, 0, self.size.width, self.size.height};

    UIGraphicsBeginImageContextWithOptions(imageFrame.size, NO, 0.0);

    [[UIBezierPath bezierPathWithRoundedRect:imageFrame
                                cornerRadius:radius] addClip];

    [self drawInRect:imageFrame];

    newImage = UIGraphicsGetImageFromCurrentImageContext();

    UIGraphicsEndImageContext();

    return newImage;
}

@end
