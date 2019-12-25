//
//  WebViewController.swift
//  SwiftUISample
//
//  Created by tony on 2019/12/25.
//  Copyright © 2019 tony. All rights reserved.
//

import SwiftUI
import WebKit

/**
 * 封装SwiftUI未原生支持的控件，使用UIKit的控件进行转换
 */
struct WebViewController : UIViewRepresentable {
    
    var urlString: String?
    init(urlString: String?) {
        self.urlString = urlString
    }
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        
        guard let urlString = urlString else {
            return
        }
        let url = URL(string: urlString)!
        uiView.load(URLRequest(url: url))
    }
    
}

#if DEBUG

struct WebViewController_Previews: PreviewProvider {
    
    static var previews: some View {
        let url = "https://www.apple.com"
        return WebViewController(urlString: url)
    }
    
}

#endif
