//
//  UserProfileView.swift
//  TwitterSwiftUIClone
//
//  Created by Quantum on 16/8/2565 BE.
//

import SwiftUI

struct UserProfileView: View {
    
    // MARK: -  properties

    
    //@ObservedObject var viewModel: ProfileViewModel
    @State var selectFilter: TweetFilterOption = .tweets
    
    
    // MARK: - body
    
    var body: some View {
        ScrollView{
            VStack{
                ProfileHeaderView()
                    .padding()
                
                FilterButtonView(selectOption: $selectFilter)
                    .padding()
                
                
                ForEach(0..<9) { tweet in
                    TweetCell()
                }//:loop
                
                
            }//:VSTACK
            .navigationTitle("batman")
        }//:SCROLLVIEW
    }
}

// MARK: - preview

struct UserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileView()
    }
}
