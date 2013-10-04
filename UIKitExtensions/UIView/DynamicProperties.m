// UIKitExtensions
//
// UIKitExtensions/UIView/DynamicProperties.m
//
// Copyright (c) 2013 Stanislaw Pankevich
// Released under the MIT license

#import "DynamicProperties.h"
#import <objc/runtime.h>

static void *UIViewDynamicPropertiesKey = &UIViewDynamicPropertiesKey;

@implementation UIView (DynamicProperties)

- (instancetype)defineDynamicPropertiesWithBlock:(void(^)(id view))viewPropertiesBlock {
    self.dynamicProperties = viewPropertiesBlock;
    return self;
}

- (instancetype)applyDynamicProperties {
    if (self.dynamicProperties == nil) {
        NSString *reasonString = [NSString stringWithFormat:@"%@: dynamic properties should be defined to be run", self];
        @throw [NSException exceptionWithName:NSInternalInconsistencyException reason:reasonString userInfo:nil];
    }
    
    self.dynamicProperties(self);

    return self;
}

- (void(^)(id view))dynamicProperties {
    return objc_getAssociatedObject(self, &UIViewDynamicPropertiesKey);
}

- (void)setDynamicProperties:(void(^)(id view))dynamicPropertiesBlock {
    objc_setAssociatedObject(self, &UIViewDynamicPropertiesKey, [dynamicPropertiesBlock copy], OBJC_ASSOCIATION_RETAIN);
}

@end
