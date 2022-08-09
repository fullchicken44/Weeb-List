//
//  SearchRowView.swift
//  Weeb List
//
//  Created by Le Anh Quan on 01/08/2022.
//

import SwiftUI

struct SearchRowView: View {
    var anime: Anime
    
    var body: some View {
        Text(anime.title)
    }
}

struct SearchRowView_Previews: PreviewProvider {
    static var previews: some View {
        SearchRowView(anime: animes[0])
    }
}
