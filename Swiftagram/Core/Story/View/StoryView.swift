//
//  StoryView.swift
//  Swiftagram
//
//  Created by Emerson Balahan Varona on 13/7/23.
//

import SwiftUI

struct StoryView: View {
    
    // DB
    @StateObject var viewModel = StoryViewModel()
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 2) {
                ForEach(viewModel.users) { user in
                    NavigationLink(
                        destination: ProfileView(user: user)
                            .navigationBarBackButtonHidden()
                    ) {
                        VStack {
                            CircularProfileImageView(user: user, size: .medium)
                                .overlay(
                                    Circle()
                                        .stroke(
                                            LinearGradient(colors: [.blue, .purple, .red, .pink, .yellow, .orange], startPoint: .topLeading, endPoint: .bottomTrailing)
                                            , lineWidth: 2.5
                                        )
                                        .frame(width: 70, height: 70)
                                )
                            
                            Text(user.username)
                                .font(.caption)
                        }
                        .foregroundColor(Color(UIColor.label))
                        .padding(.horizontal)
                    }
                }
            }
            .padding(.top, 8)
        }
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView()
    }
}
