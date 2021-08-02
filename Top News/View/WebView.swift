//
//  File.swift
//  Top News
//
//  Created by Shivansh on 24/03/20.
//  Copyright © 2020 Shivansh. All rights reserved.
//

import Foundation
import WebKit
import SwiftUI
struct WebView:UIViewRepresentable{
    var add:String?
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    func updateUIView(_ uiView:WKWebView, context: Context) {
        let address=URL(string: add!)
        let request=URLRequest(url: address!)
        uiView.load(request)
    }
}
