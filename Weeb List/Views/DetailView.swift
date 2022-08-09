//
//  DetailView.swift
//  Weeb List
//
//  Created by Le Anh Quan on 29/07/2022.
//

import SwiftUI

struct DetailView: View {
    var anime: Anime
    
    var body: some View {
        ScrollView {
            HStack {
                VStack {
                    HStack {
                        AsyncImage(url: URL(string: anime.images?.jpg?.large_image_url ?? "")) { image in
                            image.resizable()
                        } placeholder: {
                            Color.gray
                        }
                        .frame(width: 200, height: 300)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .frame(alignment: .leading)
                        
                        VStack {
                            Text("⭐️ \(String(format: "%.2f", anime.score))")
                                .font(.system(size: 25))
                                .fontWeight(.heavy)
                            Spacer()
                            Text("Rank: \(anime.rank)")
                                .fontWeight(.heavy)
                            Spacer()
                            Text("Member: \(anime.members)")
                                .fontWeight(.heavy)
                            Spacer()
                            Text("Favorite: \(anime.favorites)")
                                .fontWeight(.heavy)
                        }
                        .frame(height: 300)
                    }
                    Text(anime.title)
                        .fontWeight(.heavy)
                        .font(.system(size: 30))
                        .padding()
                    Text(anime.title_japanese)
                        .fontWeight(.heavy)
                    HStack {
                        Spacer()
                        Text(anime.type)
                        Spacer()
                        Text("\(anime.episodes ?? 0) Episode")
                        Spacer()
                        Text(anime.duration)
                        Spacer()
                    }
                    .foregroundColor(.blue)
                    .padding()
                    
                    // Youtube video player
                    VideoView(youtubeId: anime.trailer?.youtube_id ?? "")
                        .frame(minHeight: 200,maxHeight: UIScreen.main.bounds.height * 0.3)
                        .cornerRadius(12)
                        .padding(.horizontal, 24)
                    Text("Synopsis: \(anime.synopsis)").padding()
                }
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(anime: animes[0])
    }
}
