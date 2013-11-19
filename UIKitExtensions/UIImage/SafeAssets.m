// UIKitExtensions
//
// UIKitExtensions/UIImage/SafeAssets.m
//
// Copyright (c) 2013 Stanislaw Pankevich
// Released under the MIT license

#import "SafeAssets.h"

#import <objc/runtime.h>

@implementation UIImage (SafeAssets)

+ (void)load {
    Method old = class_getClassMethod(self, @selector(imageNamed:));
    Method new = class_getClassMethod(self, @selector(UIKitExtensions_imageNamed:));

    method_exchangeImplementations(old, new);
}

+ (UIImage *)UIKitExtensions_imageNamed:(NSString *)name {
    UIImage *image = [self UIKitExtensions_imageNamed:name];

    if (image == nil) {
        NSString *reason = [NSString stringWithFormat:@"+[UIImage imageNamed:] - could not find image named: %@", name];
        @throw [NSException exceptionWithName:NSGenericException reason:reason userInfo:nil];
    }

    return image;
}

@end
