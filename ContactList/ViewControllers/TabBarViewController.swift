//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Динара Шарафутдинова on 26.07.2023.
//

import Foundation


import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        generateViewControllers()
    }
    
    private func generateViewControllers() {
        guard let personsNVC = viewControllers?.first as? UINavigationController,
              let personsVC = personsNVC.topViewController as? PersonsListViewController else { return }
        guard let contactListNVC = viewControllers?.last as? UINavigationController,
              let contactListVC = contactListNVC.topViewController as? ContactListViewController else { return }
        let persons = DataManager().getPersonList()
        personsVC.persons = persons
        contactListVC.persons = persons
    }
}
