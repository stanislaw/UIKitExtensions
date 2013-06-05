//
//  UIImage+Core.m
//  UIKitExtensionsApp
//
//  Created by Stanislaw Pankevich on 6/5/13.
//  Copyright (c) 2013 Stanislaw Pankevich. All rights reserved.
//

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
