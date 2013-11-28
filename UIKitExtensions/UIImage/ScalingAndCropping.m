// UIKitExtensions
//
// UIKitExtensions/UIImage/ScalingAndCropping.m
//
// Copyright (c) 2013 Stanislaw Pankevich
// Released under the MIT license

#import "ScalingAndCropping.h"

@implementation UIImage (ScalingAndCropping)

#pragma mark -
#pragma mark Scale and crop image

- (UIImage *)imageByScalingAndCroppingForSize:(CGSize)targetSize {
    UIImage *sourceImage = self;
    UIImage *newImage;

    CGSize imageSize = sourceImage.size;
    CGFloat width = imageSize.width;
    CGFloat height = imageSize.height;
    CGFloat targetWidth = targetSize.width;
    CGFloat targetHeight = targetSize.height;
    CGFloat scaleFactor = 0.0;
    CGFloat scaledWidth = targetWidth;
    CGFloat scaledHeight = targetHeight;
    CGPoint thumbnailPoint = CGPointMake(0.0,0.0);

    if (CGSizeEqualToSize(imageSize, targetSize) == NO) {
        CGFloat widthFactor = targetWidth / width;
        CGFloat heightFactor = targetHeight / height;

        if (widthFactor > heightFactor) {
            scaleFactor = widthFactor;
        } else {
            scaleFactor = heightFactor;
        }

        scaledWidth  = width * scaleFactor;
        scaledHeight = height * scaleFactor;

        if (widthFactor > heightFactor) {
            thumbnailPoint.y = (targetHeight - scaledHeight) * 0.5;
        } else {
            thumbnailPoint.x = (targetWidth - scaledWidth) * 0.5;
        }
    }

    CGRect thumbnailRect = CGRectZero;
    thumbnailRect.origin = thumbnailPoint;
    thumbnailRect.size.width  = scaledWidth;
    thumbnailRect.size.height = scaledHeight;


    UIGraphicsBeginImageContextWithOptions(targetSize, NO, 0.0);

        [sourceImage drawInRect:thumbnailRect];

        newImage = UIGraphicsGetImageFromCurrentImageContext();

    UIGraphicsEndImageContext();


    return newImage;
}

@end

