//
//  ToggleSample.swift
//  SwiftUISample
//
//  Created by tony on 2019/12/27.
//  Copyright © 2019 tony. All rights reserved.
//

import SwiftUI

struct ToggleSample: View {
    
    @State var isOn: Bool = true
    var body: some View {
        
        HStack {
            Toggle(isOn: $isOn) {
                Text("State: \(self.isOn ? "开" : "关")")
            }.padding(20)
            Spacer()
        }.navigationBarTitle("Toggleg开关")
    }
    
}

#if DEBUG
struct ToggleSample_Previews : PreviewProvider {
    static var previews: some View {
        ToggleSample()
    }
}
#endif
