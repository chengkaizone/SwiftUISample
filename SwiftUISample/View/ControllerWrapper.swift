//
//  ControllerWrapper.swift
//  SwiftUISample
//
//  Created by tony on 2019/12/25.
//  Copyright © 2019 tony. All rights reserved.
//

import SwiftUI
import UIKit

/**
 * 包装已经写好的UIViewController成SwiftUI的用法
 */
struct ControllerWrapper<T: UIViewController> : UIViewControllerRepresentable {
    
    typealias UIViewControllerType = UIViewController
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<ControllerWrapper>) -> UIViewController {
        return T()
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<ControllerWrapper>) {
        debugPrint("wrapper view controller \(type(of: T.self))")
    }
    
}
