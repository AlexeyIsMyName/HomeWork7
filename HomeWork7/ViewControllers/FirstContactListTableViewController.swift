//
//  ContactsListTableViewController.swift
//  HomeWork7
//
//  Created by ALEKSEY SUSLOV on 17.02.2021.
//

import UIKit

class FirstContactListTableViewController: UITableViewController {
    
    var persons: [Person]!

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactFullName", for: indexPath)
        
        let person = persons[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = person.fullName
        content.textProperties.font = .systemFont(ofSize: 20, weight: .light)
        
        cell.contentConfiguration = content
        cell.backgroundColor = UIColor(red: CGFloat.random(in: 0.6...0.9),
                                       green: CGFloat.random(in: 0.6...0.9),
                                       blue: CGFloat.random(in: 0.6...0.9),
                                       alpha: 1.0)

        return cell
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let contactDetailsVC = segue.destination as? ContactDetailsViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        contactDetailsVC.person = persons[indexPath.row]
        contactDetailsVC.viewColor = tableView.cellForRow(at: indexPath)?.backgroundColor
    }
}
