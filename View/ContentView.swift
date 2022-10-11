//
//  ContentView.swift
//  TwitterSwiftUIClone
//
//  Created by Quantum on 15/8/2565 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // MARK: - properties
        
        // MARK: - body
        NavigationView {
            
            TabView{
                FeedView()
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                    }
                    
                
                SearchView()
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                    }
                
                Text("notification")
                    .tabItem {
                        Image(systemName: "bell")
                        Text("Notification")
                    }
                
                
                ConversationView()
                    .tabItem {
                        Image(systemName: "envelope")
                        Text("Message")
                    }

                
                
            }
            .navigationBarTitle("Home")
            .navigationBarTitleDisplayMode(.inline)

            
            
            
        }
    }
}
// MARK: - preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
