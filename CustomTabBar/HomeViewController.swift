//
//  HomeViewController.swift
//  CustomTabBar
//
//  Created by sherry on 16/5/23.
//  Copyright © 2016年 sherry. All rights reserved.
//

import UIKit

class HomeViewController: BaseNaviViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let btn = UIButton(frame: CGRectMake(100, 100, 200, 50))
        btn.setTitle("push", forState: .Normal)
        btn.addTarget(self, action: #selector(btnAct), forControlEvents: .TouchUpInside)
        self.view.addSubview(btn)
        
    }
    
    func btnAct(btn: UIButton) {
    
        let pushVC = PushViewController()
        pushVC.view.backgroundColor = UIColor.whiteColor()
        pushVC.title = "Test VC"
        
        self.navigationController?.pushViewController(pushVC, animated: true)
    
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
