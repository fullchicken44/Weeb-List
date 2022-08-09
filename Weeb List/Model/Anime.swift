import Foundation
import SwiftUI

struct Anime: Codable {
    var mal_id: Int
    var title: String
    var title_japanese: String
    var type: String
    var episodes: Int?
    var airing: Bool
    var duration: String
    var score: Double
    var rating: String
    var scored_by: Int
    var rank: Int
    var popularity: Int
    var synopsis: String
    var images: Images?
    var members: Int
    var favorites: Int
    var trailer: Trailer?
}

struct Images: Codable {
    var jpg : JPG?
    var webp: WEBP?
    
}

struct JPG:Codable {
    var image_url, small_image_url, large_image_url: String?
}

struct WEBP:Codable {
    var image_url, small_image_url, large_image_url: String?
}

struct Trailer: Codable {
    var embed_url: String?
    var youtube_id: String?
}

extension Anime: Identifiable {
    var id: Int {return mal_id}
}

