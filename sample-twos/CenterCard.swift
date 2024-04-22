//
//  CenterCard.swift
//  sample-twos
//
//  Created by  Apple on 20/04/2024.
//

import SwiftUI


struct CenterCard: View {
    var body: some View {
        HStack {
            Spacer()
            VStack(spacing: 0,content: {
                HStack{
                    Image("Cloud").resizable()
                        .frame(width: 79, height: 66)
                    VStack{
                        Text("Today").foregroundColor(.white).font(.custom("DM Sans", size: 24)).fontWeight(.bold)
                        Text("Mon, 26 Apr").foregroundColor(.white).font(.custom("DM Sans", size: 12)).fontWeight(.bold)
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
                .stroke(.white.opacity(0.5), lineWidth: 1)
        )
    }
}
