//
//  PersonsListViewController.swift
//  ContactList
//
//  Created by Динара Шарафутдинова on 26.07.2023.
//

import UIKit

class PersonsListViewController: UITableViewController {
    var persons = DataManager().getPersonList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = persons[indexPath.row]
        
        content.text = person.fullName
        cell.contentConfiguration = content
        
        return cell
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailsVC = segue.destination as? PersonDetailViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        detailsVC.persons = persons[indexPath.row]
    }
}


