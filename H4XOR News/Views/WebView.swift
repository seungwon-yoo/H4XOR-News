//
//  WebView.swift
//  H4XOR News
//
//  Created by 유승원 on 2022/02/01.
//

import Foundation
import WebKit
import SwiftUI

// UIViewRepresentable : SwiftUIView가 UIKitView를 대표하도록 함.
struct WebView: UIViewRepresentable {
    
    let urlString: String?
    
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
