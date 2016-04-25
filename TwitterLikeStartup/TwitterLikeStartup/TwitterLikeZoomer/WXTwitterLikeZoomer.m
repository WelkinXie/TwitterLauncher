//
//  WXTwitterLikeZoomer.m
//  TwitterLikeStartup
//
//  Created by Welkin Xie on 4/25/16.
//  Copyright © 2016 WelkinXie. All rights reserved.
//
//  https://github.com/WelkinXie/WXTwitterLikeZoomer
//

#import "WXTwitterLikeZoomer.h"

@interface WXTwitterLikeZoomer ()

@property (weak, nonatomic) UIView *view;
@property (strong, nonatomic) UIImageView *imageView;

@end

@implementation WXTwitterLikeZoomer

+ (instancetype)addToView:(UIView *)view withImage:(UIImage *)image backgroundColor:(UIColor *)backgroundColor {
    WXTwitterLikeZoomer *zoomer = [[WXTwitterLikeZoomer alloc] initWithFrame:view.frame];
    zoomer.view = view;
    zoomer.imageView = [[UIImageView alloc] initWithImage:image];
    zoomer.imageView.frame = CGRectMake(0, 0, 90, 90);
    zoomer.imageView.center = view.center;
    zoomer.backgroundColor = backgroundColor;
    [zoomer addSubview:zoomer.imageView];
    [view addSubview:zoomer];
    return zoomer;
}

- (void)startAnimation {
    [self zoomOut];
}

- (void)zoomOut {
    [UIView animateWithDuration:0.3 animations:^{
        self.imageView.frame = CGRectMake(0, 0, 60, 60);
        self.imageView.center = self.view.center;
    } completion:^(BOOL finished) {
        [self zoomIn];
    }];
}

- (void)zoomIn {
    [UIView animateWithDuration:0.4 animations:^{
        self.imageView.frame = CGRectMake(0, 0, 4000, 4000);
        self.imageView.center = self.view.center;
        self.alpha = 0;
    } completion:^(BOOL finished) {
        [self animationFinished];
    }];
}

- (void)animationFinished {
    [self removeFromSuperview];
}

@end
