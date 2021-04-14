//
//  PersonsListOfDetailsTableViewController.swift
//  ListOfPersons
//
//  Created by macbook on 14.04.21.
//

import UIKit

class PersonsListOfDetailsViewController: UITableViewController {

    private var personList = Person.getPesonList()

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
        let person = personList[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = person.personInformation.email
        content.image = UIImage(systemName: "tray")
        content.imageProperties.tintColor = .black
        cell.contentConfiguration = content
        
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
            personList[section].fullName
    }
    
}
