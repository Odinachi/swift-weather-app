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
        Text("Sample modal")
                        .presentationDetents([.medium, .large])
    }
}
