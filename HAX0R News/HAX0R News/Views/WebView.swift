//
//  WebView.swift
//  HAX0R News
//
//  Created by Macbook on 20.03.2022.
//

import Foundation
import SwiftUI
import WebKit


struct WebView {
    
    let urlString: String?
    
}

extension WebView: UIViewRepresentable{
    
    func makeUIView(context: Context) -> WKWebView {
        
        return WKWebView()
        
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
    
}
