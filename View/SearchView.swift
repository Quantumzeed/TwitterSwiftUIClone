//
//  SearchView.swift
//  TwitterSwiftUIClone
//
//  Created by Quantum on 15/8/2565 BE.
//

import SwiftUI

struct SearchView: View {
    // MARK: - properties
    @State var searchText = ""
    // MARK: - body
    var body: some View {
        ScrollView {
            SearchBar(text: $searchText)
                .padding()
            
            VStack(alignment: .leading){
                ForEach(0..<10){ _ in
                    HStack{Spacer()}
                    NavigationLink(destination: UserProfileView() , label: {
                        UserCell()
                    })
                    
                }
                
            }//:VSTACK
            .padding()
        }//:ScrollView
    }
}

// MARK: - preview
struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
