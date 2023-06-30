//
//  MainTabView.swift
//  Swiftagram
//
//  Created by Emerson Balahan Varona on 27/6/23.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            FeedView()
                .tabItem {
                    Image(systemName: "house")
                }
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
            Text ("Upload Post")
                .tabItem {
                    Image(systemName: "plus.app")
                }
            Text ("Notifications")
                .tabItem {
                    Image(systemName: "play.square")
                }
            // UI
            //CurrentUserProfileView ()
            
            // MOCK
            CurrentUserProfileView (user: User.MOCK_USERS[0])
                .tabItem {
                    Image(systemName: "person")
                }
        }
        .accentColor(.black)
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
