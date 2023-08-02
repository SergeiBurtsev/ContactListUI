//
//  PersonListView.swift
//  ContactListUI
//
//  Created by Serj on 02.08.2023.
//

import SwiftUI

struct PersonListView: View {
    let persons: [Person]
    
    var body: some View {
        List(persons) { person in
            NavigationLink(destination: PersonDetailedView(person: person)) {
                Text(person.fullName)
            }
        }
    }
}

struct PersonListView_Previews: PreviewProvider {
    static var previews: some View {
        PersonListView(persons: Person.getContactList())
    }
}



