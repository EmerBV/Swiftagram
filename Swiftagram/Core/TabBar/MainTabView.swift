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
            Text ("Search")
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
            ProfileView ()
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
