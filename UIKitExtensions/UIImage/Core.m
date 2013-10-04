// UIKitExtensions
//
// UIKitExtensions/UIImage/Core.m
//
// Copyright (c) 2013 Stanislaw Pankevich
// Released under the MIT license

#import "Core.h"

@implementation UIImage (Core)

+ (UIImage *)imageWithColor:(UIColor *)color ofSize:(CGSize)size {
    CGRect rect = (CGRect){0, 0, size.width, size.height};

    UIGraphicsBeginImageContextWithOptions(size, NO, 0);
    [color setFill];

    UIRectFill(rect);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();

    return image;
}

@end
