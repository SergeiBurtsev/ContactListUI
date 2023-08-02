//
//  PersonDetailedView.swift
//  ContactListUI
//
//  Created by Serj on 02.08.2023.
//

import SwiftUI
struct PersonDetailedView: View {
    let person: Person
    
    var body: some View {
        VStack {
            Text(person.fullName)
                .font(.title)
                .fontWeight(.bold)
            Image(systemName:"person.fill")
                .resizable()
                .frame(width: 180, height: 180)
                .padding()
            Form {
                Label(person.phoneNumber,systemImage: "phone")
                Label(person.email,systemImage: "tray")
            }
        }
    }
}

struct PersonDetailedView_Previews: PreviewProvider {
    static var previews: some View {
        PersonDetailedView(person: Person.getContactList().first!)
    }
}
