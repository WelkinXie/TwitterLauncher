## WXTwitterLikeZoomer

Twitter的启动动画，简单、可复用到其他的图标。

![()](http://7xneqd.com1.z0.glb.clouddn.com/twitter.gif)

	// 初始化
	self.zoomer = [WXTwitterLikeZoomer addToView:self.view withImage:[UIImage imageNamed:@"TwitterLogo_white"] backgroundColor:[UIColor colorWithRed:85/255.f green:172/255.f blue:238/255.f alpha:1]];

	// 开始动画
	[self.zoomer startAnimation];
	
就这样。

## License
Released under [MIT License](https://github.com/WelkinXie/WXTwitterLikeZoomer/blob/master/LICENSE).