//
//  MyViewController.swift
//  SwiftUISample
//
//  Created by tony on 2019/12/25.
//  Copyright © 2019 tony. All rights reserved.
//

import UIKit
import SwiftUI

class MyViewController: UIViewController {
    
    lazy var button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Open SwiftUI View", for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 22)
        button.setTitleColor(.orange, for: .normal)
        button.sizeToFit()
        button.center = self.view.center
        button.addTarget(self, action: #selector(openViewAction), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .green
        self.view.addSubview(button)
    }
    
    @objc func openViewAction() {
        
        let control = UIHostingController(rootView: ContentView())
        present(control, animated: true, completion: nil)
    }
    
}
