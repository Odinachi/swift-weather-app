//
//  ForcastModalView.swift
//  sample-twos
//
//  Created by  Apple on 20/04/2024.
//

import SwiftUI

struct ForcastModalView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack(content: {
            Capsule()
                 .fill(Color.secondary)
                 .frame(width: 100, height: 3)
                 .padding(20)
            HStack{
                Text("Forecast report").font(.custom("DM sans", size: 14))
                
                Image(systemName: "chevron.down")
                
            }.foregroundColor(.base).padding(.vertical,
                                             12).padding(.horizontal, 20).background(.base.opacity(0.1)).cornerRadius(30)
            
            
            Spacer()
            
        })
            .presentationDetents([.medium, .large]) .presentationCornerRadius(30).presentationDragIndicator(.hidden)
    }
}
