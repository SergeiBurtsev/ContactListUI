//
//  UserList.swift
//  ContactListUI
//
//  Created by Serj on 02.08.2023.
//

import SwiftUI

struct PersonListView: View {
    let users: [User]
    
    var body: some View {
        List(users) { user in
            NavigationLink(destination: UsersDetailView(user: user)) {
                ZStack {
                    Circle()
                        .fill(Color.random())
                        .frame(width: 50, height: 50)
                    Text(user.fullName.prefix(1))
                }
                Text(user.fullName)
            }
        }
        .listStyle(.grouped)
    }
}

struct PersonListView_Previews: PreviewProvider {
    static var previews: some View {
        PersonListView(users: User.getContactList())
    }
}

