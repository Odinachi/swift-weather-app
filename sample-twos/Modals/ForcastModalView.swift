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
            
            HStack{
                Text("Placeholder")
                
                Image(systemName: "chevron.down")
            }.foregroundColor(.base)
            
        })
            .presentationDetents([.medium, .large]) .presentationCornerRadius(30).presentationDragIndicator(.visible)
    }
}
