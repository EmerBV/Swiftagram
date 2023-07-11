//
//  Post.swift
//  Swiftagram
//
//  Created by Emerson Balahan Varona on 30/6/23.
//

import Foundation
import Firebase

struct Post: Identifiable, Hashable, Codable {
    let id: String
    let ownerUid: String
    let caption: String
    var likes: Int
    let imageUrl: String
    // UI
    //let timestamp: Date
    // DB
    let timestamp: Timestamp
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
            // UI
            //timestamp: Date(),
            // DB
            timestamp: Timestamp(),
            user: User.MOCK_USERS[0]
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "Caption 2",
            likes: 130,
            imageUrl: "azuki_work2",
            timestamp: Timestamp(),
            user: User.MOCK_USERS[1]
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "Caption 3",
            likes: 320,
            imageUrl: "bored_ape_work2",
            timestamp: Timestamp(),
            user: User.MOCK_USERS[2]
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "Caption 4",
            likes: 20,
            imageUrl: "azuki_work2",
            timestamp: Timestamp(),
            user: User.MOCK_USERS[2]
        )
    ]
}
