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
        todayNavController.tabBarItem.image = #imageLiteral(resourceName: "today_icon")
        firstViewController.navigationItem.title = "Today"
        
        let secondViewController = UIViewController()
        secondViewController.view.backgroundColor = .blue
        
        let appsNavController = UINavigationController(rootViewController: secondViewController)
        appsNavController.tabBarItem.title = "Apps"
        secondViewController.navigationItem.title = "Apps"
        appsNavController.navigationBar.prefersLargeTitles = true
        appsNavController.tabBarItem.image = #imageLiteral(resourceName: "apps")
        
        
        let thirdViewController = UIViewController()
        thirdViewController.view.backgroundColor = .red
        
        let searchNavController = UINavigationController(rootViewController: thirdViewController)
        searchNavController.tabBarItem.title = "Search"
        thirdViewController.navigationItem.title = "Search"
        searchNavController.navigationBar.prefersLargeTitles = true
        searchNavController.tabBarItem.image = #imageLiteral(resourceName: "search")
        
        super.viewControllers = [
            todayNavController,
            appsNavController,
            searchNavController
        ]
    }


}

