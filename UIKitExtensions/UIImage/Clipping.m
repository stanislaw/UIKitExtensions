// UIKitExtensions
//
// UIKitExtensions/UIImage/Clipping.m
//
// Copyright (c) 2013 Stanislaw Pankevich
// Released under the MIT license

#import "Clipping.h"

#ifdef COREGRAPHICS_H_

@implementation UIImage (Clipping)

- (UIImage *)imageClippedWithBounds:(CGRect)bounds {
    UIImage *clippedImage;

    CGImageRef imageRef = CGImageCreateWithImageInRect(self.CGImage, bounds);

    clippedImage = [UIImage imageWithCGImage:imageRef scale:self.scale orientation:self.imageOrientation];

    CGImageRelease(imageRef);

    return clippedImage;
}

@end

#endif