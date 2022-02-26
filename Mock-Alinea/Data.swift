//
//  Data.swift
//  Mock-Alinea
//
//  Created by Jordan Becker on 2/15/22.
//

import SwiftUI





// Item refers to structure of a stock stack
struct Item: Identifiable{
    var id = UUID()
    var category: String
    var image: String
    var title: String
    var numStocks: String
    var text: String
    var graph: String
    var increase: String
    var color: Color
    var fontColor: Color
    var arrowA: String
    var arrowB: String
    
}
                        
// Examples given in figma
var items = [
    
    Item(category: "For Beginners", image: "Frame 608 (3)", title: "Top 500", numStocks: "32", text: "Invest in the S&P 500 companies", graph: "Rectangle 20", increase: "32.33", color: Color(red: 0.99, green: 0.95, blue: 0.95), fontColor: Color(red: 0.845, green: 0.413, blue: 0.413), arrowA: "Vector (Stroke)-3", arrowB: "Vector (Stroke)-2"),
    
    Item(category: "For Beginners", image: "Frame 608 (4)", title: "China", numStocks: "7", text: "Invest in the companies based out of China", graph: "Rectangle 20 (1)", increase: "12.34", color: Color(red: 0.914, green: 0.957, blue: 0.973), fontColor: Color(red: 0.308, green: 0.663, blue: 0.792), arrowA: "Vector (Stroke)-5", arrowB: "Vector (Stroke)-4"),
    Item(category: "For Beginners", image: "Frame 608 (5)", title: "Real Estate", numStocks: "7", text: "Invest in the companies from the real estate sector", graph: "Rectangle 20 (2)", increase: "2.34", color: Color(red: 0.941, green: 0.949, blue: 0.969), fontColor: Color(red: 0.426, green: 0.504, blue: 0.699), arrowA: "Vector (Stroke)-7", arrowB: "Vector (Stroke)-6"),
    
]

// Category grouping structure
struct Cat: Identifiable{
    var id = UUID()
    var title: String
    var text: String
    var stacks: Int
}

// Examples given in figma
var cats = [
    
    Cat(title: "For Beginners", text: "Best place to start your investment journey", stacks: 9),
    Cat(title: "Regional", text: "Invest based on a region outside of the United States", stacks: 3),
    Cat(title: "Low Risk", text: "For those who like to play it safe", stacks: 7),
    
]


