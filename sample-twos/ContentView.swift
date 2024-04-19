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
            //Background Color
            Color(uiColor: UIColor(red: 112, green: 71, blue: 235)).ignoresSafeArea()
            //Top bar
            VStack
            {
                
                TopBar()
                Spacer()
                Spacer()
                HStack {
                    Spacer()
                    Text("Forecast report").foregroundColor(.white).font(.custom("", size: 18)).fontWeight(.black)
                    
                    
                    Image(systemName: "chevron.up").foregroundColor(.white)
                    Spacer()
                }.padding(.vertical, 20).background(.white.opacity(0.1)).cornerRadius(20)
            }.padding(20)
            
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


