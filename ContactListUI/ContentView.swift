//
//  ContentView.swift
//  ContactListUI
//
//  Created by Serj on 02.08.2023.
//

import SwiftUI


struct ContentView: View {
    private let persons = Person.getContactList()
    @State private var search = ""
    
    var body: some View {
        NavigationView {
            TabView {
                PersonListView(persons: searchResults)
                    .tabItem {
                        Image(systemName: "person.2.fill")
                        Text("Contacts")
                    }
                PersonListDetailsView(persons: searchResults)
                    .tabItem{
                        Image(systemName: "phone.fill")
                        Text("Numbers")
                    }
            }
            .navigationTitle("Contact List")
        }

    }
    
    private var searchResults: [Person] {
        if search.isEmpty {
            return persons
        } else {
            return persons.filter { $0.fullName.contains(search) }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
