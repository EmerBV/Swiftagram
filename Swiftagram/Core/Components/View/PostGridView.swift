//
//  PostGridView.swift
//  Swiftagram
//
//  Created by Emerson Balahan Varona on 30/6/23.
//

import SwiftUI
import Kingfisher

struct PostGridView: View {
    // MOCK
    /*
    let user: User
    var posts: [Post]
     */
    
    // DB
    @StateObject var viewModel: PostGridViewModel
    
    init(user: User) {
        self._viewModel = StateObject(wrappedValue: PostGridViewModel(user: user))
    }
    
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)
    ]
    
    private let imageDimension: CGFloat = (UIScreen.main.bounds.width / 3) - 1
    
    var body: some View {
        LazyVGrid(columns: gridItems, spacing: 1) {
            // MOCK
            /*
            ForEach(posts) { post in
                Image(post.imageUrl)
                    .resizable()
                    .scaledToFill()
                    .frame(width: imageDimension, height: imageDimension)
                    .clipped()
            }
             */
            
            // DB
            ForEach(viewModel.posts) { post in
                KFImage(URL(string: post.imageUrl))
                    .resizable()
                    .scaledToFill()
                    .frame(width: imageDimension, height: imageDimension)
                    .clipped()
            }
        }
    }
}

struct PostGridView_Previews: PreviewProvider {
    static var previews: some View {
        // MOCK
        //PostGridView(posts: Post.MOCK_POSTS)
        
        // DB
        PostGridView(user: User.MOCK_USERS[0])
    }
}
