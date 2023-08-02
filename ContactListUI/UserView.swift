//
//  UserView.swift
//  ContactListUI
//
//  Created by Serj on 02.08.2023.
//

import SwiftUI

struct UserView: View {
    let user: User
    
    var body: some View {
        VStack {
            Text(user.fullName)
                .font(.title)
                .fontWeight(.bold)
            Image(systemName:"person.fill")
                .resizable()
                .frame(width: 180, height: 180)
                .padding()
            Form {
                Label(user.phoneNumber,systemImage: "phone")
                Label(user.email,systemImage: "tray")
            }
        }
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView(user:User.getContactList().first!)
    }
}
