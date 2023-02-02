//
//  TabBarViewController.swift
//  TabBarTest
//
//  Created by Life on 1/30/23.
//

import UIKit


class TabBarViewController: UITabBarController{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        /// altrnative: let homeController = HomeController()
        /// if we want to add storybards we add this way
        ///
        let storyboard = UIStoryboard(name: "HomeController", bundle: nil)
        let homeController = storyboard.instantiateViewController(withIdentifier: "homesb")
        
        /// simple way to add a view controller programatically, not storybaord attacched
        let recivedController = RecivedController()
        
        /// add names to tabbar items
        homeController.title = "Home"
        recivedController.title = "Recived"
        
        self.setViewControllers([homeController, recivedController], animated: false)
        self.tabBar.layer.borderWidth = 1.5
        self.tabBar.layer.borderColor = bgColor.cgColor
        self.tabBar.backgroundColor = .white
    }


}
