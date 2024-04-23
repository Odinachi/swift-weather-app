import SwiftUI

struct NotificationModalView: View {
    @Environment(\.presentationMode) var presentationMode
    
    @State private var selectedNoti  = 0
    
    var body: some View {
        VStack(content: {
            
               Capsule()
                   .fill(Color.secondary)
                   .frame(width: 100, height: 3)
                   .padding(20)
               HStack{
                   Text("Your Notifications").font(.custom("DM sans", size: 14))
              
               }.foregroundColor(.base).padding(.vertical,
                                                12).padding(.horizontal, 20).background(.base.opacity(0.1)).cornerRadius(30)
            
            Text("New").frame(maxWidth: .infinity, alignment: .leading).foregroundColor(.black.opacity(0.5)).font(.custom("DM Sans", size: 10)).fontWeight(.ultraLight).padding(.horizontal, 20).padding(.vertical,10)
            
            NotificationItem(
                date: "1 Days ago",
                description: "It's a sunny day in your location",
                isSelected: selectedNoti == 1,
                onTap: {
                    if selectedNoti == 1 {
                        selectedNoti = 0
                    } else {
                        selectedNoti = 1
                    }
                }
            )
            
            Text("Earlier").frame(maxWidth: .infinity, alignment: .leading).foregroundColor(.black.opacity(0.5)).font(.custom("DM Sans", size: 10)).fontWeight(.ultraLight).padding(.horizontal, 20).padding(.vertical,10)
            NotificationItem(
                date: "1 Days ago",
                description: "It's a sunny day in your location",
                isSelected: selectedNoti == 2,
                onTap: {
                    if selectedNoti == 2 {
                        selectedNoti = 0
                    } else {
                        selectedNoti = 2
                    }
                }
            )
            NotificationItem(
                date: "3 Days ago",
                description: "It's a sunny day in your location",
                isSelected: selectedNoti == 3,
                onTap: {
                    if selectedNoti == 3 {
                        selectedNoti = 0
                    } else {
                        selectedNoti = 3
                    }
                }
            )
            
            Spacer()
        })
                        .presentationDetents([.medium, .large]).presentationDragIndicator(.hidden)
    }
}
