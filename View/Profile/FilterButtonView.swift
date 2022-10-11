//
//  FilterButtonView.swift
//  TwitterSwiftUIClone
//
//  Created by Quantum on 16/8/2565 BE.
//

import SwiftUI


enum TweetFilterOption: Int, CaseIterable {
    case tweets
    case replies
    case likes
    
    var title: String {
        switch self {
        case .tweets: return "Tweets"
        case .replies: return "Tweets & Replies"
        case .likes: return "Like"
        }
    }
}


struct FilterButtonView: View {
    // MARK: - properties

    
    @Binding var selectOption: TweetFilterOption
    
    private let underlineWidth = UIScreen.main.bounds.width/CGFloat(TweetFilterOption.allCases.count)
    
    private var padding : CGFloat{
        let rawValue = CGFloat(selectOption.rawValue)
        let count = CGFloat(TweetFilterOption.allCases.count)
        return ((UIScreen.main.bounds.width / count) * rawValue) + 16
    }
    
     // MARK: - body
    
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                ForEach(TweetFilterOption.allCases, id: \.self) { option in

                    Button(action: {
                        self.selectOption = option
                    }, label: {
                        Text(option.title)
                            .frame(width: underlineWidth )
                    })
                }//:loop
            }//:HSTACK
            Rectangle()
                .frame(width: underlineWidth - 32, height: 3, alignment: .center)
                .foregroundColor(.blue)
                .padding(.leading, padding)
                .animation(.easeInOut(duration: 0.5))
        }//:Vstack
    }
}
// MARK: - preview

struct FilterButtonView_Previews: PreviewProvider {
    static var previews: some View {
        FilterButtonView(selectOption: .constant(.likes))
    }
}
