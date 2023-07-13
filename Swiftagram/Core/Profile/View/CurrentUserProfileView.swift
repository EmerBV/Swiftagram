//
//  CurrentUserProfileView.swift
//  Swiftagram
//
//  Created by Emerson Balahan Varona on 30/6/23.
//

import SwiftUI

struct CurrentUserProfileView: View {
    // MOCK
    let user: User
    
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
    /*
    var posts: [Post] {
        return Post.MOCK_POSTS.filter({
            $0.user?.username == user.username
        })
    }
     */
    
    var body: some View {
        NavigationStack {
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
                    //.background(.red)
                    
                    // Profile buttons
                    HStack {
                        Button {
                            
                        } label: {
                            Text("Edit")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .frame(width: 160, height: 32)
                                .background(Color(.systemGray6))
                                .foregroundColor(Color(UIColor.label))
                                .cornerRadius(6)
                        }
                        
                        Button {
                            
                        } label: {
                            Text("Share")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .frame(width: 160, height: 32)
                                .background(Color(UIColor.systemGray6))
                                .foregroundColor(Color(UIColor.label))
                                .cornerRadius(6)
                            
                            // Si queremos que tenga bordes
                                //.overlay(
                                    //RoundedRectangle(cornerRadius: 6)
                                        //.stroke(Color.gray, lineWidth: 1)
                                //)
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
                
                // MOCK & DB
                ProfileHeaderView(user: user)
                
                // MOCK
                //PostGridView(posts: posts)
                
                // DB
                PostGridView(user: user)
            }
            // UI
            //.navigationTitle("Profile")
            //.navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        
                    } label: {
                        Image(systemName: "lock")
                            .imageScale(.small)
                        
                        Text(user.username)
                            .font(.title2)
                            .fontWeight(.bold)
                            
                        Image(systemName: "chevron.down")
                            .imageScale(.small)
                            .frame(width: 3)
                    }
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack(spacing: 16) {
                        Button {
                            
                        } label: {
                            Image(systemName: "plus.app")
                        }
                        
                        Button {
                            // DB
                            AuthService.shared.signout()
                        } label: {
                            Image(systemName: "line.3.horizontal")
                        }
                    }
                }
            }
            .foregroundColor(Color(UIColor.label))
        }
    }
}

struct CurrentUserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        // UI
        //CurrentUserProfileView()
        
        // MOCK & DB
        CurrentUserProfileView(user: User.MOCK_USERS[0])
    }
}
