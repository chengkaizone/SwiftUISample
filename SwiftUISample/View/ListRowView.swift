//
//  ListRowView.swift
//  SwiftUISample
//
//  Created by tony on 2019/12/25.
//  Copyright © 2019 tony. All rights reserved.
//

import SwiftUI

struct ListRowView: View {
    
    private let title: String
    private let subtitle: String?
    
    init(title: String, subtitle: String? = nil) {
        self.title = title
        self.subtitle = subtitle
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(title).bold()
            if subtitle != nil {
                Text(subtitle!).font(.subheadline).opacity(0.5).lineLimit(nil)
            }
        }
    }
    
}

#if DEBUG

struct ListRowView_Previews: PreviewProvider {
    
    static var previews: some View {
        ListRowView(title: "Title", subtitle: "Subtitle")
    }
    
}

#endif
