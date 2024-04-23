//
//  NotificationItem.swift
//  sample-twos
//
//  Created by  Apple on 23/04/2024.
//

import SwiftUI


struct NotificationItem: View {
    var date: String
    var description: String
    var isSelected: Bool
    var onTap: () -> Void
    
    var body: some View {
        HStack(alignment: .bottom) {
            Image("Sunny")
                .resizable()
                .frame(width: 22, height: 22)
                .padding(.bottom, 20)
                .padding(.leading, 20)
            
            VStack(alignment: .leading) {
                Text(date)
                    .font(.custom("DM sans", size: 10))
                    .fontWeight(.ultraLight)
                    .foregroundColor(.black.opacity(0.5))
                    .padding(.top, 20)
                    .padding(.horizontal, 5)
                
                Text(description)
                    .font(.custom("DM sans", size: 14))
                    .fontWeight(.ultraLight)
                    .padding(.horizontal, 5)
                    .padding(.bottom, 20)
                    .padding(.top, 5)
            }
            
            Spacer()
        }
        .background(isSelected ? Color.border.opacity(0.5) : Color.white)
        .onTapGesture {
            onTap()
        }
    }
}
