// UIKitExtensions
//
// UIKitExtensions/UIView/DynamicProperties.h
//
// Copyright (c) 2013 Stanislaw Pankevich
// Released under the MIT license

#import <UIKit/UIKit.h>

typedef void (^blockWithObject)(id object);

@interface UIView (DynamicProperties)

@property (copy) blockWithObject dynamicProperties;

- (instancetype)defineDynamicPropertiesWithBlock:(blockWithObject)viewPropertiesBlock;
- (instancetype)applyDynamicProperties;

@end
