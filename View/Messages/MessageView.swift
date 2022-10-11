//
//  MessageView.swift
//  TwitterSwiftUIClone
//
//  Created by Quantum on 16/8/2565 BE.
//

import SwiftUI

struct MessageView: View {
    // MARK: -  properties
    let message: MockMessage
    // MARK: - body
    

    var body: some View {
        HStack {
            if message.isCurrentUser {
                Spacer()
                Text(message.messageText)
                    .padding()
                    .background(Color.blue)
                    .clipShape(ChatBubble(isFromCurrentUser: true))
                    .foregroundColor(.white)
                    .padding(.horizontal)
            } else {
                
                HStack(alignment: .bottom) {
                    Image(systemName: message.imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 40, height: 40)
                    Text(message.messageText)
                        .padding()
                        .background(Color(.systemGray5))
                        .clipShape(ChatBubble(isFromCurrentUser: false))
                        .foregroundColor(.black)
                    
                }
                .padding(.horizontal)
                
                Spacer()
            }
        }
    }
}
// MARK: - preview
struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView(message: MOCK_MESSAGE[0])
    }
}
