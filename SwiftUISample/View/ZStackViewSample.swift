//
//  ZStackViewSample.swift
//  SwiftUISample
//
//  Created by tony on 2019/12/30.
//  Copyright © 2019 tony. All rights reserved.
//

import SwiftUI

struct ZStackViewSample: View {
    
    var body: some View {
        
        ZStack {
            Text("ZStack made in China")
            Divider()
            Text("the People's Republic Of China")
        }.navigationBarTitle("ZStack示例")
    }
}

#if DEBUG

struct ZStackViewSample_Previews: PreviewProvider {
    
    static var previews: some View {
        
        ZStackViewSample()
    }
}

#endif
