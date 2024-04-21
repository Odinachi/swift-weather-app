//
//  TopBar.swift
//  sample-twos
//
//  Created by  Apple on 20/04/2024.
//

import SwiftUI

struct TopBar: View {
    @State private var showNotificationModal = false
    var body: some View {
        HStack(content: {
            HStack {
                Image("marker").resizable()
                    .frame(width: 14, height: 20)
                Text("Lagos, Nigeria").foregroundColor(.white).font(.custom("", size: 14))
            }.padding(.horizontal, 20).padding(.vertical, 10).background(.white.opacity(0.1)).cornerRadius(20)
            Spacer()
            
            //Notification
            HStack {
                Image("notification").resizable()
                    .frame(width: 24, height: 26)
                
            }.padding(.all, 10).background(.white.opacity(0.1)).cornerRadius(10).onTapGesture {
                showNotificationModal.toggle()
            }.sheet(isPresented: $showNotificationModal, content: {
                ForcastModalView()
            })
        })
    }
}
