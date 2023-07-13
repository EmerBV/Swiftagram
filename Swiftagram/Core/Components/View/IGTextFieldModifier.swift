//
//  IGTextFieldModifier.swift
//  Swiftagram
//
//  Created by Emerson Balahan Varona on 30/6/23.
//

import SwiftUI

// Creamos este componente para que sea reutilizable
struct IGTextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal, 24)
    }
}
