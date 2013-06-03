//
//  UIView+Rotation.m
//  aaah
//
//  Created by Stanislaw Pankevich on 1/15/13.
//  Copyright (c) 2013 IProjecting. All rights reserved.
//

#import "UIView+DynamicProperties.h"
#import <objc/runtime.h>

static void *dynamicPropertiesKey;

@implementation UIView (DynamicProperties)

- (UIView *)defineDynamicPropertiesWithBlock:(blockWithObject)viewPropertiesBlock {
    self.dynamicPropertiesBlock = viewPropertiesBlock;
    return self;
}

- (void)applyDynamicProperties {
    if (self.dynamicPropertiesBlock == nil) {
        @throw [NSException exceptionWithName:NSInternalInconsistencyException reason:@"dynamic properties should be defined to be run" userInfo:nil];
    }
    
    self.dynamicPropertiesBlock(self);
}

- (blockWithObject)dynamicPropertiesBlock {
    return objc_getAssociatedObject(self, &dynamicPropertiesKey);
}

- (void)setDynamicPropertiesBlock:(blockWithObject)dynamicPropertiesBlock {
    objc_setAssociatedObject(self, &dynamicPropertiesKey, [dynamicPropertiesBlock copy], OBJC_ASSOCIATION_RETAIN);
}

@end
