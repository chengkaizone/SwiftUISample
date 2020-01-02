//
//  SectionViewSample.swift
//  SwiftUISample
//
//  Created by tony on 2019/12/31.
//  Copyright © 2019 tony. All rights reserved.
//

import SwiftUI

struct SectionViewSample: View {
    
    var body: some View {
        VStack {
            List {
                Section(header: Text("I am Header"), footer: Text("I am footer")) {
                    ForEach(0..<3) {
                        Text("Hello \($0)")
                    }
                }
                Section(header: Text("I am Header 2"), footer: Text("I am footer 2")) {
                    ForEach(6..<10) {
                        Text("Hello \($0)").bold()
                    }
                }
            }.listStyle(GroupedListStyle())
                .background(Color.white)
        }.background(Color.white)
        .navigationBarTitle("Section用法示例")
    }
}


#if DEBUG

struct SectionViewSample_Previews: PreviewProvider {
    
    static var previews: some View {
        SectionViewSample()
    }
}

#endif
