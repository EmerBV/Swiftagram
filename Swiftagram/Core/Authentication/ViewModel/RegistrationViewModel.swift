//
//  RegistrationViewModel.swift
//  Swiftagram
//
//  Created by Emerson Balahan Varona on 2/7/23.
//

import Foundation

class RegistrationViewModel: ObservableObject {
    @Published var username = ""
    @Published var email = ""
    @Published var password = ""
    
    func createUser() async throws {
        try await AuthService.shared.createUser(email: email, password: password, username: username)
    }
}
