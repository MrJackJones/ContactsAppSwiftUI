//
//  Person.swift
//  Person
//
//  Created by Ivan on 26.05.2022.
//


import Foundation

struct Person: Identifiable {
    let id: UUID
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

extension Person {
    static func getContact() -> Person {
        return Person(id: UUID(),
                      name: DataManager.shared.names.shuffled().first ?? "",
                      surname: DataManager.shared.surnames.shuffled().first ?? "",
                      email: DataManager.shared.emails.shuffled().first ?? "",
                      phoneNumber: DataManager.shared.phones.shuffled().first ?? ""
        )
    }
    
    static func getContactList() -> [Person] {
        
        var persons: [Person] = []
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        let phones = DataManager.shared.phones.shuffled()
        
        let iterationCount = min(
            names.count,
            surnames.count,
            emails.count,
            phones.count
        )
        
        for index in 0..<iterationCount {
            let person = Person(
                id: UUID(),
                name: names[index],
                surname: surnames[index],
                email: emails[index],
                phoneNumber: phones[index]
            )
            
            persons.append(person)
        }
        
        return persons
    }
}

enum Contacts: String {
    case phone = "phone"
    case email = "tray"
}
