//
//  UIImage+Extensions.h
//  aaah
//
//  Created by Stanislaw Pankevich on 1/12/13.
//  Copyright (c) 2013 IProjecting. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Extensions)

+ (UIImage *)imageWithColor:(UIColor *)color ofSize:(CGSize)size;

- (UIImage *)applyRoundedCorners:(CGFloat)radius;
- (UIImage *)imageByScalingAndCroppingForSize:(CGSize)targetSize;
- (UIImage *)imageClippedWithBounds:(CGRect)bounds;

@end
