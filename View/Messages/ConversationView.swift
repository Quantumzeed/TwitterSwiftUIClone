//
//  ConversationView.swift
//  TwitterSwiftUIClone
//
//  Created by Quantum on 15/8/2565 BE.
//

import SwiftUI

struct ConversationView: View {
    // MARK: -  properties
    @State var isShowNewMessageView = false
    @State var showChat = false
    // MARK: - body
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            NavigationLink(destination: ChatView(),
                           isActive: $showChat,
                           label: {})
            
            
            ScrollView {
                VStack {
                    ForEach(0..<10) { _ in
                        NavigationLink(destination: ChatView () , label: {
                                ConversationCell()
                        })
                    }//;LOOP
                }//:VSTACK
                .padding()
            }//:Scroll
            
            Button(action: {self.isShowNewMessageView.toggle()}, label: {
                Image(systemName: "envelope")
                    .resizable()
                    .frame(width: 32 , height: 32)
                    .padding()
            })//:BUTTON
            .background(Color.blue)
            .foregroundColor(.white)
            .clipShape(Circle())
            .padding()
            .sheet(isPresented: $isShowNewMessageView, content: {NewMessageView(show: $isShowNewMessageView, startChat: $showChat)})
        }//:ZSTACK
    }
}
// MARK: - preview
struct ConversationView_Previews: PreviewProvider {
    static var previews: some View {
        ConversationView()
    }
}
