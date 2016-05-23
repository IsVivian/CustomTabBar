//
//  BaseNaviViewController.swift
//  CustomTabBar
//
//  Created by sherry on 16/5/23.
//  Copyright © 2016年 sherry. All rights reserved.
//

import UIKit

class BaseNaviViewController: UIViewController {

    var navi: UINavigationController!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        navi = UINavigationController(rootViewController: self)
    
        //修改导航栏的背景颜色
        navi.navigationBar.barTintColor = UIColor.brownColor()
        
        //修改导航栏的标题颜色
        let naviTitle = NSDictionary(object: UIColor.whiteColor(), forKey: NSForegroundColorAttributeName)
        navi.navigationBar.titleTextAttributes = naviTitle as? [String : AnyObject]
        
        //修改返回按钮
        let item = UIBarButtonItem(title: "返回", style: .Plain, target: self, action: nil)
        self.navigationItem.backBarButtonItem = item
        //修改导航栏的按钮颜色
        navi.navigationBar.tintColor = UIColor.whiteColor()
        

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
