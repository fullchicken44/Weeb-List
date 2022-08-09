//
//  MapDetail.swift
//  Weeb List
//
//  Created by Le Anh Quan on 03/08/2022.
//

import SwiftUI
import CoreLocation

struct MapDetail: View {
    var map: ExpoMap
    
    var body: some View {
        ScrollView {
            VStack {
                AsyncImage(url: URL(string: map.image_url)) { image in
                    image.resizable()
                } placeholder: {
                    Color.gray
                }
                .frame(width: .infinity, height: 250)
                .clipShape(RoundedRectangle(cornerRadius: 40))
                .frame(alignment: .leading)
                .padding()
                
                Text(map.location)
                    .fontWeight(.heavy)
                    .font(.system(.title))
                    .multilineTextAlignment(.center)
                Text(map.description)
                    .padding()
                MapView(coordinate: map.locationCoordinate)
                    .frame(height: 250)
            }
        }
    }
}

struct MapDetail_Previews: PreviewProvider {
    static var previews: some View {
        MapDetail(map: maps[0])
    }
}
