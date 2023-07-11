//
//  UserService.swift
//  Swiftagram
//
//  Created by Emerson Balahan Varona on 7/7/23.
//

import Foundation
import Firebase

struct UserService {
    
    static func fetchUser(withUid uid: String) async throws -> User {

        let snapshot = try await Firestore.firestore().collection("users").document(uid).getDocument()
        return try snapshot.data(as: User.self)
    }
    
    static func fetchAllUsers() async throws -> [User] {
        //var users = [User]()
        
        let snapshot = try await Firestore.firestore().collection("users").getDocuments()
        
        // DB
        return snapshot.documents.compactMap({ try? $0.data(as: User.self) })
        
        // Descomentar y comentar el código anterior si queremos imprimir la lista de usuarios por consola
        /*
        let documents = snapshot.documents
         
        for doc in documents {
            guard let user = try? doc.data(as: User.self) else { return users }
            users.append(user)
            print(doc.data())
        }
        
        return users
         */
    }
    
}
