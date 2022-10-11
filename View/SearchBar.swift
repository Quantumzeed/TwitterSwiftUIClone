//
//  SearchBar.swift
//  TwitterSwiftUIClone
//
//  Created by Quantum on 15/8/2565 BE.
//

import SwiftUI

struct SearchBar: View {
    // MARK: - properties
    @Binding var text: String
    // MARK: - body
    var body: some View {
        HStack{
            TextField("Search...", text: $text)
                .padding(8)
                .padding(.horizontal, 24)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .overlay(
                    HStack{
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .leading)
                            .padding(.leading,8)
                    }//:HSTACK
                )
                
        }//:HSTACK
    }
}

// MARK: - preview

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(text: .constant("Search..."))
    }
}
