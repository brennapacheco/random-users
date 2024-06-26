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
                HStack {
                    AsyncImage(url: URL(string: user.picture.thumbnail)) { image in
                        image.clipShape(Circle())
                    } placeholder: {
                        Image(systemName: "person")
                            .frame(width: 50, height: 50, alignment: .center)
                    }

                    Text(user.fullName)
                }
            }
            .navigationTitle("Random Users")
        }
    }
}

#Preview {
    UserView()
}
