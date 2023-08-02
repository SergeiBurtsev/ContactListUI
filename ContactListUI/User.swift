//
//  User.swift
//  ContactListUI
//
//  Created by Serj on 02.08.2023.
//

import SwiftUI

struct User {
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    static func getContacts() -> [User] {
        var users: [User] = []
        
        let names = UserStore.shared.names.shuffled()
        let surnames = UserStore.shared.surnames.shuffled()
        let phones = UserStore.shared.phones.shuffled()
        let emails = UserStore.shared.emails.shuffled()
        
        let maxIndex = min(names.count, surnames.count, phones.count, emails.count)
        
        for index in 0..<maxIndex {
            users.append(User(
                name: names[index],
                surname: surnames[index],
                phone: phones[index],
                email: emails[index]))
        }
        
        return users
    }
}
