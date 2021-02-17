//
//  ContactsListTableViewController.swift
//  HomeWork7
//
//  Created by ALEKSEY SUSLOV on 17.02.2021.
//

import UIKit

class FirstContactListTableViewController: UITableViewController {
    
    var persons: [Person]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.view.backgroundColor = .green
    }
    

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactFullName", for: indexPath)
        
        let person = persons[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = person.fullName
        
        cell.contentConfiguration = content

        return cell
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let contactDetailsVC = segue.destination as? ContactDetailsViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        contactDetailsVC.person = persons[indexPath.row]
    }
}
