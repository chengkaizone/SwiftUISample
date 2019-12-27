//
//  ImageViewSample.swift
//  SwiftUISample
//
//  Created by tony on 2019/12/25.
//  Copyright © 2019 tony. All rights reserved.
//

import SwiftUI

struct ImageViewSample: View {
    
    var body: some View {
        
        VStack {
            ForEach(0..<6) { index in
                Image("icon")
                .resizable()
                    .frame(width: CGFloat(30 * index), height: CGFloat(24 * index))
            }
        }.navigationBarTitle("Image Sample")
    }
    
}


#if DEBUG

struct ImageViewSample_Previews: PreviewProvider {
    
    static var previews: some View {
        
        ImageViewSample()
    }
}

#endif
