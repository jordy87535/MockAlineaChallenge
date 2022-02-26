//
//  StockStack.swift
//  Mock-Alinea
//
//  Created by Jordan Becker on 2/16/22.
//

import SwiftUI

struct StockStack: View {
    var item: Item = items[0]
    
    
    var body: some View {
    
        VStack(alignment: .leading){
            
                
            Image(item.image)
                .padding(.top, 16.0)
            Spacer()
                
            VStack(alignment: .leading, spacing: 4){
                Text(item.title)
                    .font(Font.custom("Garnett-Medium", size: 20))
                    
                    
                    
                        
                
                
                HStack{
                    StackIcon()
                    Text(item.numStocks + " Stocks")
                        .font(Font.custom("Inter-SemiBold", size: 15))
                }
                
                
                Text(item.text)
                    .font(Font.custom("Inter-Regular", size: 12))
                    .padding(.bottom, 10.8)
                    
                Image(item.graph)
                    .padding(.bottom, 9.4)
                HStack(spacing: 4){
                    
                    Arrow(a: item.arrowA, b: item.arrowB)
                    HStack(spacing: 4){
                        Text(item.increase + "%")
                            .font(Font.custom("Inter-SemiBold", size: 15))
                        Text("last year")
                            
                    }
                    .foregroundColor(item.fontColor)
                        
                }
                .font(Font.custom("Inter-Regular", size: 13))
                .padding(.bottom)
                
            }
            
                
            
        }
        .padding(.horizontal, 16.0)
        .frame(width: 184, height: 280)
        
        .background(item.color)
        .cornerRadius(12)
        
        
        
        
        
    }
    
}

struct StockStack_Previews: PreviewProvider {
    static var previews: some View {
        StockStack()
    }
}

struct Arrow: View{
    var a: String = "Vector (Stroke)-3"
    var b: String = "Vector (Stroke)-2"
    
    var body: some View{
        
        VStack(spacing: -4){
            Image(a)
            Image(b)
        }
        
        
    }
    
}
