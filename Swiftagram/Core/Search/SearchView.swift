//
//  SearchView.swift
//  Swiftagram
//
//  Created by Emerson Balahan Varona on 28/6/23.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 12) {
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
                }
                .padding(.top, 8)
                .searchable(text: $searchText, prompt: "Search...")
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
