//
//  UIScrollView+Extensions.h
//
//  Created by Stanislaw Pankevich on 5/10/13.
//  Copyright (c) 2013 Stanislaw Pankevich. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIScrollView (Extensions)

- (void)performBlockWithScrollDisabled:(void(^)(void))block;

@end
