//
//  ProfileHeaderView.swift
//  Swiftagram
//
//  Created by Emerson Balahan Varona on 30/6/23.
//

import SwiftUI

struct ProfileHeaderView: View {
    let user: User
    
    var body: some View {
        VStack(spacing: 10) {
            HStack {
                Image(user.profileImageUrl ?? "")
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
                
                if let fullname = user.fullname {
                    Text(fullname)
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
                
                if let bio = user.bio {
                    Text(bio)
                        .font(.footnote)
                }
                
                //Text(user.username)
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
                
                //Spacer()
                
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
                
                //Spacer()
                
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
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView(user: User.MOCK_USERS[0])
    }
}
