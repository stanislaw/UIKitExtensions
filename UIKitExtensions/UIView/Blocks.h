//
//  UIView+Extensions.h
//  aaah
//
//  Created by Stanislaw Pankevich on 1/22/13.
//  Copyright (c) 2013 IProjecting. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Blocks)

- (instancetype)initWithBlock:(void(^)(id))block;

- (instancetype)initWithFrame:(CGRect)frame andBlock:(void(^)(id))block;

- (instancetype)performBlock:(void(^)(id))block;

@end