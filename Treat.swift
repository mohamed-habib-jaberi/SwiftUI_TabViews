//
//  Treat.swift
//  SwiftUI_TabViews
//
//  Created by mohamed  habib on 20/05/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import SwiftUI

struct Treat: Identifiable {
  var id = UUID()
  var name: String
  var imageName: String
  var description: String
}

extension Treat {
  static let treats = [
    Treat(name: "Fish Cakes", imageName: "Blue Cat", description: "Lots of fish, lots of cakes!"),
    Treat(name: "Mice Cream", imageName: "Blue Cat", description: "Every kitty's favorite flavored Ice Cream"),
    Treat(name: "Meowsli", imageName: "Blue Cat", description: "Its Meusli but with some Meow.trademark")
  ]
}
