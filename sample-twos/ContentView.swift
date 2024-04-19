//
//  ContentView.swift
//  sample-twos
//
//  Created by  Apple on 19/04/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      ZStack {
          Color(uiColor: UIColor(red: 112, green: 71, blue: 235)).ignoresSafeArea()
          VStack
          {
              HStack(content: {
                  /*@START_MENU_TOKEN@*/HStack {
                      Image(systemName: "location.circle.fill")
                      Text("Placeholder")
                  }/*@END_MENU_TOKEN@*/
              })
          }
        }
      
    }
}



#Preview {
    ContentView()
}


extension UIColor {
    convenience init(red: Int, green: Int, blue: Int, alpha: CGFloat = 1.0) {
        self.init(
            red: CGFloat(red) / 255.0,
            green: CGFloat(green) / 255.0,
            blue: CGFloat(blue) / 255.0,
            alpha: alpha
        )
    }
}
