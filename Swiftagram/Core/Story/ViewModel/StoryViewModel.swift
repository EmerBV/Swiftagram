//
//  StoryViewModel.swift
//  Swiftagram
//
//  Created by Emerson Balahan Varona on 13/7/23.
//

import Foundation

class StoryViewModel: ObservableObject {
    @Published var users = [User]()
    
    init() {
        Task { try await fetchAllUsers() }
    }
    
    @MainActor
    func fetchAllUsers() async throws {
        self.users = try await UserService.fetchAllUsers()
    }
}
