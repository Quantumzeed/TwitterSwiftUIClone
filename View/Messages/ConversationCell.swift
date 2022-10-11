//
//  ConversationCell.swift
//  TwitterSwiftUIClone
//
//  Created by Quantum on 15/8/2565 BE.
//

import SwiftUI

struct ConversationCell: View {
    // MARK: - properties
    
    // MARK: - body
    
    var body: some View {
        HStack(alignment: .top){
            Image(systemName: "sun.max.fill")
                .resizable()
                .scaledToFill()
                .clipped()
                .frame(width: 56, height: 56)
                .cornerRadius(56/2)
            
            VStack(alignment: .leading){
                
                    Text("Bruce Wayne")
                        .font(.system(size: 14, weight: .semibold))
//                    Text("@batman")
//                        .foregroundColor(.gray)
//                    Text("2m")
//                        .foregroundColor(.gray)
                    Text("Longer message text to use what happens when i do this Longer message text to use what happens when i do this Longer message text to use what happens when i do this")
                        .font(.system(size: 15))
                        .lineLimit(2)
    //                    .multilineTextAlignment(.leading)
               
                
                
            }//: VSTACK
            .foregroundColor(.black)
            .padding(.trailing)
            
        }//: HSTACK
        
        Divider()
    }
}
// MARK: -  preview
struct ConversationCell_Previews: PreviewProvider {
    static var previews: some View {
        ConversationCell()
            .previewLayout(.sizeThatFits)
    }
}
