//
//  Person.swift
//  ListOfPersons
//
//  Created by macbook on 14.04.21.
//

import Foundation

struct Person {
    let firstName: String
    let lastName: String
    let personInformation: PersonInformation
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
    
}

struct PersonInformation {
    let phoneNumber: Int
    let email: String
}

extension Person {
    static func getPesonList() -> [Person] {
        var person: [Person] = []
        let firstNames = DataManager.init().firstNames.shuffled()
        let lastNames = DataManager.init().lastNames.shuffled()
        let phoneNumbers = DataManager.init().phoneNumbers.shuffled()
        let emails = DataManager.init().emails.shuffled()
        
        for personIndex in 0...DataManager.init().firstNames.count - 1 {
            person.append(.init(
                firstName: firstNames[personIndex],
                lastName: lastNames[personIndex],
                            personInformation: .init(
                                phoneNumber: phoneNumbers[personIndex],
                                email: emails[personIndex]
                            )
            ))
        }
        return person
    }
}
