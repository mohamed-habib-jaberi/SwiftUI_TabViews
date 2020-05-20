//
//  KittySnackPicker.swift
//  SwiftUI_TabViews
//
//  Created by mohamed  habib on 20/05/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import SwiftUI

struct KittySnackPicker: View {
  
  let treats = Treat.treats
  
  @State var selectedSnackIndex = 0
  @State var isOn = false
  @State var textValue = ""
  
  var body: some View {
    NavigationView {
      Form {
        Section {
          Picker(selection: $selectedSnackIndex, label: Text("Snack Type")) {
            ForEach(0 ..< treats.count) {
              Text(self.treats[$0].name).tag($0)
            }
          }
          .pickerStyle(DefaultPickerStyle())
        }
        
        Section {
          Toggle(isOn: $isOn) {
            Text("Would you like Milk?")
          }
          if isOn {
            Text("Milk will cost an extra $0.99")
              .foregroundColor(.gray)
              .font(Font.system(size: 12))
          }
        }
        
        Section {
          TextField("Special Requests", text: $textValue)
        }
        
        Section {
          Button(action: {
            
          }) {
            HStack {
              Image(systemName: "paperplane")
                .foregroundColor(.blue)
              Text("Place Order")
            }
          }
        }
        .listStyle(GroupedListStyle())
      }
      .navigationBarTitle(Text("Order Kitty Snacks"))
    }
  }
}

struct KittySnackPicker_Previews: PreviewProvider {
  static var previews: some View {
    KittySnackPicker()
  }
}
