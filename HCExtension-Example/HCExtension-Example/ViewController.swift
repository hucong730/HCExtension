//
//  ViewController.swift
//  HCExtension-Example
//
//  Created by 胡聪 on 2020/4/8.
//  Copyright © 2020 胡聪. All rights reserved.
//

import UIKit
import HCExtension

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let color = UIColor(hex: "#FF00FF")
        self.view.backgroundColor = color

        print(UIDevice.current.hc.modelName)
        print(UIApplication.shared.hc.buildVersion)
        print(UIApplication.shared.hc.version)
        print(UIApplication.shared.hc.bundleId)
        print(UIApplication.shared.hc.name)
        print(UIApplication.shared.hc.idfa)
        print(UIApplication.shared.hc.uuid)
 
        
        UITabBar.appearance().backgroundImage = UIColor.white.hc.image
        UITabBar.appearance().shadowImage = UIColor.red.hc.image
    }


}

