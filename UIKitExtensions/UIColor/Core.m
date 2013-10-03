//
//  UIColor+Core.m
//  UIKitExtensionsApp
//
//  Created by Stanislaw Pankevich on 10/3/13.
//  Copyright (c) 2013 Stanislaw Pankevich. All rights reserved.
//

#import "Core.h"

@implementation UIColor (Core)

+ (UIColor *)colorWithHexRGB:(NSUInteger)hexRGBValue alpha:(CGFloat)alpha {
    return [UIColor colorWithRed:((hexRGBValue & 0xFF0000) >> 16)/255.0 green:((hexRGBValue & 0xFF00) >> 8)/255.0 blue:(hexRGBValue & 0xFF)/255.0 alpha:alpha];
}

// Assumes input like "#00FF00" (#RRGGBB)
+ (UIColor *)colorFromHexString:(NSString *)hexString alpha:(CGFloat)alpha {
    unsigned rgbValue = 0;

    NSScanner *scanner = [NSScanner scannerWithString:hexString];
    [scanner setScanLocation:1]; // bypass '#' character
    [scanner scanHexInt:&rgbValue];

    return [UIColor colorWithRed:((rgbValue & 0xFF0000) >> 16)/255.0 green:((rgbValue & 0xFF00) >> 8)/255.0 blue:(rgbValue & 0xFF)/255.0 alpha:alpha];
}

@end
