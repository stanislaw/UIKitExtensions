//
//  UIView+RoundedCorners.h
//  UIKitExtensionsApp
//
//  Created by Stanislaw Pankevich on 9/24/13.
//  Copyright (c) 2013 Stanislaw Pankevich. All rights reserved.
//

#import <UIKit/UIKit.h>

#ifdef QUARTZCORE_H_

@interface UIView (RoundedCorners)

// http://stackoverflow.com/questions/4847163/round-two-corners-in-uiview
- (void)applyRoundedCorners:(UIRectCorner)cornersToRoundify radii:(CGSize)radii;

@end

#endif