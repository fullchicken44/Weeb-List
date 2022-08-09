//
//  ListView.swift
//  Weeb List
//
//  Created by Le Anh Quan on 26/07/2022.
//

import SwiftUI

struct ListView: View {
    private let adaptiveColumns = [
        GridItem(.adaptive(minimum: 190))]
    
    var body: some View {
        NavigationView {
            List(animes) {
                anime in
                NavigationLink {
                    DetailView(anime: anime)
                } label: {
                    CardView(anime: anime)
                }
                .navigationTitle("Animu list")
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
