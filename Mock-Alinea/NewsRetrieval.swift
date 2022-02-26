//
//  NewsRetrieval.swift
//  Mock-Alinea
//
//  Created by Jordan Becker on 2/25/22.
//

import SwiftUI

// Class for dealing with fetching, decoding, and compiling data from stock news section of FMP
class Api {
    
    static let shared = Api()  // <-- here
    
    func getPosts(completion: @escaping([Post]) -> ()) {
        guard let url = URL(string: "https://financialmodelingprep.com/api/v3/stock_news?limit=5&apikey=552d47c8f19d492bfb22700a6af72435") else { return
            print("bad url")
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else {   // <-- here
                print("no data") // todo deal with no data
                completion([])
                return
            }
            do {
                let posts = try JSONDecoder().decode([Post].self, from: data)
                DispatchQueue.main.async {
                    completion(posts)
                }
                print(posts)
            } catch {
                print("\(error)")
            }
        }
        .resume()
    }
}




// Blank slate instance of Post - useful for Story Section structure as a placeholder until the arrival of data
var openPost: Post = Post(image: "", publishedDate: "", site: "", symbol: "", text: "", title: "", url: "")

// Model structure for recieving JSON data from FMP API
struct Post: Codable, Identifiable {
    let id = UUID()  // <-- here
    
    var image: String
    var publishedDate: String
    var site: String
    var symbol: String
    var text: String
    var title: String
    var url: String
    
}
