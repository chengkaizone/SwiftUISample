//
//  PopoverViewSample.swift
//  SwiftUISample
//
//  Created by tony on 2020/1/2.
//  Copyright © 2020 tony. All rights reserved.
//

import SwiftUI

struct PopoverViewSample: View {
    
    @State var showPop = false
    
    var body: some View {
        VStack {
            Button(action: {
                self.showPop = true
                debugPrint("Tap \(self.showPop)")
            }) {
                Text("Popover View")
                .bold()
                    .font(.system(.largeTitle, design: .monospaced))
            }
        }.popover(isPresented: $showPop) {
            ImageViewSample()
        }
    }
    
}

#if DEBUG

struct PopoverViewSample_Previews: PreviewProvider {
    
    static var previews: some View {
        PopoverViewSample()
    }
}

#endif
