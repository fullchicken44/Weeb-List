//
//  MapCardView.swift
//  Weeb List
//
//  Created by Le Anh Quan on 31/07/2022.
//

import SwiftUI

struct MapCardView: View {
    var map: ExpoMap
    
    var body: some View {
        ZStack {
            AsyncImage(url: URL(string: map.image_url)) { image in
                image.resizable()
            } placeholder: {
                Color.gray
            }
            .frame(width: .infinity, height: 250)
            .clipShape(RoundedRectangle(cornerRadius: 40))
            .frame(alignment: .leading)
            .blur(radius: 10)
            
            Text(map.location)
                .fontWeight(.heavy)
                .font(.system(.title))
                .foregroundColor(.black)
                .glowBorder(color: .white, lineWidth: 4)
                .multilineTextAlignment(.center)
        }

    }
}

struct MapCardView_Previews: PreviewProvider {
    static var previews: some View {
        MapCardView(map: maps[0])
    }
}
