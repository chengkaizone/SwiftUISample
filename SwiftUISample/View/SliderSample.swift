//
//  SliderSample.swift
//  SwiftUISample
//
//  Created by tony on 2019/12/27.
//  Copyright © 2019 tony. All rights reserved.
//

import SwiftUI
import Combine

struct SliderSample: View {

    @State var rating = 0.5
    var body: some View {
        
        VStack {
            Text("Slider Value: \(CGFloat(Int(self.rating * 100)) / 100.0)")
            Slider(value: $rating)
            .padding(30)
        }.navigationBarTitle("Toggle")
    }
    
}

#if DEBUG

struct SliderSample_Previews: PreviewProvider {
    
    static var previews: some View {
        SliderSample()
    }
}

#endif
