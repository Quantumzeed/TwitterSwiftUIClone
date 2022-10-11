//
//  NewMessageView.swift
//  TwitterSwiftUIClone
//
//  Created by Quantum on 16/8/2565 BE.
//

import SwiftUI

struct NewMessageView: View {
    // MARK: - properties
    @State var searchText = ""
    @Binding var show: Bool
    @Binding var startChat: Bool
    
    // MARK: - body
    
    var body: some View {
        ScrollView{
            SearchBar(text: $searchText)
                .padding()
            
            VStack(alignment: .leading){
                ForEach(0..<10){ _ in
                    HStack{ Spacer()}
                    Button(action: {
                        self.show.toggle()
                        self.startChat.toggle()
                    },
                           label: {
                        UserCell()
                    })
                    
                }
            }//:VSTACK
            .padding(.leading)
        }//:ScrollView
    }
}
// MARK: -  preview

struct NewMessageView_Previews: PreviewProvider {
    static var previews: some View {
        NewMessageView(show: .constant(true), startChat: .constant(true))
    }
}
