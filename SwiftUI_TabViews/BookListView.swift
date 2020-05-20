//
//  BookListView.swift
//  SwiftUI_TabViews
//
//  Created by mohamed  habib on 20/05/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import SwiftUI

struct BookListView: View {
  
  @State private var isPresented = false
  @State private var selectedBook: Book? = nil
  
  var body: some View {
    
    NavigationView {
      ZStack {
        ScrollView(.horizontal, showsIndicators: false) {
          
          HStack {
            
            ForEach(Book.demoBooks) { book in
              GeometryReader { proxy in
                
                NavigationLink(destination: BookDetailView(book: book)) {
                  BookView(book: book, proxy: proxy)
                }
                
              }
              .frame(width: 200, height: 300)
            }
          }
        }
        Spacer()
        .layoutPriority(1)
      }
      .background(Color.black)
        .edgesIgnoringSafeArea(.bottom)
        .navigationBarTitle("RW Swift Books")
        
        .navigationBarItems(trailing:
          Button(action: {
            self.isPresented.toggle()
          }, label: {
            Text("Help")
          }))
        
        .sheet(isPresented: self.$isPresented, content: {
          HelpView()
        })
    }
    
    
  }
}

extension Color {
  static let myGreen = Color(red: 21/255, green: 132/255, blue: 67/255)
}
