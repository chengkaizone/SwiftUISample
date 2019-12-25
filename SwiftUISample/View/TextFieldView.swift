//
//  TextFieldView.swift
//  SwiftUISample
//
//  Created by tony on 2019/12/25.
//  Copyright © 2019 tony. All rights reserved.
//

import SwiftUI

struct TextFieldView: View {
    
    @State var name: String = ""
    @State var password: String = ""
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 8) {
            HStack(alignment: .center, spacing: 4) {
                Text("用户: ").foregroundColor(.secondary)
                TextField("", text: $name, onEditingChanged: { (changed) in
                    debugPrint("onEditing")
                }) {
                    debugPrint("user: \(self.name)")
                }.textFieldStyle(RoundedBorderTextFieldStyle())
            }.padding(EdgeInsets(top: 4, leading: 16, bottom: 4, trailing: 16))
                .frame(height: 42)
            HStack(alignment: .center, spacing: 4) {
                Text("密码: ").foregroundColor(.secondary)
                SecureField("", text: $password) {
                    debugPrint("password: \(self.password)")
                }.textFieldStyle(RoundedBorderTextFieldStyle())
            }.padding(EdgeInsets(top: 4, leading: 16, bottom: 4, trailing: 16))
                .frame(height: 42)
            Spacer()
        }
        .padding(EdgeInsets(top: 20, leading: 0, bottom: 20, trailing: 0))
        .navigationBarTitle("TextField的使用")
    }
    
}

#if DEBUG

struct TextFieldView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        TextFieldView()
    }
}

#endif
