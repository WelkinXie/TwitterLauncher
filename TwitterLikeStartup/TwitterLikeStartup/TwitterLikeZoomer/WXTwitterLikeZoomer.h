//
//  WXTwitterLikeZoomer.h
//  TwitterLikeStartup
//
//  Created by Welkin Xie on 4/25/16.
//  Copyright © 2016 WelkinXie. All rights reserved.
//
//  https://github.com/WelkinXie/WXTwitterLikeZoomer
//

#import <UIKit/UIKit.h>

@interface WXTwitterLikeZoomer : UIView

+ (instancetype)addToView:(UIView *)view withImage:(UIImage *)image backgroundColor:(UIColor *)backgroundColor;

- (void)startAnimation;

@end
