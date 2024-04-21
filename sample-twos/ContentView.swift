//
//  ContentView.swift
//  sample-twos
//
//  Created by  Apple on 19/04/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var showingForcaseModal = false
   
    var body: some View {
        ZStack {
            //Background Color
            Color(uiColor: UIColor(red: 112, green: 71, blue: 235)).ignoresSafeArea()
            
            VStack
            {
                
                TopBar()
                Spacer()
                CenterCard()
                Spacer()
                BottomBar().onTapGesture {
                    showingForcaseModal.toggle()
                }.sheet(isPresented: $showingForcaseModal, content: {
                    
                    ForcastModalView()
                })
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

