//
//  PersonsListOfDetailsTableViewController.swift
//  ListOfPersons
//
//  Created by macbook on 14.04.21.
//

import UIKit

class PersonsListOfDetailsViewController: UITableViewController {

    private var personList = PersonTabBarViewController.personList

    override func viewDidLoad() {
        super.viewDidLoad()
       // tableView.rowHeight = 50
    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        personList.count
    }
    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personDetail", for: indexPath)
        let person = personList[indexPath.section]
        
        var content = cell.defaultContentConfiguration()
        
        if indexPath.row == 0 {
            content.text = String(person.personInformation.phoneNumber)
            content.image = UIImage(systemName: "phone")
        } else {
            content.text = String(person.personInformation.email)
            content.image = UIImage(systemName: "trail")
        }
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
            personList[section].fullName
    }
    
    
    
}
