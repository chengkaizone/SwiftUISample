//
//  ButtonView.swift
//  SwiftUISample
//
//  Created by tony on 2019/12/25.
//  Copyright © 2019 tony. All rights reserved.
//

import SwiftUI

struct ButtonView: View {
    
    
    var body: some View {
        Button(action: {
            debugPrint("doTap")
        }) {
            Text("First Button").bold()
                .font(.system(size: 32, design: .rounded))
            .shadow(radius: 1)
        }.navigationBarTitle("Button")
    }
}


#if DEBUG

struct ButtonView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        ButtonView()
    }
}

#endif
