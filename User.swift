//
//  User.swift
//  RandomUsers
//
//  Created by Brenna Pacheco  on 04/04/2024.
//

import Foundation

struct Response: Decodable {
    let users: [User]
    
    enum CodingKeys: String, CodingKey {
        case users = "results"
    }
}

struct User: Decodable, Identifiable {
    let id: String
    let name: Name
}

struct Name: Decodable {
    let title: String
    let first: String
    let last: String
}
