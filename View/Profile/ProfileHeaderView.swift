//
//  ProfileHeaderView.swift
//  TwitterSwiftUIClone
//
//  Created by Quantum on 16/8/2565 BE.
//

import SwiftUI

struct ProfileHeaderView: View {
    // MARK: - properties
    
    // MARK: - body
    
    var body: some View {
        VStack{
            Image(systemName: "moon")
                .resizable()
                .scaledToFill()
                .frame(width: 120, height: 120, alignment: .center)
                .cornerRadius(120 / 2)
                .shadow(color: .black, radius: 10, x: 0.0, y: 0.0)
            
            Text("Bruce Wayne")
                .font(.system(size: 16, weight: .semibold))
                .padding(.top, 8)
            
            Text("@batman")
                .font(.subheadline)
                .foregroundColor(.gray)
            
            Text("Billionaire by day, dark knight by night")
                .font(.system(size: 14))
                .padding(.top, 8)
            
            HStack{
                VStack{
                    Text("12")
                        .font(.system(size: 12))
                        .foregroundColor(.black)
                    
                    Text("Followers")
                        .font(.footnote)
                        .foregroundColor(.gray)
                }//:VSTACK
                VStack{
                    Text("12")
                        .font(.system(size: 12))
                        .foregroundColor(.black)
                    
                    Text("Followers")
                        .font(.footnote)
                        .foregroundColor(.gray)
                }//:VSTACK
            }//:HSTACK
            .padding()
            
            ProfileActionButton(isCurrentUser: false)
            
            Spacer()
            
        }//:VSTACK
    }
}
// MARK: - preview

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView()
    }
}
