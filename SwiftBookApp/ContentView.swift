//
//  ContentView.swift
//  SwiftBookApp
//
//  Created by Jack Sp@rroW on 18.06.2019.
//  Copyright © 2019 Jack Sp@rroW. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    
    var categories: [String: [ProductsResponse]] {
        .init(grouping: materialResponse, by: {$0.category.rawValue})
    }
    var body: some View {
        NavigationView {
            List { 
                Cell(user: swiftbook)
                    .listRowInsets(EdgeInsets())
                ForEach(self.categories.keys.sorted().identified(by: \.self)) { key in
                    ProductRow(categoryName: key, items: self.categories[key]!)
                    
                    } .listRowInsets(EdgeInsets())
                
                NavigationButton(destination: FriendsList()) {
                    Text("Наши преподователи")
                }
                }.navigationBarTitle(Text("Homepage"))
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
