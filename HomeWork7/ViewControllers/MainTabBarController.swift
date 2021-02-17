//
//  MainTabBarController.swift
//  HomeWork7
//
//  Created by ALEKSEY SUSLOV on 17.02.2021.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    private let dataManager = DataManager()
    private var persons: [Person] {
        dataManager.getPersonsList()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let viewControllers = self.viewControllers else { return }
        
        for viewController in viewControllers {
            guard let navigationController = viewController as? UINavigationController else { return }
            if let contactsListTableVC = navigationController.topViewController as? ContactListTableViewController {
                contactsListTableVC.persons = persons
            }
        }
    }
}
