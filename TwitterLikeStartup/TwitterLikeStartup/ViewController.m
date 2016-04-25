//
//  ViewController.m
//  TwitterLikeStartup
//
//  Created by Welkin Xie on 4/25/16.
//  Copyright © 2016 WelkinXie. All rights reserved.
//
//  https://github.com/WelkinXie/WXTwitterLikeZoomer
//

#import "ViewController.h"
#import "WXTwitterLikeZoomer.h"

@interface ViewController ()
@property (strong, nonatomic) WXTwitterLikeZoomer *zoomer;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.zoomer = [WXTwitterLikeZoomer addToView:self.view withImage:[UIImage imageNamed:@"TwitterLogo_white"] backgroundColor:[UIColor colorWithRed:85/255.f green:172/255.f blue:238/255.f alpha:1]];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self.zoomer startAnimation];
    });
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
