//
//  News.swift
//  Mock-Alinea
//
//  Created by Jordan Becker on 2/22/22.
//

import Foundation

struct New_News: Identifiable, Codable {
    var id = UUID()
    
    var symbol: String
    var publishedDate: String
    var title: String
    var image: String
    var site: String
    var text: String
    var url: String
}


class VideoManager: ObservableObject {
    @Published private(set) var news: [New_News] = []
    
    
    // On initialize of the class, fetch the videos
    init() {
        // Need to Task.init and await keyword because findVideos is an asynchronous function
        Task.init {
            await findVideos()
        }
    }
    
    // Fetching the videos asynchronously
    func findVideos() async {
        do {
        // Make sure we have a URL before continuing
        guard let url = URL(string: "https://financialmodelingprep.com/api/v3/stock_news?tickers=AAPL,FB,GOOG,AMZN&page=0&apikey=552d47c8f19d492bfb22700a6af72435") else { fatalError("Missing URL") }
        
        // Create a URLRequest
        var urlRequest = URLRequest(url: url)
        
        
            // Fetching the data
            let (data, response) = try await URLSession.shared.data(for: urlRequest)
            
            // Making sure the response is 200 OK before continuing
            guard (response as? HTTPURLResponse)?.statusCode == 200 else { fatalError("Error while fetching data") }
            
            // Creating a JSONDecoder instance
            let decoder = JSONDecoder()
            
            // Allows us to convert the data from the API from snake_case to cameCase
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            
            // Decode into the ResponseBody struct below
            let decodedData = try decoder.decode(New_News.self, from: data)
            
            // Setting the videos variable
            DispatchQueue.main.async {
                // Reset the videos (for when we're calling the API again)
                
                self.news = []
                // Assigning the videos we fetched from the API
                self.news = [decodedData]
            }

        } catch {
            // If we run into an error, print the error in the console
            print("Error fetching data from Pexels: \(error)")
        }
    }
}

// ResponseBody structure that follow the JSON data we get from the API
// Note: We're not adding all the variables returned from the API since not all of them are used in the app
