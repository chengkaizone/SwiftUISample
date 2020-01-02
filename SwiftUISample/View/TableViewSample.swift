//
//  TableViewSample.swift
//  SwiftUISample
//
//  Created by tony on 2020/1/2.
//  Copyright © 2020 tony. All rights reserved.
//

import SwiftUI

struct TabViewSample: View {
    
    @State private var index = 0
    
    var body: some View {
        TabView(selection: $index) {
            ForEach(0..<3) { item in
                TabbarItemView(index: item).tabItem {
                    Image("icon")
                    Text("item \(item)")
                }
            }
        }.navigationBarTitle("TabView用法")
    }
    
    
}

fileprivate struct TabbarItemView: View {
    
    var index: Int
    var body: some View {
        ZStack {
            Rectangle().foregroundColor(Color.orange)
            VStack {
                Text("\(index)")
                    .foregroundColor(.white)
                    .font(.system(size: 100, design: .rounded))
                    .bold()
                Image("icon")
                .resizable()
                .frame(width: 200, height: 200)
            }
        }
    }
}

#if DEBUG

struct TableViewSample_Previews: PreviewProvider {
    
    static var previews: some View {
        TabViewSample()
    }
}

#endif
