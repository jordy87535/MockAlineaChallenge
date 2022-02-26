//
//  Category.swift
//  Mock-Alinea
//
//  Created by Jordan Becker on 2/16/22.
//

import SwiftUI


// Struct for the category description

struct Category: View{
    var item: Cat = cats[1]
    var body: some View{
        
        
        HStack {
            VStack(alignment: .leading, spacing: 6){
                StackIcon()
                Text(item.title)
                    
                    .font(Font.custom("Inter-SemiBold", size: 15))
                    
               
                Text(item.text)
                    .font(.caption)
                    .font(Font.custom("Inter-Regular", size: 12))
                    
                    
                
                HStack{
                    Text("\(item.stacks) Stacks ")
                        .foregroundColor(Color.purple)
                        .font(.subheadline)
                    HStack(spacing: -4){
                        Image("Vector (Stroke)-9")
                        Image("Vector (Stroke)-8")
                    }
                    
                }
                
                
                
            }
            
            
            Spacer()
        
        }
        .frame(width: 120)
        .padding(.leading, 24)
        
    }
}

struct Category_Preview: PreviewProvider {
    static var previews: some View {
        Category()
    }
}

