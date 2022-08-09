//
//  SearchBar.swift
//  Weeb List
//
//  Created by Le Anh Quan on 01/08/2022.
//

import SwiftUI

struct SearchBar: View {
    @State private var searchTerm = ""
    @StateObject var oo = SearchObservableObject()
    @State private var isShowingDetailView = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Find your anime")
                    .font(.title.bold())
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .foregroundColor(.gray)
            .navigationTitle("Search")
        }
        // Run through the array of anime list, find return the title that match the searchTerm and display the result
        .searchable(text: $searchTerm) {
            ForEach(oo.searchResults) {
                Anime in
                NavigationLink(destination: DetailView(anime: Anime), isActive: $isShowingDetailView) {EmptyView()}
                CardView(anime: Anime)
                    .onTapGesture {
                        isShowingDetailView = true
                    }
            }
        }
        .onChange(of: searchTerm) {
            searchTerm in
            oo.searchResults = oo.data.filter({
                 Anime in
                Anime.title.lowercased().contains(searchTerm.lowercased()) // This should return all the results, not case-sensitive
            })
        }
    }

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar()
    }
}
}
