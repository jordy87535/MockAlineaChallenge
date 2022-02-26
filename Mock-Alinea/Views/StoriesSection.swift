//
//  NewsStory.swift
//  Mock-Alinea
//
//  Created by Jordan Becker on 2/18/22.
//

import SwiftUI

struct StoriesSection: View {
    
    @State var posts: [Post] = []
    
    
    var body: some View {
        
        VStack {
        
            
            ForEach(posts) { post in
                VStack{
                    SingularStory(story: post)
                }
                
            }
            
            List(posts) { post in
                
            }
            .onAppear{
                Api.shared.getPosts { posts in  // <-- here
                    self.posts = posts
                }
            }
            
        }
    }
}

struct NewsStory_Previews: PreviewProvider {
    static var previews: some View {
        StoriesSection()
            
    }
}

struct SingularStory: View {

    var story: Post = openPost
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            HStack {
                VStack {
                    
                    VStack(alignment: .leading, spacing: 8){
                        
                        
                        Text(story.site)
                        Text(story.title)
                            .bold()
                            .font(Font.custom("Inter-SemiBold", size: 15))
                            .font(.subheadline)
                        
                        HStack {
                            Text(story.publishedDate)
                            Image("Rectangle 37")
                            Text(story.symbol)
                        }
                        
                    }
                    
                }
                
                Spacer()
                
                
                
                AsyncImage(url: URL(string: story.image)) { image in
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
            .padding(.leading, 24)
            
            Bar()
                .padding(.vertical, 20)
        }
        
        .font(Font.custom("Inter-Regular", size: 12))
    }
}
