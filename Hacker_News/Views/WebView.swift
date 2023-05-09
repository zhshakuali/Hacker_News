//
//  WebView.swift
//  Hacker_News
//
//  Created by Жансая Шакуали on 27.04.2023.
//

import Foundation
import SwiftUI
import WebKit

struct WebView: UIViewRepresentable{
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    
    typealias UIViewType = WKWebView
    
    let urlString: String?
    
 
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString{
            if let url = URL(string: safeString){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
   

    
}
