//
//  ContentView.swift
//  Mock-Alinea
//
//  Created by Jordan Becker on 2/10/22.
//

import SwiftUI



struct ContentView: View {
    
    var body: some View {

        ScrollView(showsIndicators: false) {
            
            Bar(amount: 2)
            
            Heading()
            
            ForEach(0 ..< 3) { num in
                StackRow(num: num)
                Bar()
            }
            StoriesSection()
                .padding(.top)
             
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct StackRow: View {
    var num: Int = 0
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack{
                
                Category(item: cats[num])
                
                
                
                ForEach(0 ..< Category(item: cats[num]).item.stacks) { i in
                    StockStack(item: items[num])
                }
                .padding(.vertical, 20)
                
            }
            
        }
    }
}
