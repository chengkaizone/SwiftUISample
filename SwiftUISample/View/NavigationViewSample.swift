//
//  NavigationViewSample.swift
//  SwiftUISample
//
//  Created by tony on 2020/1/2.
//  Copyright © 2020 tony. All rights reserved.
//

import SwiftUI

struct NavigationViewSample: View {
    
    var body: some View {
        
        NavigationView {
            Text("SwiftUI").blur(radius: 5)
            Text("Swifter")
                .bold()
                .foregroundColor(.orange)
                .font(.largeTitle)
        }
        .navigationBarTitle("NavigationView")
        .navigationBarItems(trailing: Button(action: {
            debugPrint("Tap")
        }, label: {
            Text("Right").foregroundColor(.orange)
        }))
    }
    
}

#if DEBUG

struct NavigationViewSample_Previews: PreviewProvider {
    
    static var previews: some View {
        NavigationViewSample()
    }
}

#endif
