//
//  AuthService.swift
//  Swiftagram
//
//  Created by Emerson Balahan Varona on 1/7/23.
//

import Foundation
import FirebaseAuth
import FirebaseFirestoreSwift
import Firebase

class AuthService {
    
    @Published var userSession: FirebaseAuth.User?
    @Published var currentUser: User?
    
    static let shared = AuthService()
    
    init() {
        Task { try await loadUserData() }
    }
    
    @MainActor
    func login(withEmail email: String, password: String) async throws {
        
        do {
            let result = try await Auth.auth().signIn(withEmail: email, password: password)
            self.userSession = result.user
            try await loadUserData()
        } catch {
            print("DEBUG: Failed to log in with error \(error.localizedDescription)")
        }
        
    }
    
    @MainActor
    func createUser(email: String, password: String, username: String) async throws {
    
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            self.userSession = result.user
            print("DEBUG: Did create user...")
            await uploadUserData(uid: result.user.uid, username: username, email: email)
            print("DEBUG: Did upload user data...")
        } catch {
            print("DEBUG: Failed to register user with error \(error.localizedDescription)")
        }
        
        print("Email is \(email)")
        print("Password is \(password)")
        print("Username is \(username)")
        
    }
    
    @MainActor
    func loadUserData() async throws {
        self.userSession = Auth.auth().currentUser
        guard let currentUid = userSession?.uid else { return }
        let snapshot = try await Firestore.firestore().collection("users").document(currentUid).getDocument()
        self.currentUser = try? snapshot.data(as: User.self)
        //print("DEBUG: Snapshot data is \(snapshot.data())")
        print("DEBUG: Snapshot data is \(String(describing: snapshot.data()))")
    }
    
    func signout() {
        try? Auth.auth().signOut()
        self.userSession = nil
        self.currentUser = nil
    }
    
    private func uploadUserData(uid: String, username: String, email: String) async {
        let user = User(id: uid, username: username, email: email)
        self.currentUser = user
        guard let encodedUser = try? Firestore.Encoder().encode(user) else { return }
        try? await Firestore.firestore().collection("users").document(user.id).setData(encodedUser)
    }
    
}
