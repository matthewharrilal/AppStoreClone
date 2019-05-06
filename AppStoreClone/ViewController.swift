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
        let todayNavController = createNavController(fromViewController: firstViewController, withTitle: "Today", withImageName: "today")

        
        let secondViewController = UIViewController()
        let appsNavController = createNavController(fromViewController: secondViewController, withTitle: "Apps", withImageName: "apps")

        
        let searchNavController = createNavController(fromViewController: SearchAppsCollectionViewController(), withTitle: "Search", withImageName: "search")

        super.viewControllers = [
            todayNavController,
            appsNavController,
            searchNavController
        ]
    }

    fileprivate func createNavController(fromViewController viewController: UIViewController, withTitle title: String, withImageName imageName: String) -> UINavigationController {
        
        viewController.navigationItem.title = title
        
        viewController.view.backgroundColor = .white
        
        let navController = UINavigationController(rootViewController: viewController)
        
        navController.tabBarItem.title = title
        
        navController.navigationBar.prefersLargeTitles = true
        
        navController.tabBarItem.image = UIImage(imageLiteralResourceName: imageName)
        
        return navController
    }
}

