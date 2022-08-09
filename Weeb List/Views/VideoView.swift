//
//  VideoView.swift
//  Weeb List
//
//  Created by Le Anh Quan on 30/07/2022.
//

import SwiftUI
import WebKit

struct VideoView: UIViewRepresentable {
    var youtubeId: String
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    // This will take the youtube id as argument to display the youtube video 
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let youtubeURL = URL(string: "https://www.youtube.com/embed/\(youtubeId)") else {return}
        uiView.scrollView.isScrollEnabled = false
        uiView.load(URLRequest(url: youtubeURL))
    }
    
    
}
