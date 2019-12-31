//
//  GroupViewSample.swift
//  SwiftUISample
//
//  Created by tony on 2019/12/31.
//  Copyright © 2019 tony. All rights reserved.
//

import SwiftUI

struct GroupViewSample: View {
    
    var body: some View {
        
        VStack {
            Group {
                Text("Hello World!")
                Text("Hello Group!")
            }.padding(5)
            .border(Color.gray.gradient, width: 1)
            .cornerRadius(5)
            Group {
                Text("Hello World!")
                Text("Hello Group!")
            }.padding(5)
            .border(Color.gray.gradient, width: 1)
            .cornerRadius(5)
            Group {
                Text("Hello World!")
                Text("Hello Group!")
            }.padding(5)
            .border(Color.gray.gradient, width: 1)
            .cornerRadius(5)
        }.navigationBarTitle("Group用法示例")
    }
}


#if DEBUG

struct GroupViewSample_Previews: PreviewProvider {
    
    static var previews: some View {
        GroupViewSample()
    }
}

#endif

