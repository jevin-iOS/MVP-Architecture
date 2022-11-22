//
//  UserResponse.swift
//  MVP Demo APP
//
//  Created by jevin kamani on 12/11/22.
//

import Foundation

struct UserResponse: Decodable {
    
    let page, perPage, total, totalPages: Int?
    let users: [Users]
    let support: Support?

    enum CodingKeys: String, CodingKey {
        case page
        case perPage = "per_page"
        case total
        case totalPages = "total_pages"
        case users = "data"
        case support
    }
}

// MARK: - Datum
struct Users: Decodable {
    let id: Int?
    let email, firstName, lastName: String
    let avatar: String

    enum CodingKeys: String, CodingKey {
        case id, email
        case firstName = "first_name"
        case lastName = "last_name"
        case avatar
    }
}

// MARK: - Support
struct Support: Decodable {
    let url: String
    let text: String
}
