//
//  AppDelegate.swift
//  CustomTabBar
//
//  Created by sherry on 16/5/20.
//  Copyright © 2016年 sherry. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        self.window?.makeKeyAndVisible()
        
        let homeVC = HomeViewController()
        homeVC.view.backgroundColor = UIColor.blueColor()
        homeVC.tabBarItem.image = UIImage(named: "home_tab_icon_1@2x")
        homeVC.title = "首页"
        
        let messageVC = MessageViewController()
        messageVC.view.backgroundColor = UIColor.yellowColor()
        messageVC.tabBarItem.image = UIImage(named: "home_tab_icon_2@2x")
        messageVC.title = "信息"
        
        let personVC = PersonViewController()
        personVC.view.backgroundColor = UIColor.redColor()
        personVC.tabBarItem.image = UIImage(named: "home_tab_icon_4@2x")
        personVC.title = "联系人"
        
        let settingVC = SettingViewController()
        settingVC.view.backgroundColor = UIColor.greenColor()
        settingVC.tabBarItem.image = UIImage(named: "home_tab_icon_5@2x")
        settingVC.title = "设置"
        
        let customTabBar = CustomTabBarController()
        //设置标签栏的背景图片
        customTabBar.tabBarView.image = UIImage(named: "mask_navbar")
        //设置选中图片的滑动
        customTabBar.selectedImg = UIImage(named: "home_bottom_tab_arrow@2x")
        //设置默认选中的视图
        customTabBar.selectCount = 0
        //加入视图控制器的数组
        customTabBar.viewControllers = [homeVC.navi, messageVC.navi, UIViewController(), personVC.navi, settingVC.navi]
        
        //设置为根视图控制器
        self.window?.rootViewController = customTabBar
        
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

