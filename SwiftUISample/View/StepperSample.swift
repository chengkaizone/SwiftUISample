//
//  StepperSample.swift
//  SwiftUISample
//
//  Created by tony on 2019/12/27.
//  Copyright © 2019 tony. All rights reserved.
//

import SwiftUI

struct StepperSample: View {

    @State var value = 0
    
    var body: some View {
        HStack {
            Stepper(value: $value, step: 3, onEditingChanged: { (flag) in
                debugPrint("onEditingChanged: \(flag)")
            }) {
                Text("Stepper Value: \(self.value)")
            }
        }.padding(16)
    }
    
}

#if DEBUG

struct StepperSample_Previews: PreviewProvider {
    
    static var previews: some View {
        StepperSample()
    }
}

#endif
