//
//  ForEachViewSample.swift
//  SwiftUISample
//
//  Created by tony on 2019/12/31.
//  Copyright © 2019 tony. All rights reserved.
//

import SwiftUI

struct ForEachViewSample: View {
    
    var body: some View {
        
        ScrollView {
            ForEach(0..<35) { index in
                Text("Hello ForEach \(index)")
                .bold()
                    .font(.system(size: 25, design: .monospaced))
                .padding(5)
            }
            .cornerRadius(10)
            .border(Color.gray.gradient, width: 1)
            .navigationBarTitle("ForEach用法示例")
        }
        
    }
    
}


#if DEBUG

struct ForEachViewSample_Previews: PreviewProvider {
    
    static var previews: some View {
        ForEachViewSample()
    }
}

#endif
