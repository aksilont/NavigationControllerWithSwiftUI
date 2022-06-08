//
//  MainTabController.swift
//  NavigationControllerWithSwiftUI
//
//  Created by Aksilont on 08.06.2022.
//

import SwiftUI

class MainTabController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    private func configureUI() {
        let greenVC = UIHostingControllerCustom(rootView: GreenView())
        greenVC.tabBarItem = UITabBarItem(title: "",
                                          image: UIImage(systemName: "house"),
                                          tag: 1)
        
        let redVC = UIHostingControllerCustom(rootView: RedView())
        redVC.tabBarItem = UITabBarItem(title: "",
                                        image: UIImage(systemName: "waveform"),
                                        tag: 2)
        
        let blueVC = UIHostingControllerCustom(rootView: BlueView())
        blueVC.tabBarItem = UITabBarItem(title: "",
                                         image: UIImage(systemName: "ellipsis"),
                                         tag: 3)
        
        viewControllers = [greenVC, redVC, blueVC]
    }
    
}
