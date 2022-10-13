//
//  VideoView.swift
//  WilfaClip
//
//  Created by Asle Kinnerød on 23/11/2022.
//

import SwiftUI
import WebKit

struct VideoViewProvider: View, UIViewRepresentable {

    let id = "LnE9ULkleBo"
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let url = URL(string: "https://www.youtube.com/embed/\(id)") else {return}
        uiView.scrollView.isScrollEnabled = false
        uiView.load(URLRequest(url: url))
    }
}

struct VideoViewProvider_Previews: PreviewProvider {
    static var previews: some View {
        VideoViewProvider()
    }
}
