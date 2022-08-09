//
//  ContentView.swift
//  Weeb List
//
//  Created by Le Anh Quan on 26/07/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ListView().tabItem {
                Label("List", systemImage: "list.bullet.rectangle")
            }
            MapList().tabItem {
                Label("Map", systemImage: "map.fill")
            }
            SearchBar().tabItem {
                Label("Search", systemImage: "magnifyingglass.circle.fill")
            }
            ModeSwitchView().tabItem {
                Label("Setting", systemImage: "gearshape.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
