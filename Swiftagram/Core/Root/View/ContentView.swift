//
//  ContentView.swift
//  Swiftagram
//
//  Created by Emerson Balahan Varona on 27/6/23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ContentViewModel()
    
    // DB
    @StateObject var registrationViewModel = RegistrationViewModel()
    
    var body: some View {
        Group {
            if viewModel.userSession == nil {
                LoginView()
                // DB
                    .environmentObject(registrationViewModel)
            /*
            } else {
                MainTabView()
            }
             */
            
            // DB
            } else if let currentUser = viewModel.currentUser {
                MainTabView(user: currentUser)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
