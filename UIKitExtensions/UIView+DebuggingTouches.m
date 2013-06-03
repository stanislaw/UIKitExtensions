//
//  UIView+Debugging.m
//  aaah
//
//  Created by Stanislaw Pankevich on 5/4/13.
//  Copyright (c) 2013 IProjecting. All rights reserved.
//

#import "UIView+DebuggingTouches.h"

@implementation UIResponder (DebuggingTouches)
@end

@implementation UIView (DebuggingTouches)
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    NSLog(@"Debugging: %@", self);

    [super touchesBegan:touches withEvent:event];
}
@end

@implementation UIViewController (DebuggingTouches)
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    NSLog(@"Debugging: %@", self);

    [super touchesBegan:touches withEvent:event];
}
@end