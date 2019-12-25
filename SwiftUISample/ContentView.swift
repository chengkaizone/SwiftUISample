//
//  ContentView.swift
//  SwiftUISample
//
//  Created by tony on 2019/12/25.
//  Copyright © 2019 tony. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("UIKit封装视图")) {
                    NavigationLink(destination: WebViewController(urlString: "https://www.apple.com")) {
                        ListRowView(title: "WebView", subtitle: "WebView的用法")
                    }
                    NavigationLink(destination: ControllerWrapper<MyViewController>()) {
                        ListRowView(title: "ControllerWrapper", subtitle: "包装现有的UIViewController")
                    }
                }
            }.listStyle(GroupedListStyle())
            .navigationBarTitle(Text("示例演示"), displayMode: .large)
            .navigationBarItems(trailing: Button(action: {
                print("doTap")
            }, label: {
                Text("Tap").foregroundColor(.gray)
            }))
        }
    }
}

#if DEBUG

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().colorScheme(.dark)
    }
}

#endif
