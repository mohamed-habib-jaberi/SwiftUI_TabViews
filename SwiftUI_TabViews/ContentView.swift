//
//  ContentView.swift
//  SwiftUI_TabViews
//
//  Created by mohamed  habib on 20/05/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        TabView {
            
         BookListView()
                .tabItem {
                    Image(systemName: "square.stack.fill")
                    Text(verbatim: "Books")
            }.tag(0)
            
           KittySnackPicker()
            .tabItem {
                 Image(systemName: "wrench.fill")
                 Text(verbatim: "Snack Picker")
            }.tag(1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
