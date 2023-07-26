//
//  PersonDetailViewController.swift
//  ContactList
//
//  Created by Динара Шарафутдинова on 26.07.2023.
//

import UIKit

class PersonDetailViewController: UIViewController {
    
    @IBOutlet var phoneTitleLabel: UILabel!
    @IBOutlet var emailTitleLabel: UILabel!
    
    var persons: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = persons.fullName
        phoneTitleLabel.text = "Phone: \(persons.phone)"
        emailTitleLabel.text = "Email: \(persons.email)"
    }
}
