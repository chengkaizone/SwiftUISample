//
//  DateExtension.swift
//  SwiftUISample
//
//  Created by tony on 2019/12/27.
//  Copyright © 2019 tony. All rights reserved.
//

import Foundation
import SwiftUI

extension Date {
    
    func datetime() -> String {
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        return formatter.string(from: self)
    }
}

extension Color {
    
    var gradient: AngularGradient {
        return AngularGradient(gradient: Gradient(colors: [self]), center: .center)
    }
}
