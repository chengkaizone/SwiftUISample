//
//  ModalViewSample.swift
//  SwiftUISample
//
//  Created by tony on 2020/1/2.
//  Copyright © 2020 tony. All rights reserved.
//

import SwiftUI

struct ModalViewSample: View {
    
    @State var showModal = false
    
    var body: some View {
        VStack {
            Button(action: {
                self.showModal = true
                debugPrint("")
            }) {
                Text("Modal View")
                .bold()
                    .font(.system(.largeTitle, design: .serif))
            }
        }.sheet(isPresented: $showModal) {
            PickerSample()
        }
    }
    
}


#if DEBUG

struct ModalViewSample_Previews: PreviewProvider {
    
    static var previews: some View {
        ModalViewSample()
    }
}

#endif
