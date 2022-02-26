//
//  Heading.swift
//  Mock-Alinea
//
//  Created by Jordan Becker on 2/16/22.
//

import SwiftUI

// Heading section of Figma design

struct Heading: View {
    var current: Double = 9842.98
    var change: Double = 1150.88
    
    
    
    var body: some View {
        
        let profit = change >= 0
        
        HStack{
            VStack(alignment: .leading, spacing: 2){
                
                // More dynamic approach, making it so the app wouldn't tell the user that their wealth is growing when they have lost money
                Text(profit ? "Your wealth is growing" : "Don't Cry, Buy!")
                    .font(Font.custom("Inter-Regular", size: 17))
                    
                    
        
                Text("$\(current, specifier: "%.2f")")
                    
                    .font(Font.custom("Garnett-Medium", size: 34))
                
                
                HStack(spacing: 4) {
                    VStack(spacing: -4){
                        // I would have made this a conditional argument based on sign of profit, but I did not have a red down arrow to display
                        Image("Vector (Stroke)-11")
                        Image("Vector (Stroke)-10")
                    }
                    let growth: Double = change/(current-change) * 100
                                                   
                    Text("$\(change, specifier: "%.2f") (\(growth, specifier: "%.2f")%)")
                        .foregroundColor(profit ? Color(red: 0.463, green: 0.669, blue: 0.206) : Color(.red))
                        .font(Font.custom("Garnett-Medium", size: 17))
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(24)
        }
    }
}

struct Heading_Preview: PreviewProvider {
    static var previews: some View {
        Heading()
    }
}

