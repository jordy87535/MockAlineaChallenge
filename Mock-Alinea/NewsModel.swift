//
//  NewsModel.swift
//  Mock-Alinea
//
//  Created by Jordan Becker on 2/21/22.
//

import Foundation

final class ArticleViewModel: ObservableObject {
    private(set) var article: Article
    init(article: Article){
        self.article = article
    }
    
}







struct Article {
    var id = UUID()
    var image: String
    var publishedDate: String
    var site: String
    var symbol: String
    var text: String
    var title: String
    var url: String

    static let data = Article(image: "https://cdn.snapi.dev/images/v1/p/9/metabad1a-1242268.webp", publishedDate: "5 min ago", site: "Alpha Geek", symbol: "AAPL", text: "", title: "S&P 500 rises to another record on Wednesday, DOW jumps 100 points", url: "")
}
