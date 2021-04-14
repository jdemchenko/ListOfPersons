//
//  PersonContactsVCViewController.swift
//  ListOfPersons
//
//  Created by macbook on 14.04.21.
//

import UIKit

class PersonDetailsViewController: UIViewController {

    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = person.fullName
        navigationItem.largeTitleDisplayMode = .never
        phoneLabel.text = "Phone: \(person.personInformation.phoneNumber)"
        emailLabel.text = "Email: \(person.personInformation.email)"
    }
}
