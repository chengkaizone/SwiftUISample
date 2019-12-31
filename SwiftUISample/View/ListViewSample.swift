//
//  ListViewSample.swift
//  SwiftUISample
//
//  Created by tony on 2019/12/30.
//  Copyright © 2019 tony. All rights reserved.
//

import SwiftUI

struct ListViewSample: View {
    
    var body: some View {
        List(0..<30) { index in
            Text("Hello List \(index)")
        }.navigationBarTitle("List用法", displayMode: .large)
    }
}

#if DEBUG

struct ListViewSample_Previews: PreviewProvider {
    
    static var previews: some View {
        ListViewSample()
    }
}

#endif

