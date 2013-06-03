//
//  UIView+Extensions.h
//  aaah
//
//  Created by Stanislaw Pankevich on 1/22/13.
//  Copyright (c) 2013 IProjecting. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "NSObject+Extensions.h"

@interface UIView (Extensions)

- (id)initWithBlock:(void(^)(id))block;

- (id)initWithFrame:(CGRect)frame andBlock:(void(^)(id))block;

- (id)modifyWithBlock:(void(^)(id))block;

@end