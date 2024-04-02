//
//  UserData.swift
//  RandomUsers
//
//  Created by Brenna Pacheco  on 02/04/2024.
//

import Foundation

class UserData {
    var users: String = ""
    
    init() {
        Task {
            await loadUsers()
        }
    }
    
    func loadUsers() async {
        do {
            let users = try await UserFetchingClient.getUsers()
            self.users = users
        } catch {
            fatalError("Error while try get the users")
        }
    }
}
