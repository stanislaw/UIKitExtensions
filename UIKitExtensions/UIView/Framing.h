// UIKitExtensions
//
// UIKitExtensions/UIView/Framing.h
//
// Copyright (c) 2013 Stanislaw Pankevich
// Released under the MIT license
//
// Inspired by FrameAccessor
// https://github.com/AlexDenisov/FrameAccessor/

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

