//
//  AlertViewSample.swift
//  SwiftUISample
//
//  Created by tony on 2020/1/2.
//  Copyright © 2020 tony. All rights reserved.
//

import SwiftUI

struct AlertViewSample: View {
    
    @State var showAlert = false
    var body: some View {
        Button(action: {
            self.showAlert = true
        }) {
            Text("Show Alert")
                .font(.system(size: 40, design: .rounded))
        }.alert(isPresented: $showAlert) {
            Alert(title: Text("弹出这个视图"), message: Text("你需要取消这个视图吗"), primaryButton: .destructive(Text("确认")), secondaryButton: .cancel())
        }.navigationBarTitle("Alert用法")
    }
    
}

#if DEBUG

struct AlertViewSample_Previews: PreviewProvider {
    
    static var previews: some View {
        AlertViewSample()
    }
}

#endif
