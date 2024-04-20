//
//  BottomBar.swift
//  sample-twos
//
//  Created by  Apple on 20/04/2024.
//

import SwiftUI


struct BottomBar: View {
    var body: some View {
        HStack {
            Spacer()
            Text("Forecast report").foregroundColor(.white).font(.custom("", size: 18)).fontWeight(.black).padding(.trailing, 30)
            Image(systemName: "chevron.up").foregroundColor(.white)
            Spacer()
        }.padding(.vertical, 20).background(.white.opacity(0.1)).cornerRadius(8)
    }
}

