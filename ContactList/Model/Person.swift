//
//  Person.swift
//  ContactList
//
//  Created by Артем Иванов on 26.11.2024.
//

import Foundation

struct Person {
    
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var fullName: String { "\(name) \(surname)"}
    
    static func getContacts() -> [Person] {
        
        var persons: [Person] = []
        let personsData = DataStore.personsData
       
        let names = personsData.names.shuffled()
        let surnames = personsData.surnames.shuffled()
        let emails = personsData.emails.shuffled()
        let phones = personsData.phones.shuffled()
        
        let iterations = min(
            names.count,
            surnames.count,
            emails.count,
            phones.count
        )
        
        for index in 0..<iterations {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                phone: phones[index],
                email: emails[index]
            )
            persons.append(person)
        }
        return persons
    }
}
