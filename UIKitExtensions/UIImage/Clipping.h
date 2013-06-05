//
//  UIImage+Clipping.h
//  UIKitExtensionsApp
//
//  Created by Stanislaw Pankevich on 6/5/13.
//  Copyright (c) 2013 Stanislaw Pankevich. All rights reserved.
//

#import <UIKit/UIKit.h>

#ifdef COREGRAPHICS_H_

@interface UIImage (Clipping)

- (UIImage *)imageClippedWithBounds:(CGRect)bounds;

@end

#else
//#pragma message("CoreGraphics framework not found in project, or not included in precompiled header. Image clipping functionality (UIImage/Clipping) will not be available.")
#endif
