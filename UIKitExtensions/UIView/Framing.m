// UIKitExtensions
//
// UIKitExtensions/UIView/Framing.m
//
// Copyright (c) 2013 Stanislaw Pankevich
// Released under the MIT license
//
// Inspired by FrameAccessor
// https://github.com/AlexDenisov/FrameAccessor/

#import "Framing.h"

@implementation UIView (Framing)

- (CGPoint)viewOrigin {
    return self.frame.origin;
}

- (void)setViewOrigin:(CGPoint)newViewOrigin {
    CGRect newFrame = self.frame;
    newFrame.origin = newViewOrigin;
    self.frame = newFrame;
}

- (CGSize)viewSize {
    return self.frame.size;
}

- (void)setViewSize:(CGSize)newViewSize {
    CGRect newFrame = self.frame;
    newFrame.size = newViewSize;
    self.frame = newFrame;
}

- (CGFloat)x {
    return self.frame.origin.x;
}

- (void)setX:(CGFloat)newX {
    CGRect newFrame = self.frame;
    newFrame.origin.x = newX;
    self.frame = newFrame;
}

- (CGFloat)y {
    return self.frame.origin.y;
}

- (void)setY:(CGFloat)newY {
    CGRect newFrame = self.frame;
    newFrame.origin.y = newY;
    self.frame = newFrame;
}

- (CGFloat)height {
    return self.frame.size.height;
}

- (void)setHeight:(CGFloat)newHeight {
    CGRect newFrame = self.frame;
    newFrame.size.height = newHeight;
    self.frame = newFrame;
}

- (CGFloat)width {
    return self.frame.size.width;
}

- (void)setWidth:(CGFloat)newWidth {
    CGRect newFrame = self.frame;
    newFrame.size.width = newWidth;
    self.frame = newFrame;
}

- (CGFloat)centerX {
    return self.center.x;
}

- (void)setCenterX:(CGFloat)centerX {
    self.center = (CGPoint){
        centerX,
        self.center.y
    };
}

- (CGFloat)centerY {
    return self.center.y;
}

- (void)setCenterY:(CGFloat)centerY {
    self.center = (CGPoint){
        self.center.x,
        centerY
    };
}

@end
