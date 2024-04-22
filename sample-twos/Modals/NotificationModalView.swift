import SwiftUI

struct NotificationModalView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        Text("Sample Notification modal")
                        .presentationDetents([.medium, .large])
    }
}
