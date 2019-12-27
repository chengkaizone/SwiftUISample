//
//  WebImageViewSample.swift
//  SwiftUISample
//
//  Created by tony on 2019/12/27.
//  Copyright © 2019 tony. All rights reserved.
//

import SwiftUI

struct WebImageViewSample: View {
    
    @State private var uiImage: UIImage? = nil
    let placeholderImage = UIImage(named: "icon")!
    
    var body: some View {
        
        Image(uiImage: self.uiImage ?? placeholderImage)
        .resizable()
            .onAppear{
                self.downloadWebImage()
        }
            .frame(width: 80, height: 80, alignment: .center)
            .onTapGesture {
                print("doTap")
        }.navigationBarTitle("Web Image")
    }
    
    func downloadWebImage() {
        
        guard let url = URL(string: "https://picsum.photos/50/50?i=30") else {
            debugPrint("无效的url")
            return
        }
        
        URLSession.shared.dataTask(with: url) { (data, resp, error) in
            if let data = data, let image = UIImage(data: data) {
                self.uiImage = image
            } else {
                debugPrint("error: \(String(describing: error))")
            }
        }.resume()
    }
    
}

#if DEBUG

struct WebImageViewSample_Previews : PreviewProvider {
    
    static var previews: some View {
        WebImageViewSample()
    }
}

#endif
