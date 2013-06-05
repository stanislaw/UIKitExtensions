//
//  UIScrollView+Extensions.m
//  aaah
//
//  Created by Stanislaw Pankevich on 5/10/13.
//  Copyright (c) 2013 IProjecting. All rights reserved.
//

#import "Core.h"

@implementation UIScrollView (Extensions)

- (void)performBlockWithScrollDisabled:(void(^)(void))block {
    self.scrollEnabled = NO;

    block();

    self.scrollEnabled = YES;
}

@end
