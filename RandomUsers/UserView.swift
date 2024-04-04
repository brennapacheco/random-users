//
//  UserView.swift
//  RandomUsers
//
//  Created by Brenna Pacheco  on 02/04/2024.
//

import SwiftUI

struct UserView: View {
    @StateObject var userData = UserData()
    
    var body: some View {
        NavigationView {
            List(userData.users) { user in
                Text(user.fullName)
            }
            .navigationTitle("Random Users")
        }
    }
}

#Preview {
    UserView()
}
