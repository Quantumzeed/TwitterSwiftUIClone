//
//  MessageInputView.swift
//  TwitterSwiftUIClone
//
//  Created by Quantum on 16/8/2565 BE.
//

import SwiftUI

struct MessageInputView: View {
    // MARK: - properties
    @Binding var messageText: String
    
    
    // MARK: - body
    var body: some View {
        HStack{
            TextField("message", text: $messageText)
                .textFieldStyle(PlainTextFieldStyle())
                .frame(minHeight: 30)
            
            Button(action: {}, label: {
                Text ("Send")
            })
        }//: HSATACK
        
    }
}
// MARK: - preview
struct MessageInputView_Previews: PreviewProvider {
    static var previews: some View {
        MessageInputView(messageText: .constant("Message..."))
            .previewLayout(.sizeThatFits)
    }
}
