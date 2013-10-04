//
//  UIView+Nulling.h
//
//  Created by Stanislaw Pankevich on 3/28/13.
//  Copyright (c) 2013 Stanislaw Pankevich. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <Foundation/Foundation.h>

@protocol UINulling <NSObject>
- (void)nullify;
@end

@interface UIView (Nulling)
- (void)nullify;
@end
