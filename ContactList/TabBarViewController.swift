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
        guard viewControllers?.first is PersonsListViewController else { return }
    }
}
