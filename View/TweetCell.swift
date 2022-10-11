//
//  TweetCell.swift
//  TwitterSwiftUIClone
//
//  Created by Quantum on 15/8/2565 BE.
//

import SwiftUI

struct TweetCell: View {
    var body: some View {
        // MARK: - properties
        
        // MARK: - body
        VStack{
            HStack(alignment: .top){
                Image(systemName: "sun.max")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width: 56, height: 56)
                    .cornerRadius(56/2)
                
                VStack(alignment: .leading){
                    HStack {
                        Text("Bruce Wayne")
                            .font(.system(size: 14, weight: .semibold))
                        Text("@batman")
                            .foregroundColor(.gray)
                        Text("2m")
                            .foregroundColor(.gray)
                    }
                    
                    Text("It's not who I am underneath, but what I do that defines me ")
                        .multilineTextAlignment(.leading)
                }//: VSTACK
            }//: HSTACK
            HStack{
                
                Button(action: {}, label: {
                    Image(systemName: "bubble.left")
                        .font(.system(size: 16))
                        .frame(width: 32, height: 32)
                        .foregroundColor(.gray)

                })
                Spacer()
                Button(action: {}, label: {
                    Image(systemName: "arrow.2.squarepath")
                        .font(.system(size: 16))
                        .frame(width: 32, height: 32)
                        .foregroundColor(.gray)

                })
                Spacer()
                Button(action: {}, label: {
                    Image(systemName: "heart")
                        .font(.system(size: 16))
                        .frame(width: 32, height: 32)
                        .foregroundColor(.gray)
                })
                Spacer()
                Button(action: {}, label: {
                    Image(systemName: "bookmark")
                        .font(.system(size: 16))
                        .frame(width: 32, height: 32)
                        .foregroundColor(.gray)
                })

            }
            .padding(.horizontal)
            
        }//: VSTACK
        .padding()
    }
}


// MARK: - preview
struct TweetCell_Previews: PreviewProvider {
    static var previews: some View {
        TweetCell()
            .previewLayout(.sizeThatFits)
           
    }
}
