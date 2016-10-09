//
//  AppDelegate.swift
//  TwitterLauncher
//
//  Created by WelkinXie on 2016/10/9.
//  Copyright © 2016年 Welkin. All rights reserved.
//
//  https://github.com/WelkinXie/TwitterLauncher
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        let view = window!.rootViewController!.view!
        
        let logoLayer = CALayer()
        logoLayer.bounds = CGRect(x: 0, y: 0, width: 90, height: 90)
        logoLayer.position = view.center
        logoLayer.contents = UIImage(named: "logo")?.cgImage
        view.layer.mask = logoLayer
        
        let shelterView = UIView(frame: view.frame)
        shelterView.backgroundColor = .white
        view.addSubview(shelterView)
        
        UIApplication.shared.delegate?.window??.backgroundColor = UIColor(red: 83 / 255.0, green: 172 / 255.0, blue: 238 / 255.0, alpha: 1)
        
        let animation = CAKeyframeAnimation(keyPath: "bounds")
        animation.beginTime = CACurrentMediaTime() + 1
        animation.duration = 1
        animation.keyTimes = [0, 0.4, 1]
        animation.values = [NSValue(cgRect: CGRect(x: 0, y: 0, width: 90, height: 90)),
                            NSValue(cgRect: CGRect(x: 0, y: 0, width: 70, height: 70)),
                            NSValue(cgRect: CGRect(x: 0, y: 0, width: 4500, height: 4500))]
        animation.timingFunctions = [CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut),
                                     CAMediaTimingFunction(name: kCAMediaTimingFunctionDefault)];
        animation.isRemovedOnCompletion = false
        animation.fillMode = kCAFillModeForwards
        logoLayer.add(animation, forKey: "zoomAnimation")
        
        view.transform = CGAffineTransform(scaleX: 1.05, y: 1.05)
        
        UIView.animate(withDuration: 0.6, delay: 1.2, options: .curveLinear, animations: {
            shelterView.alpha = 0
        }) { (_) in
            shelterView.removeFromSuperview()
        }
        UIView.animate(withDuration: 0.1, delay: 1.55, options: .curveLinear, animations: {
            view.transform = CGAffineTransform.identity
        }) { (_) in
            view.layer.mask = nil
        }
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

