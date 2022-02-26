//
//  TestingSingularStory.swift
//  Mock-Alinea
//
//  Created by Jordan Becker on 2/21/22.
//

import SwiftUI

struct TestingSingularStory: View {
    
    @StateObject var articleVM: ArticleViewModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            HStack {
                VStack {
                    
                    VStack(alignment: .leading, spacing: 8){
                        
                        
                        Text(articleVM.article.site)
                        Text(articleVM.article.title)
                            .bold()
                            .font(Font.custom("Inter-Regular", size: 15))
                            .font(.subheadline)
                        
                        HStack {
                            Text(articleVM.article.publishedDate)
                            Image("Rectangle 37")
                            Text(articleVM.article.symbol)
                        }
                        
                    }
                    
                }
                Spacer()
                
                
                
                AsyncImage(url: URL(string: articleVM.article.image)) { image in
                    image
                        .resizable()
                        .scaledToFill()
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 64, height: 64)
                .aspectRatio(contentMode: .fill)
                .cornerRadius(6)
                .padding(.trailing, 24)
                
                
            }
            .padding(.leading)
            
            Bar()
                .padding(.vertical, 20)
        }
        .font(Font.custom("Inter-Regular", size: 12))
    }
}


struct TestingSingularStory_Previews: PreviewProvider {
    static let articleVM = ArticleViewModel(article: Article.data)
    
    static var previews: some View {
        TestingSingularStory(articleVM: articleVM)
    }
}
