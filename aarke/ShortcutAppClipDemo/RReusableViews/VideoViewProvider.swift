//
//  VideoView.swift
//  ShortcutAppClipDemo
//
//  Created by Asle Kinnerød on 23/11/2022.
//

import SwiftUI
import WebKit

struct VideoViewProvider: View, UIViewRepresentable {
    let url: URL?

    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let url else { return }
        uiView.scrollView.isScrollEnabled = false
        uiView.load(URLRequest(url: url))
    }
}

struct VideoViewProvider_Previews: PreviewProvider {
    static var previews: some View {
        VideoViewProvider(url: URL(string: "https://www.youtube.com/embed/zbCxs5Mx8rc"))
    }
}
