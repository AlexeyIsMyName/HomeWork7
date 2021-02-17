//
//  SecondContactListTableViewController.swift
//  HomeWork7
//
//  Created by ALEKSEY SUSLOV on 18.02.2021.
//

import UIKit

class SecondContactListTableViewController: UITableViewController {

    var persons: [Person]!

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let fullNamelabel = UILabel()
        
        fullNamelabel.text = persons[section].fullName
        fullNamelabel.textAlignment = .center
        fullNamelabel.font = .systemFont(ofSize: 20, weight: .light)
        fullNamelabel.backgroundColor = UIColor(red: CGFloat.random(in: 0.6...0.9),
                                        green: CGFloat.random(in: 0.6...0.9),
                                        blue: CGFloat.random(in: 0.6...0.9),
                                        alpha: 1.0)
        
        return fullNamelabel
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactInfo", for: indexPath)
        
        let person = persons[indexPath.section]
        
        var content = cell.defaultContentConfiguration()
        
        content.textProperties.font = .systemFont(ofSize: 16, weight: .light)
        
        switch indexPath.row {
        case 0: content.image = UIImage(systemName: "phone")
            content.text = person.phoneNumber
        default: content.image = UIImage(systemName: "mail")
            content.text = person.email
        }
        
        cell.contentConfiguration = content

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
