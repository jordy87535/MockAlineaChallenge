//
//  StackIcon.swift
//  Mock-Alinea
//
//  Created by Jordan Becker on 2/16/22.
//

import SwiftUI


// Didn't have the actual stack artwork, so I just downloaded the individual pieces of it from Figma in SVG format and pieced it back together here

struct StackIcon: View {
    var body: some View{
        
        VStack(spacing: -4){
            Image("Vector (Stroke)")
            Image("Vector (Stroke)-1")
            Image("Vector (Stroke)-1")
        }
        
        
    }
}
