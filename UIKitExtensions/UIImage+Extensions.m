//
//  UIImage+Extensions.m
//  aaah
//
//  Created by Stanislaw Pankevich on 1/12/13.
//  Copyright (c) 2013 IProjecting. All rights reserved.
//

#import "UIImage+Extensions.h"

@implementation UIImage (Extensions)

+ (UIImage *)imageWithColor:(UIColor *)color ofSize:(CGSize)size {
    CGRect rect = (CGRect){0, 0, size.width, size.height};

    UIGraphicsBeginImageContextWithOptions(size, NO, 0);
    [color setFill];
    
    UIRectFill(rect);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();

    return image;
}

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

#pragma mark -
#pragma mark Scale and crop image

- (UIImage *)imageByScalingAndCroppingForSize:(CGSize)targetSize
{
    UIImage *sourceImage = self;
    UIImage *newImage = nil;
    CGSize imageSize = sourceImage.size;
    CGFloat width = imageSize.width;
    CGFloat height = imageSize.height;
    CGFloat targetWidth = targetSize.width;
    CGFloat targetHeight = targetSize.height;
    CGFloat scaleFactor = 0.0;
    CGFloat scaledWidth = targetWidth;
    CGFloat scaledHeight = targetHeight;
    CGPoint thumbnailPoint = CGPointMake(0.0,0.0);

    if (CGSizeEqualToSize(imageSize, targetSize) == NO)
    {
        CGFloat widthFactor = targetWidth / width;
        CGFloat heightFactor = targetHeight / height;

        if (widthFactor > heightFactor)
        {
            scaleFactor = widthFactor;
        }
        else
        {
            scaleFactor = heightFactor;
        }

        scaledWidth  = width * scaleFactor;
        scaledHeight = height * scaleFactor;

        if (widthFactor > heightFactor)
        {
            thumbnailPoint.y = (targetHeight - scaledHeight) * 0.5;
        }
        else
        {
            if (widthFactor < heightFactor)
            {
                thumbnailPoint.x = (targetWidth - scaledWidth) * 0.5;
            }
        }
    }

    UIGraphicsBeginImageContextWithOptions(targetSize, YES, 0.0);
    
    CGRect thumbnailRect = CGRectZero;
    thumbnailRect.origin = thumbnailPoint;
    thumbnailRect.size.width  = scaledWidth;
    thumbnailRect.size.height = scaledHeight;

    [sourceImage drawInRect:thumbnailRect];

    newImage = UIGraphicsGetImageFromCurrentImageContext();

    UIGraphicsEndImageContext();
    
    return newImage;
}

- (UIImage *)imageClippedWithBounds:(CGRect)bounds {
    UIImage *clippedImage;

    CGImageRef imageRef = CGImageCreateWithImageInRect(self.CGImage, bounds);

    clippedImage = [UIImage imageWithCGImage:imageRef scale:self.scale orientation:self.imageOrientation];

    CGImageRelease(imageRef);
    
    return clippedImage;
}

@end
