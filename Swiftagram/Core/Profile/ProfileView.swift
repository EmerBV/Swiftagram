//
//  ProfileView.swift
//  Swiftagram
//
//  Created by Emerson Balahan Varona on 27/6/23.
//

import SwiftUI

struct ProfileView: View {
    
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                // Header
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
                    
                    // Edit profile button
                    Button {
                        
                    } label: {
                        Text("Edit Profile")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 360, height: 32)
                            .foregroundColor(.black)
                            .overlay(
                                RoundedRectangle(cornerRadius: 6)
                                    .stroke(Color.gray, lineWidth: 1)
                            )
                    }
                    
                    Divider()
                }
                
                // Post grid view
                LazyVGrid(columns: gridItems, spacing: 1) {
                    ForEach(0...15, id: \.self ) { index in
                        Image("noimage")
                            .resizable()
                            .scaledToFill()
                    }
                }
            }
            //.navigationTitle("Profile")
            //.navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        
                    } label: {
                        Image(systemName: "lock")
                            .foregroundColor(.black)
                            .imageScale(.small)
                        Text("emer88")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                        Image(systemName: "chevron.down")
                            .imageScale(.small)
                            .foregroundColor(.black)
                            .frame(width: 3)
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack(spacing: 16) {
                        Button {
                            
                        } label: {
                            Image(systemName: "plus.app")
                                .foregroundColor(.black)
                        }
                        Button {
                            
                        } label: {
                            Image(systemName: "line.3.horizontal")
                                .foregroundColor(.black)
                        }
                    }
                }
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
