//
//  FeedView.swift
//  TwitterSwiftUIClone
//
//  Created by Quantum on 15/8/2565 BE.
//

import SwiftUI

struct FeedView: View {
    // MARK: - properties
    
    // MARK: - body
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            ScrollView {
                VStack {
                    ForEach(0..<100) { _ in
                        TweetCell()
                    }//;LOOP
                }//:VSTACK
            }//:Scroll
            
            Button(action: {}, label: {
                Image(systemName: "plus")
                    .resizable()
                    .frame(width: 32 , height: 32)
                    .padding()
            })
            .background(Color.blue)
            .foregroundColor(.white)
            .clipShape(Circle())
            .padding()
        }//:ZSTACK
    }
}
// MARK: - preview
struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
