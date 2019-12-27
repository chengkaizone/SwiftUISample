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
                Section(header: Text("Text")) {
                    NavigationLink(destination: TextViewPage()) {
                        ListRowView(title: "Text", subtitle: "Text的用法")
                    }
                    NavigationLink(destination: TextFieldView()) {
                        ListRowView(title: "TextField", subtitle: "TextField的用法")
                    }
                    NavigationLink(destination: ImageViewSample()) {
                        ListRowView(title: "Image", subtitle: "Image的用法")
                    }
                    NavigationLink(destination: WebImageViewSample()) {
                        ListRowView(title: "Web Image", subtitle: "Web Image的用法")
                    }
                }
                
                Section(header: Text("Button")) {
                    NavigationLink(destination: ButtonView()) {
                        ListRowView(title: "Button", subtitle: "Button点击演示")
                    }
                    NavigationLink(destination: NavigationButtonView()) {
                        ListRowView(title: "NavigationButton", subtitle: "导航按钮跳转演示")
                    }
                    NavigationLink(destination: Text("显示简单内容Text")) {
                        ListRowView(title: "PresentationButton", subtitle: "跳转按钮仅仅绑定Text跳转，无单独页面")
                    }
                }
                
                Section(header: Text("选择器")) {
                    NavigationLink(destination: PickerSample()) {
                        ListRowView(title: "Picker", subtitle: "Picker数据源选择器")
                    }
                    NavigationLink(destination: DatePickerSample()) {
                        ListRowView(title: "DatePicker", subtitle: "日期选择器")
                    }
                    NavigationLink(destination: ToggleSample()) {
                        ListRowView(title: "Toggle", subtitle: "开关状态选择")
                    }
                    NavigationLink(destination: SliderSample()) {
                        ListRowView(title: "Slider", subtitle: "滑块指示器")
                    }
                    NavigationLink(destination: StepperSample()) {
                        ListRowView(title: "Stepper", subtitle: "加减步长设置组件")
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
