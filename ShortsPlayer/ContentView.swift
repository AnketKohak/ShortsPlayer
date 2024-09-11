//
//  ContentView.swift
//  ShortsPlayer
//
//  Created by Anket Kohak on 11/09/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack{
                ForEach(Query.allCases,id: \.self){
                    searchQuery in
                    QueryTag(query: searchQuery, isSelected:false)
                    
                }
            }
        }
        .background(Color("AccentColor"))
    }
}

#Preview {
    ContentView()
}
