//
//  ViewController.swift
//  AppStoreClone
//
//  Created by Matthew Harrilal on 5/5/19.
//  Copyright © 2019 Matthew Harrilal. All rights reserved.
//

import UIKit

class BaseTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let firstViewController = UIViewController()
        firstViewController.view.backgroundColor = .yellow
        
        let todayNavController = UINavigationController(rootViewController: firstViewController)
        todayNavController.tabBarItem.title = "Today"
        todayNavController.navigationBar.prefersLargeTitles = true
        
        let secondViewController = UIViewController()
        secondViewController.view.backgroundColor = .blue
        
        let appsNavController = UINavigationController(rootViewController: secondViewController)
        appsNavController.tabBarItem.title = "Apps"
        appsNavController.navigationBar.prefersLargeTitles = true
        
        
        let thirdViewController = UIViewController()
        thirdViewController.view.backgroundColor = .red
        
        let searchNavController = UINavigationController(rootViewController: thirdViewController)
        searchNavController.tabBarItem.title = "Search"
        searchNavController.navigationBar.prefersLargeTitles = true
        
        super.viewControllers = [
            todayNavController,
            appsNavController,
            searchNavController
        ]
    }


}

