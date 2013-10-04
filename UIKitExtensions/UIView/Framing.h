//
//  UIKitExtensions/UIView/Framing.h
//
//  Created by Stanislaw Pankevich on 5/10/13.
//  Copyright (c) 2013 All rights reserved.
//
//  Inspired by FrameAccessor
//  https://github.com/AlexDenisov/FrameAccessor/
//

#import <UIKit/UIKit.h>

@interface UIView (Framing)

@property CGPoint origin;
@property CGSize size;

@property CGFloat x;
@property CGFloat y;
@property CGFloat height;
@property CGFloat width;

@property CGFloat centerX;
@property CGFloat centerY;

@end

