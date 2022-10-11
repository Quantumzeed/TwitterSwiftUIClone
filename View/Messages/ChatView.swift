//
//  ChatView.swift
//  TwitterSwiftUIClone
//
//  Created by Quantum on 16/8/2565 BE.
//

import SwiftUI

struct ChatView: View {
    // MARK: - properties
    @State var messageText: String = ""
    // MARK: - body
    
    var body: some View {
        VStack{
            ScrollView{
                VStack{
                    ForEach(MOCK_MESSAGE){ message in
                        MessageView(message: message)
                    }//:LOOP
                }//:VSTACK
            }//: SCROLLVIEW
            .padding(.top)
            Divider()
            MessageInputView(messageText: $messageText)
                .padding()
        }//:VSTACK
    }
}
// MARK: - preview

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}


