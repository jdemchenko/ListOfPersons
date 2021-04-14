//
//  PesonsListViewController.swift
//  ListOfPersons
//
//  Created by macbook on 14.04.21.
//

import UIKit

class PesonsListViewController: UITableViewController {
    
    private var personList = PersonTabBarViewController.personList

    override func viewDidLoad() {
        super.viewDidLoad()
       // tableView.rowHeight = 50
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personName", for: indexPath)
        let person = personList[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = person.fullName
        content.image = UIImage(systemName: "person.crop.circle")
        content.imageProperties.tintColor = .black
        cell.contentConfiguration = content
        
        return cell
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let personDetailsVC = segue.destination as? PersonDetailsViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let person = personList[indexPath.row]
        personDetailsVC.person = person
    }

}
