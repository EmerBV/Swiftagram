//
//  SearchView.swift
//  Swiftagram
//
//  Created by Emerson Balahan Varona on 28/6/23.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    
    // DB
    @StateObject var viewModel = SearchViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 12) {
                    // UI
                    /*
                    ForEach(0...10, id: \.self) { user in
                        HStack {
                            Image("emptyuser")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 40, height: 40)
                                .background(.gray)
                            .clipShape(Circle())
                            
                            VStack(alignment: .leading) {
                                Text("username")
                                    .fontWeight(.semibold)
                                
                                Text("name")
                            }
                            .font(.footnote)
                            
                            Spacer()
                        }
                        .padding(.horizontal)
                    }
                    */
                    
                    // MOCK
                    /*
                    ForEach(User.MOCK_USERS) { user in
                        NavigationLink(value: user) {
                            HStack {
                                Image(user.profileImageUrl ?? "")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 40, height: 40)
                                    .background(.gray)
                                .clipShape(Circle())
                                
                                VStack(alignment: .leading) {
                                    Text(user.username)
                                        .fontWeight(.semibold)
                                    
                                    if let fullname = user.fullname {
                                        Text(fullname)
                                    }
                                }
                                .font(.footnote)
                                
                                Spacer()
                            }
                            .foregroundColor(Color(UIColor.label))
                            .padding(.horizontal)
                        }
                        */
                    
                    // DB
                    ForEach(viewModel.users) { user in
                        NavigationLink(value: user) {
                            HStack {
                                Image(systemName: "person.circle")
                                    .resizable()
                                    .scaledToFill()
                                    .foregroundColor(.gray)
                                    .frame(width: 40, height: 40)
                                    .clipShape(Circle())
                                
                                VStack(alignment: .leading) {
                                    Text(user.username)
                                        .fontWeight(.semibold)
                                    
                                    if let fullname = user.fullname {
                                        Text(fullname)
                                    }
                                }
                                .font(.footnote)
                                
                                Spacer()
                            }
                            .foregroundColor(Color(UIColor.label))
                            .padding(.horizontal)
                        }
                    }
                }
                .padding(.top, 8)
                .searchable(text: $searchText, prompt: "Search...")
            }
            
            // UI
            /*
            .navigationDestination(for: User.self, destination: { user in ProfileView()
                    .navigationBarBackButtonHidden()
            })
             */
            
            // MOCK
            .navigationDestination(for: User.self, destination: { user in ProfileView(user: user)
                    .navigationBarBackButtonHidden()
            })
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
