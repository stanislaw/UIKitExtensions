//
//  UIImage+Clipping.m
//  UIKitExtensionsApp
//
//  Created by Stanislaw Pankevich on 6/5/13.
//  Copyright (c) 2013 Stanislaw Pankevich. All rights reserved.
//

#import "UIImage+Clipping.h"

@implementation UIImage (Clipping)

- (UIImage *)imageClippedWithBounds:(CGRect)bounds {
    UIImage *clippedImage;

    CGImageRef imageRef = CGImageCreateWithImageInRect(self.CGImage, bounds);

    clippedImage = [UIImage imageWithCGImage:imageRef scale:self.scale orientation:self.imageOrientation];

    CGImageRelease(imageRef);

    return clippedImage;
}

@end
