//
//  RNSafeAreaInsets.m
//  RNSafeAreaInsets
//
//  Created by Alexander Golovanov on 9/13/18.
//  Copyright © 2018 Delightful Studio. All rights reserved.
//

#import "RNSafeAreaInsets.h"
#import <React/RCTUtils.h>

@implementation RNSafeAreaInsets

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(currentInsets:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject)
{
    UIViewController *currentController = RCTPresentedViewController();
    UIView *rootView = currentController != nil ? currentController.view : nil;
    UIEdgeInsets insets = UIEdgeInsetsZero;
    if ( rootView != nil )
        insets = rootView.safeAreaInsets;

    NSDictionary *result = @{
      @"left":@(insets.left),
      @"right":@(insets.right),
      @"top":@(insets.top),
      @"bottom":@(insets.bottom)
      };
    
    resolve( result );
}

@end
