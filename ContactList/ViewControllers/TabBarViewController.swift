//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Динара Шарафутдинова on 26.07.2023.
//

import Foundation


import UIKit

class TabBarViewController: UITabBarController {
    
    let persons = DataManager().getPersonList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        generateViewControllers()
    }
    
    private func generateViewControllers() {
        guard let personsVC = viewControllers?.first as? PersonsListViewController else { return }
        guard let contactListVC = viewControllers?.last as? ContactListViewController else { return }
        
        let persons = DataManager().getPersonList()
        personsVC.persons = persons
        contactListVC.persons = persons
    }
}
