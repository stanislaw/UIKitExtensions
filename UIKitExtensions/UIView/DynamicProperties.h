//
//  UIView+Rotation.h
//  aaah
//
//  Created by Stanislaw Pankevich on 1/15/13.
//  Copyright (c) 2013 IProjecting. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^blockWithObject)(id object);

@interface UIView (DynamicProperties)

@property (copy) blockWithObject dynamicProperties;

- (instancetype)defineDynamicPropertiesWithBlock:(blockWithObject)viewPropertiesBlock;
- (instancetype)applyDynamicProperties;

@end
