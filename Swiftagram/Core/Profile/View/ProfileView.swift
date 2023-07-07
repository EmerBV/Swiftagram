//
//  ProfileView.swift
//  Swiftagram
//
//  Created by Emerson Balahan Varona on 27/6/23.
//

import SwiftUI

struct ProfileView: View {
    // MOCK
    let user: User
    
    @Environment(\.dismiss) var dismiss
    
    // UI
    /*
     private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)
     ]
     
     private let imageDimension: CGFloat = (UIScreen.main.bounds.width / 3) - 1
     */
    
    // MOCK
    var posts: [Post] {
        return Post.MOCK_POSTS.filter({
            $0.user?.username == user.username
        })
    }
    
    var body: some View {
        ScrollView {
            // Header
            // UI
            /*
            VStack(spacing: 10) {
                // Pic and stats
                HStack {
                    Image("icon")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 80, height: 80)
                        .clipShape(Circle())
                    
                    Spacer()
                    
                    HStack(spacing: 8) {
                        UserStatView(value: 3, title: "Posts")
                        
                        UserStatView(value: 3, title: "Followers")
                        
                        UserStatView(value: 3, title: "Following")
                    }
                }
                .padding(.horizontal)
                
                // Name and bio
                VStack(alignment: .leading, spacing: 4) {
                    
                    Text("Emerson")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    Text("iOS Developer")
                        .font(.footnote)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
                
                // Profile buttons
                HStack {
                    Button {
                        
                    } label: {
                        Text("Follow")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 160, height: 32)
                            .background(Color(.systemBlue))
                            .foregroundColor(.white)
                            .cornerRadius(6)
                    }
                    
                    Button {
                        
                    } label: {
                        Text("Message")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 160, height: 32)
                            .background(Color(UIColor.systemGray6))
                            .foregroundColor(Color(UIColor.label))
                            .cornerRadius(6)
                    }
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "person.badge.plus")
                            .frame(width: 30, height: 32)
                            .background(Color(UIColor.systemGray6))
                            .foregroundColor(Color(UIColor.label))
                            .cornerRadius(6)
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.horizontal)
                
                Divider()
            }
            
            // Post grid view
            // UI
            LazyVGrid(columns: gridItems, spacing: 1) {
                ForEach(0...15, id: \.self ) { index in
                    Image("noimage")
                        .resizable()
                        .scaledToFill()
                        .frame(width: imageDimension, height: imageDimension)
                        .clipped()
                }
            }
            */
            
            // MOCK
            ProfileHeaderView(user: user)
            
            PostGridView(posts: posts)
        }
        // UI
        //.navigationTitle("Profile")
        .navigationTitle(user.username)
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Image(systemName: "chevron.left")
                    .imageScale(.large)
                    .onTapGesture {
                        dismiss()
                    }
            }
            
            ToolbarItem(placement: .navigationBarTrailing) {
                HStack(spacing: 16) {
                    Button {
                        
                    } label: {
                        Image(systemName: "bell")
                    }
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "ellipsis")
                    }
                }
            }
        }
        .foregroundColor(Color(UIColor.label))
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        // UI
        //ProfileView()
        
        // MOCK
        ProfileView(user: User.MOCK_USERS[0])
    }
}
