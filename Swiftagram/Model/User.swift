//
//  User.swift
//  Swiftagram
//
//  Created by Emerson Balahan Varona on 30/6/23.
//

import Foundation

struct User: Identifiable, Hashable, Codable {
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullname: String?
    var bio: String?
    let email: String
}

extension User {
    static var MOCK_USERS: [User] = [
        .init(
            id: NSUUID().uuidString,
            username: "azuki_work1",
            profileImageUrl: "azuki_work1",
            fullname: "azuki_work1",
            bio: "team azuki",
            email: "azukiwork1@gmail.com"
        ),
        .init(
            id: NSUUID().uuidString,
            username: "azuki_work2",
            profileImageUrl: "azuki_work2",
            fullname: "azuki_work2",
            bio: "team azuki",
            email: "azukiwork2@gmail.com"
        ),
        .init(
            id: NSUUID().uuidString,
            username: "bored_ape_work2",
            profileImageUrl: "bored_ape_work2",
            fullname: nil,
            bio: "team bored apes",
            email: "boredapework2@gmail.com"
        )
    ]
}
