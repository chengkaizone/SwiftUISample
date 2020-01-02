//
//  ActionSheetSample.swift
//  SwiftUISample
//
//  Created by tony on 2020/1/2.
//  Copyright © 2020 tony. All rights reserved.
//

import SwiftUI

struct ActionSheetSample: View {
    
    @State var showSheet = false
    
    var body: some View {
        VStack {
            Button(action: {
                self.showSheet = true
            }) {
                Text("ActionSheet")
                .bold()
                    .font(.system(.largeTitle, design: .rounded))
            }
        }.actionSheet(isPresented: $showSheet) {
            sheet()
        }.navigationBarTitle("Alert Sheet 用法")
    }
    
    func sheet() -> ActionSheet {
        ActionSheet(title: Text("Title"), message: Text("Message"), buttons: [
            .default(Text("Default"), action: {
                self.showSheet = false
                debugPrint("Tap Default")
            }),
            .destructive(Text("Destructive"), action: {
                self.showSheet = false
                debugPrint("Tap Destructive")
            }),
            .cancel(Text("Cancel"), action: {
                self.showSheet = false
                debugPrint("Tap Cancel")
            })
        ])
    }
    
}

#if DEBUG

struct ActionSheetSample_Previews: PreviewProvider {
    
    static var previews: some View {
        ActionSheetSample()
    }
    
}

#endif
