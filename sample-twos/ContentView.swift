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
                HStack {
                    Spacer()
                    VStack(spacing: 0,content: {
                        HStack{
                            Image("cloud").resizable()
                                .frame(width: 79, height: 66)
                            VStack{
                                Text("Today").foregroundColor(.white).font(.custom("", size: 24)).fontWeight(.bold)
                                Text("Mon, 26 Apr").foregroundColor(.white).font(.custom("", size: 12)).fontWeight(.bold)
                            }
                        }
                        HStack( content:{
                           
                            
                            Text("28").foregroundColor(.white).font(.custom("", size: 158)).fontWeight(.bold)
                            Text("°c").foregroundColor(.white).font(.custom("", size: 19)).fontWeight(.bold)  .padding(.bottom, 100)
                        })
                        Text("Lagos, Nigeria • 2:00 p.m").foregroundColor(.white).font(.custom("", size: 16)).fontWeight(.light)
                    })
                    Spacer()
                }.padding(.vertical, 30).background(.white.opacity(0.1)).cornerRadius(15).overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(Color(UIColor(red: 185, green: 188, blue: 242)), lineWidth: 1)
                )
                
                Spacer()
                BottomBar()
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


