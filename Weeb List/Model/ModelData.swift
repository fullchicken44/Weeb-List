////
////  ModelData.swift
////  Weeb List
////
////  Created by Le Anh Quan on 26/07/2022.
////
//
import Foundation
import CoreLocation

var animes = decodeJsonFromJsonFile(jsonFileName: "animelist.json")
var maps = decodeJsonFromJsonFile2(jsonFileName: "map.json")

// How to decode a json file into a struct
func decodeJsonFromJsonFile(jsonFileName: String) -> [Anime] {
    if let file = Bundle.main.url(forResource: jsonFileName, withExtension: nil){
        if let data = try? Data(contentsOf: file) {
            do {
                let decoder = JSONDecoder()
                let decoded = try decoder.decode([Anime].self, from: data)
                return decoded
            } catch let error {
                fatalError("Failed to decode JSON: \(error)")
            }
        }
    } else {
        fatalError("Couldn't load \(jsonFileName) file")
    }
    return [ ] as [Anime]
}

func decodeJsonFromJsonFile2(jsonFileName: String) -> [ExpoMap] {
    if let file = Bundle.main.url(forResource: jsonFileName, withExtension: nil){
        if let data = try? Data(contentsOf: file) {
            do {
                let decoder = JSONDecoder()
                let decoded = try decoder.decode([ExpoMap].self, from: data)
                return decoded
            } catch let error {
                fatalError("Failed to decode JSON: \(error)")
            }
        }
    } else {
        fatalError("Couldn't load \(jsonFileName) file")
    }
    return [ ] as [ExpoMap]
}
