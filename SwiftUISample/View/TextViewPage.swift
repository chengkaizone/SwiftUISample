//
//  TextViewPage.swift
//  SwiftUISample
//
//  Created by tony on 2019/12/25.
//  Copyright © 2019 tony. All rights reserved.
//

import SwiftUI

private let githubUrl = "https://github.com"
struct TextViewPage: View {
    
    var body: some View {
        VStack(alignment: .center, spacing: 8) {
            
            Text("SwiftUI")
            Text("SwiftUI")
                .foregroundColor(.orange)
                .bold()
                .font(.system(.largeTitle))
                .fontWeight(.medium)
                .italic()
                .shadow(color: .black, radius: 1, x: 0, y: 2)
            
            Text(githubUrl)
                .underline(true, color: .gray)
                .font(.system(size: 16, design: .default))
                .onTapGesture {
                    debugPrint("url:\(githubUrl)")
//                    NavigationLink(destination: WebViewController(urlString: githubUrl)) {
//                        Text("Github访问")
//                    }
            }
            HStack(alignment: .top, spacing: 4) {
                Text("Text")
                Text("TextField").bold()
                Text("SecureField").foregroundColor(.green)
            }
            
            Text("Views and controls are the visual building blocks of your app’s user interface." +
            " Use them to present your app’s content onscreen.")
            .lineLimit(nil)
        }.padding(EdgeInsets(top: 30, leading: 16, bottom: 30, trailing: 16))
    }
}

#if DEBUG

struct TextViewPage_Previews: PreviewProvider {
    
    static var previews: some View {
        
        NavigationView {
            TextViewPage()
            .navigationBarTitle("Text演示")
                .navigationBarItems(leading:
                    Text("Setting")
                    .bold()
                        .font(.system(.subheadline, design: .rounded))
                        .fontWeight(.medium)
                        .foregroundColor(.green)
                    
            )
        }
    }
    
}

#endif
