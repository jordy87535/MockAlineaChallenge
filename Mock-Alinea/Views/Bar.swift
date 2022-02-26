//
//  Bar.swift
//  Mock-Alinea
//
//  Created by Jordan Becker on 2/17/22.
//

import SwiftUI

// Simple reconstruction of bar detail in Figma

struct Bar: View {
    var amount: Int = 1
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
            
            ForEach(0 ..< amount) { item in
                HStack{
                    Image("Image-4")
                        .resizable()
                    .frame(width: 327, height: 1)
                    Spacer()
                }
                
            }
            
        }
        .padding(.leading)
        
    }
}
struct Bar_Previews: PreviewProvider {
    static var previews: some View {
        Bar()
    }
}
