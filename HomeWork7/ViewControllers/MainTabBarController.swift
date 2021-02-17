//
//  MainTabBarController.swift
//  HomeWork7
//
//  Created by ALEKSEY SUSLOV on 17.02.2021.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    private let dataManager = DataManager()
    private var persons: [Person]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        persons = dataManager.getPersonsList()
        
        guard let viewControllers = self.viewControllers else { return }
        
        for viewController in viewControllers {
            if let contactListTableVC = viewController as? FirstContactListTableViewController {
                contactListTableVC.persons = persons
            } else if let contactListTableVC = viewController as? SecondContactListTableViewController {
                contactListTableVC.persons = persons
            }
        }
    }
}
