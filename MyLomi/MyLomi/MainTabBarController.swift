//
//  MainTabBarController.swift
//  MyLomi
//
//  Created by Yohannes on 8/10/23.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpViews()
    }
    
    private func setUpViews(){
        let discoverTab = UINavigationController(rootViewController: DiscoverViewController())
        let messageTab = UINavigationController(rootViewController: MessageViewController())
        let matchesTab = UINavigationController(rootViewController: MatchesViewController())
        let profileTab = UINavigationController(rootViewController: ProfileViewController())
        let settingsTab = UINavigationController(rootViewController: SettingsViewController())
        
        discoverTab.tabBarItem.image = UIImage(named: "Discover")
        messageTab.tabBarItem.image = UIImage(named: "Message")
        matchesTab.tabBarItem.image = UIImage(named: "Matches")
        profileTab.tabBarItem.image = UIImage(named: "Profile")
        settingsTab.tabBarItem.image = UIImage(named: "Settings")
    
        self.setViewControllers([discoverTab, messageTab, matchesTab, profileTab, settingsTab], animated: true)
    }
}
