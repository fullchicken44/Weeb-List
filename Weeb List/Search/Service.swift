//
//  Service.swift
//  Weeb List
//
//  Created by Le Anh Quan on 01/08/2022.
//

import Foundation

class Service {
    public static let shared = Service()
    
    func getData() -> [Anime] {
        return animes
    }
}
