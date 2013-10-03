//
//  UIColor+Core.h
//  UIKitExtensionsApp
//
//  Created by Stanislaw Pankevich on 10/3/13.
//  Copyright (c) 2013 Stanislaw Pankevich. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Core)

// http://stackoverflow.com/questions/1560081/how-can-i-create-a-uicolor-from-a-hex-string
+ (UIColor *)colorWithHexRGB:(NSUInteger)hexRGBValue alpha:(CGFloat)alpha;
+ (UIColor *)colorFromHexString:(NSString *)hexString alpha:(CGFloat)alpha;


@end
