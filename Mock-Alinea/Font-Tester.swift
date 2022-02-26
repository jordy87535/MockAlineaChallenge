//
//  Font-Tester.swift
//  Mock-Alinea
//
//  Created by Jordan Becker on 2/22/22.
//

import SwiftUI

struct Font_Tester: View {
    var body: some View {
        VStack{
            
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Text("hello world")
                .font(Font.custom("Inter-Regular", size: 25))
        }
        
    }
}

struct Font_Tester_Previews: PreviewProvider {
    static var previews: some View {
        Font_Tester()
    }
}
