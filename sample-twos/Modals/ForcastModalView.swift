//
//  ForcastModalView.swift
//  sample-twos
//
//  Created by  Apple on 20/04/2024.
//

import SwiftUI

struct ForcastModalView: View {
    @Environment(\.presentationMode) var presentationMode
    
    let timeForcast: [[String: Any]] = [["temp": "29°c","isFull":false, "time":"8 am"],["temp": "29°c","isFull":false, "time":"10 am"],["temp": "29°c","isFull":true, "time":"12 am"],["temp": "28°c","isFull":true, "time":"2 pm"],["temp": "28°c","isFull":true, "time":"4 pm"],]  
    
    
    let dayForcast: [[String: Any]] = [["temp": "29°c","date":"April 5"],["temp": "29°c","date":"April 7"],["temp": "29°c", "date":"April 8"],["temp": "28°c", "date":"April 9"],["temp": "28°c", "date":"April 10"],]
    
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
            
            
            Text("Today").frame(maxWidth: .infinity, alignment: .leading).font(.custom("DM Sans", size: 22)).fontWeight(.heavy).padding(.horizontal, 20).padding(.vertical,10)
            
            
            HStack(alignment: .center,content: {
             
                ForEach(timeForcast.indices,id: \.self)
                {
                 
                    i in VStack(alignment: .center,content: {
                        Text(timeForcast[i]["temp"] as! String).font(.custom("DM Sans", size: 16))
                        
                        Image((timeForcast[i]["isFull"] ?? false) as! Bool ? "FullSun" : "HalfSun").frame(width: 26,height:26).padding(.vertical, 10)
                        
                        Text(timeForcast[i]["time"] as! String).font(.custom("DM Sans", size: 14))
                    }).padding(.horizontal, 10)
//                    Spacer()
                }.padding(.vertical, 20)
                
            }).padding(.horizontal, 20).overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(.border, lineWidth: 1)).padding(.horizontal, 20)
//            Spacer()
            HStack{
                Text("Next forecast").frame(maxWidth: .infinity, alignment: .leading).font(.custom("DM Sans", size: 22)).fontWeight(.heavy).padding(.horizontal, 20).padding(.vertical,20)
                Spacer()
                Text("Five Days").foregroundColor(.white).font(.custom("DM Sans", size: 12)).padding(.horizontal, 20).padding(.vertical,
                                                                                                                              10).background(.base).fontWeight(.bold).cornerRadius(8).frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 36)
                
               
            }.padding(.trailing, 20)
            
       
           VStack {
                
                ForEach(dayForcast.indices,id: \.self)
                {
                 
                    i in HStack(alignment: .center,content: {
                        Spacer()
                        Text(dayForcast[i]["date"] as! String).font(.custom("DM Sans", size: 14)).fontWeight(.medium)
                        
                        Spacer()
                        Image("HalfSun").frame(width: 26,height:26).padding(.vertical, 10)
                        Spacer()
                        Text(dayForcast[i]["temp"] as! String).font(.custom("DM Sans", size: 16)).fontWeight(.medium)
                        Spacer()
                    }).padding(.horizontal, 10).padding(.vertical,5)
                    Divider()
                    
                }.padding(.horizontal, 5)
            }.overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(.border, lineWidth: 1)).padding(.horizontal, 20)
            
         
        })
        .presentationDetents([.large]) .presentationCornerRadius(30).presentationDragIndicator(.hidden)
    }
}
