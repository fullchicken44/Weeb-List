//
//  SeearchObservableObject.swift
//  Weeb List
//
//  Created by Le Anh Quan on 01/08/2022.
//

import Foundation

class SearchObservableObject: ObservableObject {
    var data: [Anime] = []
    @Published var searchResults:[Anime] = []
    
    init() {
        data = Service.shared.getData()
    }
}
