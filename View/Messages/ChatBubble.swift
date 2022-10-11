//
//  ChatBubble.swift
//  TwitterSwiftUIClone
//
//  Created by Quantum on 16/8/2565 BE.
//

import SwiftUI

struct ChatBubble: Shape {
    // MARK: - properties
    var isFromCurrentUser : Bool
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .topRight, isFromCurrentUser ? .bottomLeft : .bottomRight], cornerRadii: CGSize(width: 16, height: 16))
        
        return Path(path.cgPath)
    }
    

    // MARK: - body
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
}
// MARK: - preview
struct ChatBubble_Previews: PreviewProvider {
    static var previews: some View {
        ChatBubble(isFromCurrentUser: false)
    }
}
