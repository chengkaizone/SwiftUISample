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
                
                Section(header: Text("布局容器")) {
                    NavigationLink(destination: HStackViewSample()) {
                        ListRowView(title: "HStack", subtitle: "HStack用法示例")
                    }
                    NavigationLink(destination: VStackViewSample()) {
                        ListRowView(title: "VStack", subtitle: "VStack用法示例")
                    }
                    NavigationLink(destination: ZStackViewSample()) {
                        ListRowView(title: "ZStack", subtitle: "ZStack用法示例")
                    }
                    NavigationLink(destination: ListViewSample()) {
                        ListRowView(title: "List", subtitle: "List列表视图")
                    }
                    NavigationLink(destination: ScrollViewSample()) {
                        ListRowView(title: "ScrollView", subtitle: "滚动视图用法示例")
                    }
                    NavigationLink(destination: ForEachViewSample()) {
                        ListRowView(title: "ForEach", subtitle: "用于根据已有数据的集合暂时视图")
                    }
                    NavigationLink(destination: GroupViewSample()) {
                        ListRowView(title: "Group", subtitle: "用于集合多个视图，对Group设置的属性")
                    }
                    NavigationLink(destination: SectionViewSample()) {
                        ListRowView(title: "Section", subtitle: "用于创建带模块头和尾的视图")
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
