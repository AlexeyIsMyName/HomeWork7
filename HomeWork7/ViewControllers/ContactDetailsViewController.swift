//
//  ContactDetailsViewController.swift
//  HomeWork7
//
//  Created by ALEKSEY SUSLOV on 17.02.2021.
//

import UIKit

class ContactDetailsViewController: UIViewController {

    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.view.backgroundColor = .white
        navigationItem.title = person.fullName
        phoneNumberLabel.text = person.phoneNumber
        emailLabel.text = person.email
    }
}
