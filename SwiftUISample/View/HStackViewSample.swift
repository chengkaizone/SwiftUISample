//
//  HStackViewSample.swift
//  SwiftUISample
//
//  Created by tony on 2019/12/30.
//  Copyright © 2019 tony. All rights reserved.
//

import SwiftUI

struct HStackViewSample: View {
    
    var body: some View {
        HStack {
            Text("VStack made in China")
            Divider()
            Text("the People's Republic Of China")
        }.navigationBarTitle("VStack 示例")
    }
    
}


#if DEBUG

struct HStackViewSample_Previews: PreviewProvider {
    
    static var previews: some View {
        HStackViewSample()
    }
    
}

#endif
