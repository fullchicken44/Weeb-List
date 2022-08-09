//
//  Map.swift
//  Weeb List
//
//  Created by Le Anh Quan on 03/08/2022.
//

import Foundation
import SwiftUI
import CoreLocation

struct ExpoMap: Codable, Identifiable {
    var id: Int
    var location: String
    var image_url: String
    var description: String
    var coordinates: Coordinates
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
}

struct Coordinates: Codable {
    var latitude: Double
    var longitude: Double
}



