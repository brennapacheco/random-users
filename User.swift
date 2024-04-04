//
//  User.swift
//  RandomUsers
//
//  Created by Brenna Pacheco  on 04/04/2024.
//

import Foundation

struct Response {
  let users: [User]
}

struct User: Identifiable {
    let id: String
    let name: Name
}

struct Name {
    let title: String
    let first: String
    let last: String
}
