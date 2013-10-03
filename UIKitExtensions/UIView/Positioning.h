//
//  UIView+Positioning.h
//  UIKitExtensionsApp
//
//  Created by Stanislaw Pankevich on 10/4/13.
//  Copyright (c) 2013 Stanislaw Pankevich. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Positioning)

// Inspired by CKUITools / UIView+Position.h (https://github.com/genericspecific/CKUITools)
- (void)centerInSuperView;
- (void)centerVerticallyInSuperView;
- (void)centerHorizontallyInSuperView;

@end
