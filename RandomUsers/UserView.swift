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
            VStack {
                Text("Raw JSON Data:")
                ScrollView {
                    Text(userData.users)
                }
            }
            .padding()
            .navigationTitle("Random Users")
        }
    }
}

#Preview {
    UserView()
}
