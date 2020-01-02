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
            .padding(EdgeInsets(top: 0, leading: 0, bottom: 24, trailing: 0))
            Divider().padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
            Text("the People's Republic Of China")
            .padding(EdgeInsets(top: 24, leading: 0, bottom: 0, trailing: 0))
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
