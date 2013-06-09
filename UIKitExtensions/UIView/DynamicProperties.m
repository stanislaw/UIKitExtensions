//
//  UIView+Rotation.m
//  aaah
//
//  Created by Stanislaw Pankevich on 1/15/13.
//  Copyright (c) 2013 IProjecting. All rights reserved.
//

#import "DynamicProperties.h"
#import <objc/runtime.h>

static void *dynamicPropertiesKey;

@implementation UIView (DynamicProperties)

- (instancetype)defineDynamicPropertiesWithBlock:(blockWithObject)viewPropertiesBlock {
    self.dynamicProperties = viewPropertiesBlock;
    return self;
}

- (instancetype)applyDynamicProperties {
    if (self.dynamicProperties == nil) {
        @throw [NSException exceptionWithName:NSInternalInconsistencyException reason:@"dynamic properties should be defined to be run" userInfo:nil];
    }
    
    self.dynamicProperties(self);

    return self;
}

- (blockWithObject)dynamicProperties {
    return objc_getAssociatedObject(self, &dynamicPropertiesKey);
}

- (void)setDynamicProperties:(blockWithObject)dynamicPropertiesBlock {
    objc_setAssociatedObject(self, &dynamicPropertiesKey, [dynamicPropertiesBlock copy], OBJC_ASSOCIATION_RETAIN);
}

@end
