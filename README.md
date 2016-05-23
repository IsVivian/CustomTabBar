# CustomTabBar
一款swift版本的自定义TabBar

//调用方法

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
