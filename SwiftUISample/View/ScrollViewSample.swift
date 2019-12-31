//
//  ScrollViewSample.swift
//  SwiftUISample
//
//  Created by tony on 2019/12/30.
//  Copyright © 2019 tony. All rights reserved.
//

import SwiftUI

struct ScrollViewSample: View {
    
    
    var body: some View {
        ScrollView {
            Text("SwiftUI").padding(20)
            Divider()
            Image("icon")
            .resizable()
                .frame(width: 300, height: 300, alignment: .center)
            Divider()
            Text("Views and controls are the visual building blocks of your app's user interface")
        }
        .border(Color.gray.gradient, width: 2)
    .cornerRadius(1)
    .padding(10)
    .navigationBarTitle("ScrollView 用法示例")
    }
}

#if DEBUG

struct ScrollViewSample_Previews: PreviewProvider {
    
    static var previews: some View {
        ScrollViewSample()
    }
}

#endif
