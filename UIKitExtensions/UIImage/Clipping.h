//
//  UIImage+Clipping.h
//  UIKitExtensionsApp
//
//  Created by Stanislaw Pankevich on 6/5/13.
//  Copyright (c) 2013 Stanislaw Pankevich. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Clipping)

- (UIImage *)imageClippedWithBounds:(CGRect)bounds;

@end
