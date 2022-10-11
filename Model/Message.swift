//
//  Message.swift
//  TwitterSwiftUIClone
//
//  Created by Quantum on 16/8/2565 BE.
//

import Foundation

struct MockMessage: Identifiable {
    let id: Int
    let imageName: String
    let messageText: String
    let isCurrentUser: Bool
    
}


let MOCK_MESSAGE: [MockMessage] = [
    .init(id: 0, imageName: "moon", messageText: "Hey what's up ", isCurrentUser: false),
    .init(id: 1, imageName: "moon.fill", messageText: "Hey what's up ", isCurrentUser: true),
    .init(id: 2, imageName: "moon.fill", messageText: "what's up ", isCurrentUser: true),
    .init(id: 3, imageName: "moon", messageText: "Hey what's up ", isCurrentUser: false),
    .init(id: 4, imageName: "moon", messageText: "what's up ", isCurrentUser: false),
    .init(id: 5, imageName: "moon.fill", messageText: "Hey what's up ", isCurrentUser: true)
]
