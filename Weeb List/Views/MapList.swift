//
//  MapList.swift
//  Weeb List
//
//  Created by Le Anh Quan on 31/07/2022.
//

import SwiftUI

struct MapList: View {
    var body: some View {
        NavigationView {
            List(maps) {
                map in
                NavigationLink {
                    MapDetail(map: map)
                } label: {
                    MapCardView(map: map)
                }
                .navigationTitle("Map list")
            }
        }
    }
}

struct MapList_Previews: PreviewProvider {
    static var previews: some View {
        MapList()
    }
}
