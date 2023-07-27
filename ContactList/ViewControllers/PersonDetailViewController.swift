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
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = person.fullName
        phoneTitleLabel.text = "Phone: \(person.phone)"
        emailTitleLabel.text = "Email: \(person.email)"
    }
}
