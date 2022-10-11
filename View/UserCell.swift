//
//  UserCell.swift
//  TwitterSwiftUIClone
//
//  Created by Quantum on 15/8/2565 BE.
//

import SwiftUI

struct UserCell: View {
    // MARK: - properties
    
    // MARK: - body
    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: "sun.max.fill")
                .resizable()
                .scaledToFill()
                .clipped()
                .frame(width: 56, height: 56, alignment: .center)
            VStack(alignment: .leading, spacing: 4){
                Text("batman")
                    .font(.system(size: 14, weight: .semibold))
                Text("Bruce Wayne")
                    .font(.system(size: 14))
            }
        }
    }
}

// MARK: - preview
struct UserCell_Previews: PreviewProvider {
    static var previews: some View {
        UserCell()
            .previewLayout(.sizeThatFits)
    }
}
