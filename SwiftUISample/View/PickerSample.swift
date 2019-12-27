//
//  PickerSample.swift
//  SwiftUISample
//
//  Created by tony on 2019/12/27.
//  Copyright © 2019 tony. All rights reserved.
//

import SwiftUI

struct PickerSample: View {
    
    @State var leftIndex = 0
    @State var rightIndex = 0
    
    let leftSource = (0..<10).map { $0 % 2 == 0 ? "单\($0)" : "双\($0)" }
    let rightSource = (11...36).map { String($0 - 1, radix: $0).uppercased() }
    
    var body: some View {
        
        HStack {
            VStack {
                Text("Left Value")
                Text("\(self.leftSource[self.leftIndex])")
                    .foregroundColor(.orange)
                    .bold()
                    .font(.largeTitle)
                Picker(selection: $leftIndex, label: Text("Left")) {
                    ForEach(0..<leftSource.count) {
                        Text("\(self.leftSource[$0])").tag($0)
                    }
                }.frame(width: UIScreen.main.bounds.width / 2)
            }
            VStack {
                Text("Right Value")
                Text("\(self.rightSource[self.rightIndex])")
                    .foregroundColor(.orange)
                    .bold()
                    .font(.largeTitle)
                Picker(selection: $rightIndex, label: Text("Right")) {
                    ForEach(0..<rightSource.count) {
                        Text("\(self.rightSource[$0])").tag($0)
                    }
                }.frame(width: UIScreen.main.bounds.width / 2)
            }
        }.navigationBarTitle("PickerSample")
    }
    
}


#if DEBUG

struct PickerSample_Previews: PreviewProvider {
    
    static var previews: some View {
        PickerSample()
    }
}

#endif
