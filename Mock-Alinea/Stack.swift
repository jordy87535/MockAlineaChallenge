//
//  Stack.swift
//  Mock-Alinea
//
//  Created by Jordan Becker on 2/16/22.
//

import SwiftUI

struct StockStack: View {
    var item: Item = items[0]
    var body: some View {
        
    
        
        VStack(alignment: .leading, spacing: 8){
            VStack(alignment: .leading){
                
                Image(item.image)
                    .padding(.bottom, 10.0)

                
                Text(item.title)
                    .font(.title3)
                    .fontWeight(.bold)
                    
            }
            
            HStack{
                StackIcon()
                Text(item.numStocks + " Stocks")
                    .bold()
            }
            
            
            Text(item.text)
                .font(Font.custom("Inter-Regular", size: 12))
            
            
            Text("Up " + item.increase + "% last year")
                .foregroundColor(.red)
            
        }
        .padding(.all)
        .background(item.color)
        .cornerRadius(12)
        .frame(width: 184, height: 280)
        
    }
}
