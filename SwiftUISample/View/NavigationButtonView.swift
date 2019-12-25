//
//  NavigationButtonView.swift
//  SwiftUISample
//
//  Created by tony on 2019/12/25.
//  Copyright © 2019 tony. All rights reserved.
//

import SwiftUI

struct NavigationButtonView: View {
    
    var body: some View {
        
        NavigationLink(destination: NavigationButtonView()) {
            Text("NavigationButton")
            .bold()
                .foregroundColor(.orange)
                .font(.largeTitle)
        }.navigationBarTitle("Navigation")
    }
    
}

#if DEBUG

struct NatigationButtonView_Previews: PreviewProvider {
    
    static var previews: some View {
        NavigationButtonView()
    }
}

#endif
