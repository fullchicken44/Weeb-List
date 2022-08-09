//
//  CardView.swift
//  Weeb List
//
//  Created by Le Anh Quan on 28/07/2022.
//

import SwiftUI

struct CardView: View {
    var anime: Anime
    
    var body: some View {
            HStack {
                AsyncImage(url: URL(string: anime.images?.jpg?.large_image_url ?? "")) { image in
                    image.resizable()
                } placeholder: {
                    Color.gray
                }
                .frame(width: 90, height: 160)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                
                VStack (spacing:10){
                    Text(anime.title)
                        .bold()
                        .font(.system(size: 20))
                    Text(anime.title_japanese)
                    Text("Episodes: \(anime.episodes ?? 0)")
                    Text("Type: \(anime.type)")
                    Text("⭐️ \(String(format: "%.2f", anime.score))")

                    Spacer()
                }
            }.frame(width:.infinity, height: 160)
            
    
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CardView(anime: animes[0])
        }
    }
}
}
