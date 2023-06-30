//
//  Post.swift
//  Swiftagram
//
//  Created by Emerson Balahan Varona on 30/6/23.
//

import Foundation

struct Post: Identifiable, Hashable, Codable {
    let id: String
    let ownerUid: String
    let caption: String
    var likes: Int
    let imageUrl: String
    let timestamp: Date
    var user: User?
}

extension Post {
    static var MOCK_POSTS: [Post] = [
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "Caption 1",
            likes: 100,
            imageUrl: "azuki_work1",
            timestamp: Date(),
            user: User.MOCK_USERS[0]
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "Caption 2",
            likes: 130,
            imageUrl: "azuki_work2",
            timestamp: Date(),
            user: User.MOCK_USERS[1]
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "Caption 3",
            likes: 320,
            imageUrl: "bored_ape_work2",
            timestamp: Date(),
            user: User.MOCK_USERS[2]
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "Caption 4",
            likes: 20,
            imageUrl: "azuki_work2",
            timestamp: Date(),
            user: User.MOCK_USERS[2]
        )
    ]
}
