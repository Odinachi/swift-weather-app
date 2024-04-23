import SwiftUI

struct NotificationModalView: View {
    @Environment(\.presentationMode) var presentationMode
    
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
            HStack (alignment: .bottom,content:{
             
                Image("Sunny").resizable().frame(width: 22, height: 22).padding(.bottom, 20).padding(.leading, 20)
                VStack(alignment: .leading,content: {
                    Text("1 Days ago").font(.custom("DM sans", size: 10)).fontWeight(.ultraLight).foregroundColor(.black.opacity(0.5)).padding(.top, 20).padding(.horizontal, 5)
                    
                    Text("Its a sunny day in your location").font(.custom("DM sans", size: 14)).fontWeight(.ultraLight).padding(.horizontal, 5).padding(.bottom, 20).padding(.top, 5)
                })
                Spacer()
                
            }).background(.border.opacity(0.5)   )
            Spacer()
        })
                        .presentationDetents([.medium, .large]).presentationDragIndicator(.hidden)
    }
}
