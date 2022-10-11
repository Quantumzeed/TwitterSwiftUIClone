//
//  ProfileActionButton.swift
//  TwitterSwiftUIClone
//
//  Created by Quantum on 16/8/2565 BE.
//

import SwiftUI

struct ProfileActionButton: View {
    // MARK: - properties
    let isCurrentUser: Bool
    // MARK: - body
    var body: some View {
        if isCurrentUser {
            Button(action: {}, label: {
                Text("Edit Profile")
                    .frame(width: 360, height: 40, alignment: .center)
                    .foregroundColor(.white)
                    .background(.blue)
            })
            .cornerRadius(20)
        } else {
            HStack{
                Button(action: {}, label: {
                    Text("Follow")
                        .frame(width: 180, height: 40, alignment: .center)
                        .background(.blue)
                        .foregroundColor(.white)
                })//:Button
                .cornerRadius(20)
                
                Button(action: {}, label: {
                    Text("Message")
                        .frame(width: 180, height: 40, alignment: .center)
                        .background(.purple)
                        .foregroundColor(.white)
                })//:Button
                .cornerRadius(20)
            }//:HSTACK
        }//:else
    }
}
// MARK: - preview
struct ProfileActionButton_Previews: PreviewProvider {
    static var previews: some View {
        ProfileActionButton(isCurrentUser: false)
    }
}
