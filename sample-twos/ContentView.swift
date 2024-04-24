//
//  ContentView.swift
//  sample-twos
//
//  Created by  Apple on 19/04/2024.
//

import SwiftUI
import CoreLocation

struct ContentView: View {
    
    @State private var showingForcaseModal = false
    
    @StateObject var vm =  WeatherViewModel()
    
    var body: some View {
        ZStack {
            //Background Color
            Color(uiColor:.base).ignoresSafeArea()
            
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



