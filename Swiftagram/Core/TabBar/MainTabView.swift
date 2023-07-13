//
//  MainTabView.swift
//  Swiftagram
//
//  Created by Emerson Balahan Varona on 27/6/23.
//

import SwiftUI

struct MainTabView: View {
    // DB
    let user: User
    
    @State private var selectedIndex = 0
    
    var body: some View {
        TabView(selection: $selectedIndex) {
            FeedView(user: user)
            //FeedView()
                .onAppear {
                    selectedIndex = 0
                }
            
                .tabItem {
                    Image(systemName: "house")
                }.tag(0)
            
            SearchView()
                .onAppear {
                    selectedIndex = 1
                }
            
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }.tag(1)

            UploadPostView(tabIndex: $selectedIndex)
                .onAppear {
                    selectedIndex = 2
                }
            
                .tabItem {
                    Image(systemName: "plus.app")
                }.tag(2)
            
            Text ("Notifications")
                .onAppear {
                    selectedIndex = 3
                }
            
                .tabItem {
                    Image(systemName: "play.square")
                }.tag(3)
            // UI
            //CurrentUserProfileView ()
            
            // MOCK
            //CurrentUserProfileView (user: User.MOCK_USERS[0])
            
            // DB
            CurrentUserProfileView (user: user)
                .onAppear {
                    selectedIndex = 4
                }
            
                .tabItem {
                    Image(systemName: "person")
                }.tag(4)
        }
        .accentColor(.black)
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        // DB
        //MainTabView()
        
        MainTabView(user: User.MOCK_USERS[0])
    }
}
