//
//  UsersDetailView.swift
//  ContactListUI
//
//  Created by Serj on 02.08.2023.
//

import SwiftUI
struct UsersDetailView: View {
    let user: User
    
    var body: some View {
        List {
            Image(systemName: "face.smiling")
                .resizable()
                .frame(width: 300, height: 300)
                .foregroundColor(.cyan)
            HStack{
                Image(systemName: "phone")
                Text("\(user.phone)")
            }
            HStack{
                Image(systemName: "envelope")
                Text("\(user.email)")
            }
            .navigationTitle("\(user.name) \(user.surname)")
        }
    }
    
    
    struct UsersDetailView_Previews: PreviewProvider {
        static var previews: some View {
            UsersDetailView(user: User.getContacts().first!)
        }
    }
}
