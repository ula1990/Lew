//
//  MainUITabBar.swift
//  Lew
//
//  Created by Uladzislau Daratsiuk on 2019-05-18.
//  Copyright © 2019 Uladzislau Daratsiuk. All rights reserved.
//

import UIKit

class MainUITabBar: UITabBarController {
    
    private let mainVC      = MainVC()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewControllers                             = [createControllers(title: "", imageName: Constants.ImageNames.home, vc: mainVC)]
        self.tabBar.barTintColor                    = UIColor.white.withAlphaComponent(1)
        self.tabBar.tintColor                       = .gray
        self.tabBar.unselectedItemTintColor         = UIColor.gray.withAlphaComponent(1)
        self.tabBar.backgroundImage                 = UIImage()
        self.tabBar.backgroundColor                 = UIColor.white.withAlphaComponent(0.0)
        self.tabBar.isTranslucent                   = false
        self.tabBar.shadowImage                     = UIImage()
        self.tabBar.layer.shadowOpacity             = 0
        navigationController?.isNavigationBarHidden = true
    }
    
    private func createControllers(title: String, imageName: String, vc: UIViewController) -> UINavigationController{
        let recentVC                = UINavigationController(rootViewController: vc)
        recentVC.tabBarItem.title   = title
        recentVC.tabBarItem.image   = UIImage(named: imageName)
        return recentVC
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        navigationController?.isNavigationBarHidden = true
    }
    
}
