//
//  FeedView.swift
//  Swiftagram
//
//  Created by Emerson Balahan Varona on 28/6/23.
//

import SwiftUI

struct FeedView: View {
    
    let user: User
    
    // DB
    @StateObject var viewModel = FeedViewModel()
    
    var body: some View {
        NavigationStack {
            // UI
            /*
            ScrollView {
                LazyVStack(spacing: 32) {
                    ForEach(0...10, id: \.self) { post in FeedCell()
                    }
                }
                .padding(.top, 8)
            }

            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        
                    } label: {
                        Image("logo")
                            .resizable()
                            .frame(width: 120, height: 32)
                        Image(systemName: "chevron.down")
                            .imageScale(.small)
                            .foregroundColor(Color(UIColor.label))
                            .frame(width: 3)
                        
                    }
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack(spacing: 16) {
                        Button {
                            
                        } label: {
                            Image(systemName: "heart")
                                .imageScale(.large)
                                .foregroundColor(Color(UIColor.label))
                        }
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "paperplane")
                                .imageScale(.large)
                                .foregroundColor(Color(UIColor.label))
                        }
                    }
                }
            }
        }
        */
            
            // MOCK
            /*
            ScrollView {
                LazyVStack(spacing: 32) {
                    ForEach(Post.MOCK_POSTS) { post in FeedCell(post: post)
                    }
                }
                .padding(.top, 8)
            }

            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        
                    } label: {
                        Image("logo")
                            .resizable()
                            .frame(width: 120, height: 32)
                        Image(systemName: "chevron.down")
                            .imageScale(.small)
                            .foregroundColor(Color(UIColor.label))
                            .frame(width: 3)
                        
                    }
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack(spacing: 16) {
                        Button {
                            
                        } label: {
                            Image(systemName: "heart")
                                .imageScale(.large)
                                .foregroundColor(Color(UIColor.label))
                        }
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "paperplane")
                                .imageScale(.large)
                                .foregroundColor(Color(UIColor.label))
                        }
                    }
                }
            }
            */
            
            // DB
            ScrollView {
                StoryView()
                    .padding(.top, 8)
                
                LazyVStack(spacing: 32) {
                    ForEach(viewModel.posts) { post in FeedCell(post: post)
                    }
                }
                .padding(.top, 8)
            }

            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        
                    } label: {
                        Image("logo")
                            .resizable()
                            .frame(width: 120, height: 32)
                        Image(systemName: "chevron.down")
                            .imageScale(.small)
                            .foregroundColor(Color(UIColor.label))
                            .frame(width: 3)
                        
                    }
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack(spacing: 16) {
                        Button {
                            
                        } label: {
                            Image(systemName: "heart")
                                .imageScale(.large)
                                .foregroundColor(Color(UIColor.label))
                        }
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "paperplane")
                                .imageScale(.large)
                                .foregroundColor(Color(UIColor.label))
                        }
                    }
                }
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        //FeedView()
        FeedView(user: User.MOCK_USERS[0])
    }
}
